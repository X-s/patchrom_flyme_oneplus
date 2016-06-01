.class public final Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SquareAdvertiseProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radioOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radioOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:I

.field private rid_:J

.field private title_:Ljava/lang/Object;

.field private type_:I

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 599
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->title_:Ljava/lang/Object;

    .line 691
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->url_:Ljava/lang/Object;

    .line 381
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->maybeForceBuilderInitialization()V

    .line 382
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 599
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->title_:Ljava/lang/Object;

    .line 691
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->url_:Ljava/lang/Object;

    .line 386
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->maybeForceBuilderInitialization()V

    .line 387
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$1;

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->create()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v0

    .line 438
    .local v0, "result":Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 442
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 1

    .prologue
    .line 395
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 371
    # getter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto;->internal_static_protobuf_pb_radio_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 390
    # getter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->build()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->build()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v0

    .line 429
    .local v0, "result":Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 432
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;
    .locals 6

    .prologue
    .line 446
    new-instance v1, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;-><init>(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$1;)V

    .line 448
    .local v1, "result":Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 449
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 450
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 451
    or-int/lit8 v2, v2, 0x1

    .line 453
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->id_:I

    # setter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->id_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->access$702(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;I)I

    .line 454
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 455
    or-int/lit8 v2, v2, 0x2

    .line 457
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->title_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->access$802(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 459
    or-int/lit8 v2, v2, 0x4

    .line 461
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->type_:I

    # setter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->type_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->access$902(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;I)I

    .line 462
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 463
    or-int/lit8 v2, v2, 0x8

    .line 465
    :cond_3
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->rid_:J

    # setter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->rid_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->access$1002(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;J)J

    .line 466
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 467
    or-int/lit8 v2, v2, 0x10

    .line 469
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->url_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->access$1102(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    # setter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->access$1202(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;I)I

    .line 471
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->onBuilt()V

    .line 472
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 399
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 400
    iput v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->id_:I

    .line 401
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 402
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->title_:Ljava/lang/Object;

    .line 403
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 404
    iput v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->type_:I

    .line 405
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 406
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->rid_:J

    .line 407
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 408
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->url_:Ljava/lang/Object;

    .line 409
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 410
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 593
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->id_:I

    .line 594
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->onChanged()V

    .line 595
    return-object p0
.end method

.method public clearRid()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 2

    .prologue
    .line 684
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 685
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->rid_:J

    .line 686
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->onChanged()V

    .line 687
    return-object p0
.end method

.method public clearTitle()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 629
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->title_:Ljava/lang/Object;

    .line 630
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->onChanged()V

    .line 631
    return-object p0
.end method

.method public clearType()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 660
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->type_:I

    .line 661
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->onChanged()V

    .line 662
    return-object p0
.end method

.method public clearUrl()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 721
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->url_:Ljava/lang/Object;

    .line 722
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->onChanged()V

    .line 723
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 2

    .prologue
    .line 414
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->create()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

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
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;
    .locals 1

    .prologue
    .line 423
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->id_:I

    return v0
.end method

.method public getRid()J
    .locals 2

    .prologue
    .line 673
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->rid_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->title_:Ljava/lang/Object;

    .line 607
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 608
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->title_:Ljava/lang/Object;

    .line 613
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

.method public getType()I
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->type_:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 698
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->url_:Ljava/lang/Object;

    .line 699
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 700
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->url_:Ljava/lang/Object;

    .line 705
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

    .line 577
    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRid()Z
    .locals 2

    .prologue
    .line 669
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 602
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 644
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

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

.method public hasUrl()Z
    .locals 2

    .prologue
    .line 694
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

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
    .line 375
    # getter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto;->internal_static_protobuf_pb_radio_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 509
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return v0

    .line 513
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
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
    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

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
    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

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
    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

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
    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 527
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 528
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 534
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 536
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 537
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->onChanged()V

    .line 538
    :goto_1
    return-object p0

    .line 530
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 531
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->onChanged()V

    goto :goto_1

    .line 543
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 544
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->id_:I

    goto :goto_0

    .line 548
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 549
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 553
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 554
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->type_:I

    goto :goto_0

    .line 558
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 559
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->rid_:J

    goto :goto_0

    .line 563
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 564
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 528
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 476
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    if-eqz v0, :cond_0

    .line 477
    check-cast p1, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object p0

    .line 480
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    :goto_0
    return-object p0

    .line 479
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    .prologue
    .line 486
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 505
    :goto_0
    return-object p0

    .line 489
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->setId(I)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    .line 492
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    .line 495
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->setType(I)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    .line 498
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->hasRid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 499
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->getRid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->setRid(J)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    .line 501
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 502
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->setUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    .line 504
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setId(I)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 585
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 586
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->id_:I

    .line 587
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->onChanged()V

    .line 588
    return-object p0
.end method

.method public setRid(J)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 677
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 678
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->rid_:J

    .line 679
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->onChanged()V

    .line 680
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 618
    if-nez p1, :cond_0

    .line 619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 621
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 622
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->title_:Ljava/lang/Object;

    .line 623
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->onChanged()V

    .line 624
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 635
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 636
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->title_:Ljava/lang/Object;

    .line 637
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->onChanged()V

    .line 638
    return-void
.end method

.method public setType(I)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 652
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 653
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->type_:I

    .line 654
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->onChanged()V

    .line 655
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 710
    if-nez p1, :cond_0

    .line 711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 713
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 714
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->url_:Ljava/lang/Object;

    .line 715
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->onChanged()V

    .line 716
    return-object p0
.end method

.method setUrl(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 727
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->bitField0_:I

    .line 728
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->url_:Ljava/lang/Object;

    .line 729
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->onChanged()V

    .line 730
    return-void
.end method
