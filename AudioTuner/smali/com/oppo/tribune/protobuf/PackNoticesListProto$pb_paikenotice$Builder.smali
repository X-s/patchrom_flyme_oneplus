.class public final Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PackNoticesListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dateline_:I

.field private ext_:Ljava/lang/Object;

.field private msg_:Ljava/lang/Object;

.field private num_:I

.field private status_:I

.field private type_:I

.field private uid_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 743
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->msg_:Ljava/lang/Object;

    .line 860
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->ext_:Ljava/lang/Object;

    .line 452
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->maybeForceBuilderInitialization()V

    .line 453
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 743
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->msg_:Ljava/lang/Object;

    .line 860
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->ext_:Ljava/lang/Object;

    .line 457
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->maybeForceBuilderInitialization()V

    .line 458
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PackNoticesListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$1;

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->create()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    .line 513
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 517
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1

    .prologue
    .line 466
    new-instance v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 442
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 461
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->build()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->build()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    .line 504
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 507
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 6

    .prologue
    .line 521
    new-instance v1, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;-><init>(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;Lcom/oppo/tribune/protobuf/PackNoticesListProto$1;)V

    .line 523
    .local v1, "result":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 524
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 525
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 526
    or-int/lit8 v2, v2, 0x1

    .line 528
    :cond_0
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->uid_:J

    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->uid_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->access$702(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;J)J

    .line 529
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 530
    or-int/lit8 v2, v2, 0x2

    .line 532
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->type_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->type_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->access$802(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;I)I

    .line 533
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 534
    or-int/lit8 v2, v2, 0x4

    .line 536
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->msg_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->msg_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->access$902(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 538
    or-int/lit8 v2, v2, 0x8

    .line 540
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->dateline_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->dateline_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->access$1002(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;I)I

    .line 541
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 542
    or-int/lit8 v2, v2, 0x10

    .line 544
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->num_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->num_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->access$1102(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;I)I

    .line 545
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 546
    or-int/lit8 v2, v2, 0x20

    .line 548
    :cond_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->status_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->status_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->access$1202(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;I)I

    .line 549
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 550
    or-int/lit8 v2, v2, 0x40

    .line 552
    :cond_6
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->ext_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->ext_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->access$1302(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->access$1402(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;I)I

    .line 554
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onBuilt()V

    .line 555
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->clear()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->clear()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->clear()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->clear()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 470
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 471
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->uid_:J

    .line 472
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 473
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->type_:I

    .line 474
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 475
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->msg_:Ljava/lang/Object;

    .line 476
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 477
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->dateline_:I

    .line 478
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 479
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->num_:I

    .line 480
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 481
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->status_:I

    .line 482
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 483
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->ext_:Ljava/lang/Object;

    .line 484
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 485
    return-object p0
.end method

.method public clearDateline()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1

    .prologue
    .line 803
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 804
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->dateline_:I

    .line 805
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 806
    return-object p0
.end method

.method public clearExt()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 890
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getExt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->ext_:Ljava/lang/Object;

    .line 891
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 892
    return-object p0
.end method

.method public clearMsg()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 773
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->msg_:Ljava/lang/Object;

    .line 774
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 775
    return-object p0
.end method

.method public clearNum()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1

    .prologue
    .line 828
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 829
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->num_:I

    .line 830
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 831
    return-object p0
.end method

.method public clearStatus()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1

    .prologue
    .line 853
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 854
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->status_:I

    .line 855
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 856
    return-object p0
.end method

.method public clearType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 737
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->type_:I

    .line 738
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 739
    return-object p0
.end method

.method public clearUid()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 2

    .prologue
    .line 711
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 712
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->uid_:J

    .line 713
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 714
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->clone()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->clone()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->clone()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->clone()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->clone()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 2

    .prologue
    .line 489
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->create()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

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
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->clone()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDateline()I
    .locals 1

    .prologue
    .line 792
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->dateline_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 1

    .prologue
    .line 498
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 493
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 3

    .prologue
    .line 867
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->ext_:Ljava/lang/Object;

    .line 868
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 869
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->ext_:Ljava/lang/Object;

    .line 874
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

.method public getMsg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 750
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->msg_:Ljava/lang/Object;

    .line 751
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 752
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->msg_:Ljava/lang/Object;

    .line 757
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

.method public getNum()I
    .locals 1

    .prologue
    .line 817
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->num_:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 842
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->status_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 725
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->type_:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 700
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->uid_:J

    return-wide v0
.end method

.method public hasDateline()Z
    .locals 2

    .prologue
    .line 788
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

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

.method public hasExt()Z
    .locals 2

    .prologue
    .line 863
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMsg()Z
    .locals 2

    .prologue
    .line 746
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

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

.method public hasNum()Z
    .locals 2

    .prologue
    .line 813
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 838
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

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
    .line 721
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

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

.method public hasUid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 696
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

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
    .line 446
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->hasUid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 626
    :cond_0
    :goto_0
    return v0

    .line 602
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->hasMsg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->hasDateline()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->hasNum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
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
    .line 437
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

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
    .line 437
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

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
    .line 437
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

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
    .line 437
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 636
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 637
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 643
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 645
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 646
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 647
    :goto_1
    return-object p0

    .line 639
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 640
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    goto :goto_1

    .line 652
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 653
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->uid_:J

    goto :goto_0

    .line 657
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 658
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->type_:I

    goto :goto_0

    .line 662
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 663
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->msg_:Ljava/lang/Object;

    goto :goto_0

    .line 667
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 668
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->dateline_:I

    goto :goto_0

    .line 672
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 673
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->num_:I

    goto :goto_0

    .line 677
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 678
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->status_:I

    goto :goto_0

    .line 682
    :sswitch_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 683
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->ext_:Ljava/lang/Object;

    goto :goto_0

    .line 637
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 559
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    if-eqz v0, :cond_0

    .line 560
    check-cast p1, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object p0

    .line 563
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    :goto_0
    return-object p0

    .line 562
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    .prologue
    .line 569
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 594
    :goto_0
    return-object p0

    .line 572
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->hasUid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getUid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->setUid(J)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    .line 575
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->setType(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    .line 578
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->hasMsg()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 579
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->setMsg(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    .line 581
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->hasDateline()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 582
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getDateline()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->setDateline(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    .line 584
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->hasNum()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 585
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->setNum(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    .line 587
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 588
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->setStatus(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    .line 590
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 591
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->setExt(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    .line 593
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setDateline(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 796
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 797
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->dateline_:I

    .line 798
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 799
    return-object p0
.end method

.method public setExt(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 879
    if-nez p1, :cond_0

    .line 880
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 882
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 883
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->ext_:Ljava/lang/Object;

    .line 884
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 885
    return-object p0
.end method

.method setExt(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 896
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 897
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->ext_:Ljava/lang/Object;

    .line 898
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 899
    return-void
.end method

.method public setMsg(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 762
    if-nez p1, :cond_0

    .line 763
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 765
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 766
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->msg_:Ljava/lang/Object;

    .line 767
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 768
    return-object p0
.end method

.method setMsg(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 779
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 780
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->msg_:Ljava/lang/Object;

    .line 781
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 782
    return-void
.end method

.method public setNum(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 821
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 822
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->num_:I

    .line 823
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 824
    return-object p0
.end method

.method public setStatus(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 846
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 847
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->status_:I

    .line 848
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 849
    return-object p0
.end method

.method public setType(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 729
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 730
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->type_:I

    .line 731
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 732
    return-object p0
.end method

.method public setUid(J)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 704
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->bitField0_:I

    .line 705
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->uid_:J

    .line 706
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->onChanged()V

    .line 707
    return-object p0
.end method
