.class public final Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PackshowTopicsProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topicOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topicOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private desc_:Ljava/lang/Object;

.field private id_:I

.field private pic1_:Ljava/lang/Object;

.field private pic_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 642
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->title_:Ljava/lang/Object;

    .line 684
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->desc_:Ljava/lang/Object;

    .line 726
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic_:Ljava/lang/Object;

    .line 768
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic1_:Ljava/lang/Object;

    .line 424
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->maybeForceBuilderInitialization()V

    .line 425
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 642
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->title_:Ljava/lang/Object;

    .line 684
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->desc_:Ljava/lang/Object;

    .line 726
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic_:Ljava/lang/Object;

    .line 768
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic1_:Ljava/lang/Object;

    .line 429
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->maybeForceBuilderInitialization()V

    .line 430
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PackshowTopicsProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$1;

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->create()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    .line 481
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 485
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1

    .prologue
    .line 438
    new-instance v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 414
    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->internal_static_pb_topic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 433
    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    .line 472
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 475
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 5

    .prologue
    .line 489
    new-instance v1, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;-><init>(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;Lcom/oppo/tribune/protobuf/PackshowTopicsProto$1;)V

    .line 491
    .local v1, "result":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 492
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 493
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 494
    or-int/lit8 v2, v2, 0x1

    .line 496
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->id_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->id_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->access$702(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;I)I

    .line 497
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 498
    or-int/lit8 v2, v2, 0x2

    .line 500
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->title_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->access$802(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 502
    or-int/lit8 v2, v2, 0x4

    .line 504
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->desc_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->desc_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->access$902(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 506
    or-int/lit8 v2, v2, 0x8

    .line 508
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->pic_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->access$1002(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 510
    or-int/lit8 v2, v2, 0x10

    .line 512
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic1_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->pic1_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->access$1102(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    # setter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->access$1202(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;I)I

    .line 514
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onBuilt()V

    .line 515
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1

    .prologue
    .line 442
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 443
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->id_:I

    .line 444
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 445
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->title_:Ljava/lang/Object;

    .line 446
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 447
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->desc_:Ljava/lang/Object;

    .line 448
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 449
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic_:Ljava/lang/Object;

    .line 450
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 451
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic1_:Ljava/lang/Object;

    .line 452
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 453
    return-object p0
.end method

.method public clearDesc()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 714
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDesc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->desc_:Ljava/lang/Object;

    .line 715
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    .line 716
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 636
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->id_:I

    .line 637
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    .line 638
    return-object p0
.end method

.method public clearPic()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 756
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getPic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic_:Ljava/lang/Object;

    .line 757
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    .line 758
    return-object p0
.end method

.method public clearPic1()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1

    .prologue
    .line 797
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 798
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getPic1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic1_:Ljava/lang/Object;

    .line 799
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    .line 800
    return-object p0
.end method

.method public clearTitle()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 672
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->title_:Ljava/lang/Object;

    .line 673
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    .line 674
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 2

    .prologue
    .line 457
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->create()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

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
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 1

    .prologue
    .line 466
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->desc_:Ljava/lang/Object;

    .line 692
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 693
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->desc_:Ljava/lang/Object;

    .line 698
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

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 461
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->id_:I

    return v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 3

    .prologue
    .line 733
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic_:Ljava/lang/Object;

    .line 734
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 735
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic_:Ljava/lang/Object;

    .line 740
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

.method public getPic1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 775
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic1_:Ljava/lang/Object;

    .line 776
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 777
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic1_:Ljava/lang/Object;

    .line 782
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

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->title_:Ljava/lang/Object;

    .line 650
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 651
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->title_:Ljava/lang/Object;

    .line 656
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

.method public hasDesc()Z
    .locals 2

    .prologue
    .line 687
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

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

    .line 620
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPic()Z
    .locals 2

    .prologue
    .line 729
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

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

.method public hasPic1()Z
    .locals 2

    .prologue
    .line 771
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 645
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

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
    .line 418
    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->internal_static_pb_topic_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 552
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 560
    :cond_0
    :goto_0
    return v0

    .line 556
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
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
    .line 410
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

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
    .line 410
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

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
    .line 410
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

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
    .line 410
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 570
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 571
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 577
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 580
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    .line 581
    :goto_1
    return-object p0

    .line 573
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 574
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    goto :goto_1

    .line 586
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 587
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->id_:I

    goto :goto_0

    .line 591
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 592
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 596
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 597
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->desc_:Ljava/lang/Object;

    goto :goto_0

    .line 601
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 602
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic_:Ljava/lang/Object;

    goto :goto_0

    .line 606
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 607
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic1_:Ljava/lang/Object;

    goto :goto_0

    .line 571
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 519
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    if-eqz v0, :cond_0

    .line 520
    check-cast p1, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object p0

    .line 523
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    :goto_0
    return-object p0

    .line 522
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    .prologue
    .line 529
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 548
    :goto_0
    return-object p0

    .line 532
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->setId(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    .line 535
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    .line 538
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->hasDesc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->setDesc(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    .line 541
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->hasPic()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 542
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getPic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->setPic(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    .line 544
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->hasPic1()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 545
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getPic1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->setPic1(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    .line 547
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setDesc(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 703
    if-nez p1, :cond_0

    .line 704
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 706
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 707
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->desc_:Ljava/lang/Object;

    .line 708
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    .line 709
    return-object p0
.end method

.method setDesc(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 720
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 721
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->desc_:Ljava/lang/Object;

    .line 722
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    .line 723
    return-void
.end method

.method public setId(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 628
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 629
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->id_:I

    .line 630
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    .line 631
    return-object p0
.end method

.method public setPic(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 745
    if-nez p1, :cond_0

    .line 746
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 748
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 749
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic_:Ljava/lang/Object;

    .line 750
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    .line 751
    return-object p0
.end method

.method setPic(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 762
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 763
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic_:Ljava/lang/Object;

    .line 764
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    .line 765
    return-void
.end method

.method public setPic1(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 787
    if-nez p1, :cond_0

    .line 788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 790
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 791
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic1_:Ljava/lang/Object;

    .line 792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    .line 793
    return-object p0
.end method

.method setPic1(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 804
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 805
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->pic1_:Ljava/lang/Object;

    .line 806
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    .line 807
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 661
    if-nez p1, :cond_0

    .line 662
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 664
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 665
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->title_:Ljava/lang/Object;

    .line 666
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    .line 667
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 678
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->bitField0_:I

    .line 679
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->title_:Ljava/lang/Object;

    .line 680
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->onChanged()V

    .line 681
    return-void
.end method
