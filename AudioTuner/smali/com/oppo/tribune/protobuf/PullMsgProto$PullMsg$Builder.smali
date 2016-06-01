.class public final Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PullMsgProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private extra_:Ljava/lang/Object;

.field private id_:J

.field private image_:Ljava/lang/Object;

.field private resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

.field private summary_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 763
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_THREAD:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    .line 792
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->title_:Ljava/lang/Object;

    .line 834
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->summary_:Ljava/lang/Object;

    .line 876
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->image_:Ljava/lang/Object;

    .line 918
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->extra_:Ljava/lang/Object;

    .line 532
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->maybeForceBuilderInitialization()V

    .line 533
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 763
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_THREAD:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    .line 792
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->title_:Ljava/lang/Object;

    .line 834
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->summary_:Ljava/lang/Object;

    .line 876
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->image_:Ljava/lang/Object;

    .line 918
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->extra_:Ljava/lang/Object;

    .line 537
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->maybeForceBuilderInitialization()V

    .line 538
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PullMsgProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PullMsgProto$1;

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->create()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    .line 591
    .local v0, "result":Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 592
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 595
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1

    .prologue
    .line 546
    new-instance v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 522
    # getter for: Lcom/oppo/tribune/protobuf/PullMsgProto;->internal_static_protobuf_PullMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 541
    # getter for: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->build()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->build()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 2

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    .line 582
    .local v0, "result":Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 585
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 6

    .prologue
    .line 599
    new-instance v1, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;-><init>(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;Lcom/oppo/tribune/protobuf/PullMsgProto$1;)V

    .line 601
    .local v1, "result":Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 602
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 603
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 604
    or-int/lit8 v2, v2, 0x1

    .line 606
    :cond_0
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->id_:J

    # setter for: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->id_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->access$702(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;J)J

    .line 607
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 608
    or-int/lit8 v2, v2, 0x2

    .line 610
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    # setter for: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->access$802(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    .line 611
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 612
    or-int/lit8 v2, v2, 0x4

    .line 614
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->title_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->access$902(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 616
    or-int/lit8 v2, v2, 0x8

    .line 618
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->summary_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->summary_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->access$1002(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 620
    or-int/lit8 v2, v2, 0x10

    .line 622
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->image_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->image_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->access$1102(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 624
    or-int/lit8 v2, v2, 0x20

    .line 626
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->extra_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->extra_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->access$1202(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    # setter for: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->access$1302(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;I)I

    .line 628
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onBuilt()V

    .line 629
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->clear()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->clear()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->clear()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->clear()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 2

    .prologue
    .line 550
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 551
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->id_:J

    .line 552
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 553
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_THREAD:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    .line 554
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 555
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->title_:Ljava/lang/Object;

    .line 556
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 557
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->summary_:Ljava/lang/Object;

    .line 558
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 559
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->image_:Ljava/lang/Object;

    .line 560
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 561
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->extra_:Ljava/lang/Object;

    .line 562
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 563
    return-object p0
.end method

.method public clearExtra()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1

    .prologue
    .line 947
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 948
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->extra_:Ljava/lang/Object;

    .line 949
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 950
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 2

    .prologue
    .line 756
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 757
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->id_:J

    .line 758
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 759
    return-object p0
.end method

.method public clearImage()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1

    .prologue
    .line 905
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 906
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getImage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->image_:Ljava/lang/Object;

    .line 907
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 908
    return-object p0
.end method

.method public clearResType()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1

    .prologue
    .line 785
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 786
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_THREAD:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    .line 787
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 788
    return-object p0
.end method

.method public clearSummary()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1

    .prologue
    .line 863
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 864
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getSummary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->summary_:Ljava/lang/Object;

    .line 865
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 866
    return-object p0
.end method

.method public clearTitle()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1

    .prologue
    .line 821
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 822
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->title_:Ljava/lang/Object;

    .line 823
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 824
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->clone()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->clone()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->clone()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->clone()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->clone()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 2

    .prologue
    .line 567
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->create()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

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
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->clone()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 1

    .prologue
    .line 576
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 571
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 3

    .prologue
    .line 925
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->extra_:Ljava/lang/Object;

    .line 926
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 927
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->extra_:Ljava/lang/Object;

    .line 932
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

.method public getId()J
    .locals 2

    .prologue
    .line 745
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->id_:J

    return-wide v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 883
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->image_:Ljava/lang/Object;

    .line 884
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 885
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 887
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->image_:Ljava/lang/Object;

    .line 890
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

.method public getResType()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 3

    .prologue
    .line 841
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->summary_:Ljava/lang/Object;

    .line 842
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 843
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->summary_:Ljava/lang/Object;

    .line 848
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
    .line 799
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->title_:Ljava/lang/Object;

    .line 800
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 801
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->title_:Ljava/lang/Object;

    .line 806
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

.method public hasExtra()Z
    .locals 2

    .prologue
    .line 921
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 741
    iget v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 2

    .prologue
    .line 879
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

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

.method public hasResType()Z
    .locals 2

    .prologue
    .line 766
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

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

.method public hasSummary()Z
    .locals 2

    .prologue
    .line 837
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

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
    .line 795
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 526
    # getter for: Lcom/oppo/tribune/protobuf/PullMsgProto;->internal_static_protobuf_PullMsg_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 669
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
    .line 518
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

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
    .line 518
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

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
    .line 518
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

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
    .line 518
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 679
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 680
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 686
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 688
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 689
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 690
    :goto_1
    return-object p0

    .line 682
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 683
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    goto :goto_1

    .line 695
    :sswitch_1
    iget v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 696
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->id_:J

    goto :goto_0

    .line 700
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 701
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->valueOf(I)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    move-result-object v3

    .line 703
    .local v3, "value":Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;
    if-nez v3, :cond_1

    .line 704
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 706
    :cond_1
    iget v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 707
    iput-object v3, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    goto :goto_0

    .line 712
    .end local v0    # "rawValue":I
    .end local v3    # "value":Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;
    :sswitch_3
    iget v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 713
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 717
    :sswitch_4
    iget v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 718
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->summary_:Ljava/lang/Object;

    goto :goto_0

    .line 722
    :sswitch_5
    iget v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 723
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->image_:Ljava/lang/Object;

    goto :goto_0

    .line 727
    :sswitch_6
    iget v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 728
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->extra_:Ljava/lang/Object;

    goto :goto_0

    .line 680
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 633
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    if-eqz v0, :cond_0

    .line 634
    check-cast p1, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object p0

    .line 637
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    :goto_0
    return-object p0

    .line 636
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    .prologue
    .line 643
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 665
    :goto_0
    return-object p0

    .line 646
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->setId(J)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    .line 649
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->hasResType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 650
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getResType()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->setResType(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    .line 652
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 653
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    .line 655
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->hasSummary()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 656
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->setSummary(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    .line 658
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 659
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getImage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->setImage(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    .line 661
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->hasExtra()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 662
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->setExtra(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    .line 664
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setExtra(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 937
    if-nez p1, :cond_0

    .line 938
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 940
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 941
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->extra_:Ljava/lang/Object;

    .line 942
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 943
    return-object p0
.end method

.method setExtra(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 954
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 955
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->extra_:Ljava/lang/Object;

    .line 956
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 957
    return-void
.end method

.method public setId(J)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 749
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 750
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->id_:J

    .line 751
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 752
    return-object p0
.end method

.method public setImage(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 895
    if-nez p1, :cond_0

    .line 896
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 898
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 899
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->image_:Ljava/lang/Object;

    .line 900
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 901
    return-object p0
.end method

.method setImage(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 912
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 913
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->image_:Ljava/lang/Object;

    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 915
    return-void
.end method

.method public setResType(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    .prologue
    .line 775
    if-nez p1, :cond_0

    .line 776
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 778
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 779
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    .line 780
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 781
    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 853
    if-nez p1, :cond_0

    .line 854
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 856
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 857
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->summary_:Ljava/lang/Object;

    .line 858
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 859
    return-object p0
.end method

.method setSummary(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 870
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 871
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->summary_:Ljava/lang/Object;

    .line 872
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 873
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 811
    if-nez p1, :cond_0

    .line 812
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 814
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 815
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->title_:Ljava/lang/Object;

    .line 816
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 817
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 828
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->bitField0_:I

    .line 829
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->title_:Ljava/lang/Object;

    .line 830
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->onChanged()V

    .line 831
    return-void
.end method
