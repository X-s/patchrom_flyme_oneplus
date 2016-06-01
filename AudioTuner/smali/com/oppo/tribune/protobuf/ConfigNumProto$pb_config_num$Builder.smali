.class public final Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ConfigNumProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_numOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_numOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private configNum_:I

.field private requestNum_:I

.field private typeId_:J

.field private type_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 554
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->type_:Ljava/lang/Object;

    .line 342
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->maybeForceBuilderInitialization()V

    .line 343
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 554
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->type_:Ljava/lang/Object;

    .line 347
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->maybeForceBuilderInitialization()V

    .line 348
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ConfigNumProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$1;

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->create()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    .line 397
    .local v0, "result":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 401
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 1

    .prologue
    .line 356
    new-instance v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 332
    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto;->internal_static_protobuf_pb_config_num_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 351
    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 2

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    .line 388
    .local v0, "result":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 391
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 6

    .prologue
    .line 405
    new-instance v1, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;-><init>(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;Lcom/oppo/tribune/protobuf/ConfigNumProto$1;)V

    .line 407
    .local v1, "result":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 408
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 409
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 410
    or-int/lit8 v2, v2, 0x1

    .line 412
    :cond_0
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->typeId_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->typeId_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->access$702(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;J)J

    .line 413
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 414
    or-int/lit8 v2, v2, 0x2

    .line 416
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->type_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->type_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->access$802(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 418
    or-int/lit8 v2, v2, 0x4

    .line 420
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->configNum_:I

    # setter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->configNum_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->access$902(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;I)I

    .line 421
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 422
    or-int/lit8 v2, v2, 0x8

    .line 424
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->requestNum_:I

    # setter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->requestNum_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->access$1002(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;I)I

    .line 425
    # setter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->access$1102(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;I)I

    .line 426
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->onBuilt()V

    .line 427
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 361
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->typeId_:J

    .line 362
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 363
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->type_:Ljava/lang/Object;

    .line 364
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 365
    iput v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->configNum_:I

    .line 366
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 367
    iput v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->requestNum_:I

    .line 368
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 369
    return-object p0
.end method

.method public clearConfigNum()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 615
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->configNum_:I

    .line 616
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->onChanged()V

    .line 617
    return-object p0
.end method

.method public clearRequestNum()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 640
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->requestNum_:I

    .line 641
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->onChanged()V

    .line 642
    return-object p0
.end method

.method public clearType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 584
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->type_:Ljava/lang/Object;

    .line 585
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->onChanged()V

    .line 586
    return-object p0
.end method

.method public clearTypeId()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 2

    .prologue
    .line 547
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 548
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->typeId_:J

    .line 549
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->onChanged()V

    .line 550
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 2

    .prologue
    .line 373
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->create()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

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
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfigNum()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->configNum_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 1

    .prologue
    .line 382
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 377
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getRequestNum()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->requestNum_:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 561
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->type_:Ljava/lang/Object;

    .line 562
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 563
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->type_:Ljava/lang/Object;

    .line 568
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

.method public getTypeId()J
    .locals 2

    .prologue
    .line 536
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->typeId_:J

    return-wide v0
.end method

.method public hasConfigNum()Z
    .locals 2

    .prologue
    .line 599
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestNum()Z
    .locals 2

    .prologue
    .line 624
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 557
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

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

.method public hasTypeId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 532
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 336
    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto;->internal_static_protobuf_pb_config_num_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 461
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->hasTypeId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return v0

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->hasConfigNum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->hasRequestNum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
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
    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

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
    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

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
    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

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
    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 487
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 488
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 494
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 496
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 497
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->onChanged()V

    .line 498
    :goto_1
    return-object p0

    .line 490
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 491
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->onChanged()V

    goto :goto_1

    .line 503
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 504
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->typeId_:J

    goto :goto_0

    .line 508
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 509
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 513
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 514
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->configNum_:I

    goto :goto_0

    .line 518
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 519
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->requestNum_:I

    goto :goto_0

    .line 488
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 431
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    if-eqz v0, :cond_0

    .line 432
    check-cast p1, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object p0

    .line 435
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    :goto_0
    return-object p0

    .line 434
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    .prologue
    .line 441
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 457
    :goto_0
    return-object p0

    .line 444
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->hasTypeId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getTypeId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->setTypeId(J)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    .line 447
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->setType(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    .line 450
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->hasConfigNum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 451
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getConfigNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->setConfigNum(I)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    .line 453
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->hasRequestNum()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 454
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getRequestNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->setRequestNum(I)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    .line 456
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setConfigNum(I)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 607
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 608
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->configNum_:I

    .line 609
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->onChanged()V

    .line 610
    return-object p0
.end method

.method public setRequestNum(I)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 632
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 633
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->requestNum_:I

    .line 634
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->onChanged()V

    .line 635
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 573
    if-nez p1, :cond_0

    .line 574
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 576
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 577
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->type_:Ljava/lang/Object;

    .line 578
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->onChanged()V

    .line 579
    return-object p0
.end method

.method setType(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 590
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 591
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->type_:Ljava/lang/Object;

    .line 592
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->onChanged()V

    .line 593
    return-void
.end method

.method public setTypeId(J)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 540
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->bitField0_:I

    .line 541
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->typeId_:J

    .line 542
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->onChanged()V

    .line 543
    return-object p0
.end method
