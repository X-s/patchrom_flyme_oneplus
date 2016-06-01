.class public final Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ResStatNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatusOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private downloads_:I

.field private id_:J

.field private poor_:I

.field private praise_:I

.field private productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

.field private views_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 662
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->GAME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    .line 431
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->maybeForceBuilderInitialization()V

    .line 432
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 662
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->GAME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    .line 436
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->maybeForceBuilderInitialization()V

    .line 437
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResStatNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$1;

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->create()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    .line 490
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 494
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1

    .prologue
    .line 445
    new-instance v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 421
    # getter for: Lcom/oppo/tribune/protobuf/ResStatNetProto;->internal_static_protobuf_ProductStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 440
    # getter for: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->build()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->build()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    .line 481
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 484
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 6

    .prologue
    .line 498
    new-instance v1, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;-><init>(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;Lcom/oppo/tribune/protobuf/ResStatNetProto$1;)V

    .line 500
    .local v1, "result":Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 501
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 502
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 503
    or-int/lit8 v2, v2, 0x1

    .line 505
    :cond_0
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->id_:J

    # setter for: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->id_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->access$702(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;J)J

    .line 506
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 507
    or-int/lit8 v2, v2, 0x2

    .line 509
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    # setter for: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->access$802(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    .line 510
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 511
    or-int/lit8 v2, v2, 0x4

    .line 513
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->downloads_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->downloads_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->access$902(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;I)I

    .line 514
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 515
    or-int/lit8 v2, v2, 0x8

    .line 517
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->views_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->views_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->access$1002(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;I)I

    .line 518
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 519
    or-int/lit8 v2, v2, 0x10

    .line 521
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->praise_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->praise_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->access$1102(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;I)I

    .line 522
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 523
    or-int/lit8 v2, v2, 0x20

    .line 525
    :cond_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->poor_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->poor_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->access$1202(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;I)I

    .line 526
    # setter for: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->access$1302(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;I)I

    .line 527
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->onBuilt()V

    .line 528
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->clear()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->clear()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->clear()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->clear()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 449
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 450
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->id_:J

    .line 451
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 452
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->GAME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    .line 453
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 454
    iput v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->downloads_:I

    .line 455
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 456
    iput v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->views_:I

    .line 457
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 458
    iput v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->praise_:I

    .line 459
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 460
    iput v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->poor_:I

    .line 461
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 462
    return-object p0
.end method

.method public clearDownloads()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 710
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->downloads_:I

    .line 711
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->onChanged()V

    .line 712
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 2

    .prologue
    .line 655
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 656
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->id_:J

    .line 657
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->onChanged()V

    .line 658
    return-object p0
.end method

.method public clearPoor()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1

    .prologue
    .line 784
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 785
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->poor_:I

    .line 786
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->onChanged()V

    .line 787
    return-object p0
.end method

.method public clearPraise()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 760
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->praise_:I

    .line 761
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->onChanged()V

    .line 762
    return-object p0
.end method

.method public clearProductType()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 685
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->GAME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    .line 686
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->onChanged()V

    .line 687
    return-object p0
.end method

.method public clearViews()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 735
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->views_:I

    .line 736
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->onChanged()V

    .line 737
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->clone()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->clone()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->clone()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->clone()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->clone()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 2

    .prologue
    .line 466
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->create()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

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
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->clone()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 1

    .prologue
    .line 475
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 470
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDownloads()I
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->downloads_:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 644
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->id_:J

    return-wide v0
.end method

.method public getPoor()I
    .locals 1

    .prologue
    .line 773
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->poor_:I

    return v0
.end method

.method public getPraise()I
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->praise_:I

    return v0
.end method

.method public getProductType()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    return-object v0
.end method

.method public getViews()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->views_:I

    return v0
.end method

.method public hasDownloads()Z
    .locals 2

    .prologue
    .line 694
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 640
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPoor()Z
    .locals 2

    .prologue
    .line 769
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

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

.method public hasPraise()Z
    .locals 2

    .prologue
    .line 744
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

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

.method public hasProductType()Z
    .locals 2

    .prologue
    .line 665
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

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

.method public hasViews()Z
    .locals 2

    .prologue
    .line 719
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 425
    # getter for: Lcom/oppo/tribune/protobuf/ResStatNetProto;->internal_static_protobuf_ProductStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x1

    return v0
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
    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

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
    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

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
    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

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
    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 578
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 579
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 585
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 587
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 588
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->onChanged()V

    .line 589
    :goto_1
    return-object p0

    .line 581
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->onChanged()V

    goto :goto_1

    .line 594
    :sswitch_1
    iget v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 595
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->id_:J

    goto :goto_0

    .line 599
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 600
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->valueOf(I)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    move-result-object v3

    .line 602
    .local v3, "value":Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;
    if-nez v3, :cond_1

    .line 603
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 605
    :cond_1
    iget v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 606
    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    goto :goto_0

    .line 611
    .end local v0    # "rawValue":I
    .end local v3    # "value":Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;
    :sswitch_3
    iget v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 612
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->downloads_:I

    goto :goto_0

    .line 616
    :sswitch_4
    iget v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 617
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->views_:I

    goto :goto_0

    .line 621
    :sswitch_5
    iget v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 622
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->praise_:I

    goto :goto_0

    .line 626
    :sswitch_6
    iget v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 627
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->poor_:I

    goto :goto_0

    .line 579
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

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 532
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    if-eqz v0, :cond_0

    .line 533
    check-cast p1, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object p0

    .line 536
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    :goto_0
    return-object p0

    .line 535
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    .prologue
    .line 542
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 564
    :goto_0
    return-object p0

    .line 545
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->setId(J)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    .line 548
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->hasProductType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->getProductType()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->setProductType(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    .line 551
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->hasDownloads()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 552
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->getDownloads()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->setDownloads(I)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    .line 554
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->hasViews()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 555
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->getViews()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->setViews(I)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    .line 557
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->hasPraise()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 558
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->getPraise()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->setPraise(I)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    .line 560
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->hasPoor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 561
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->getPoor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->setPoor(I)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    .line 563
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setDownloads(I)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 702
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 703
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->downloads_:I

    .line 704
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->onChanged()V

    .line 705
    return-object p0
.end method

.method public setId(J)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 648
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 649
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->id_:J

    .line 650
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->onChanged()V

    .line 651
    return-object p0
.end method

.method public setPoor(I)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 777
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 778
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->poor_:I

    .line 779
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->onChanged()V

    .line 780
    return-object p0
.end method

.method public setPraise(I)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 752
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 753
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->praise_:I

    .line 754
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->onChanged()V

    .line 755
    return-object p0
.end method

.method public setProductType(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    .prologue
    .line 674
    if-nez p1, :cond_0

    .line 675
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 677
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 678
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    .line 679
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->onChanged()V

    .line 680
    return-object p0
.end method

.method public setViews(I)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 727
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->bitField0_:I

    .line 728
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->views_:I

    .line 729
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->onChanged()V

    .line 730
    return-object p0
.end method
