.class public final Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ServiceNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreetOrBuilder;"
    }
.end annotation


# instance fields
.field private addr_:Ljava/lang/Object;

.field private bitField0_:I

.field private cityname_:Ljava/lang/Object;

.field private coordinate_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private phone_:Ljava/lang/Object;

.field private traffic_:Ljava/lang/Object;

.field private worktime_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 747
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->name_:Ljava/lang/Object;

    .line 789
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->addr_:Ljava/lang/Object;

    .line 831
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->phone_:Ljava/lang/Object;

    .line 873
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->coordinate_:Ljava/lang/Object;

    .line 915
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->traffic_:Ljava/lang/Object;

    .line 957
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->worktime_:Ljava/lang/Object;

    .line 999
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->cityname_:Ljava/lang/Object;

    .line 534
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->maybeForceBuilderInitialization()V

    .line 535
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 747
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->name_:Ljava/lang/Object;

    .line 789
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->addr_:Ljava/lang/Object;

    .line 831
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->phone_:Ljava/lang/Object;

    .line 873
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->coordinate_:Ljava/lang/Object;

    .line 915
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->traffic_:Ljava/lang/Object;

    .line 957
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->worktime_:Ljava/lang/Object;

    .line 999
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->cityname_:Ljava/lang/Object;

    .line 539
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->maybeForceBuilderInitialization()V

    .line 540
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ServiceNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$1;

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1

    .prologue
    .line 519
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->create()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    .line 595
    .local v0, "result":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 599
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1

    .prologue
    .line 548
    new-instance v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 524
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto;->internal_static_protobuf_ServiceNetStreet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 543
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 2

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    .line 586
    .local v0, "result":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 587
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 589
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 5

    .prologue
    .line 603
    new-instance v1, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;-><init>(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;Lcom/oppo/tribune/protobuf/ServiceNetProto$1;)V

    .line 605
    .local v1, "result":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 606
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 607
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 608
    or-int/lit8 v2, v2, 0x1

    .line 610
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->access$702(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 612
    or-int/lit8 v2, v2, 0x2

    .line 614
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->addr_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->addr_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->access$802(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 616
    or-int/lit8 v2, v2, 0x4

    .line 618
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->phone_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->phone_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->access$902(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 620
    or-int/lit8 v2, v2, 0x8

    .line 622
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->coordinate_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->coordinate_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->access$1002(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 624
    or-int/lit8 v2, v2, 0x10

    .line 626
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->traffic_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->traffic_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->access$1102(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 628
    or-int/lit8 v2, v2, 0x20

    .line 630
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->worktime_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->worktime_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->access$1202(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 632
    or-int/lit8 v2, v2, 0x40

    .line 634
    :cond_6
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->cityname_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->cityname_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->access$1302(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    # setter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->access$1402(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;I)I

    .line 636
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onBuilt()V

    .line 637
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->clear()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->clear()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->clear()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->clear()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1

    .prologue
    .line 552
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 553
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->name_:Ljava/lang/Object;

    .line 554
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 555
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->addr_:Ljava/lang/Object;

    .line 556
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 557
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->phone_:Ljava/lang/Object;

    .line 558
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 559
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->coordinate_:Ljava/lang/Object;

    .line 560
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 561
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->traffic_:Ljava/lang/Object;

    .line 562
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 563
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->worktime_:Ljava/lang/Object;

    .line 564
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 565
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->cityname_:Ljava/lang/Object;

    .line 566
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 567
    return-object p0
.end method

.method public clearAddr()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1

    .prologue
    .line 818
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 819
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getAddr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->addr_:Ljava/lang/Object;

    .line 820
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 821
    return-object p0
.end method

.method public clearCityname()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1

    .prologue
    .line 1028
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 1029
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getCityname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->cityname_:Ljava/lang/Object;

    .line 1030
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 1031
    return-object p0
.end method

.method public clearCoordinate()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 903
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getCoordinate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->coordinate_:Ljava/lang/Object;

    .line 904
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 905
    return-object p0
.end method

.method public clearName()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 777
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->name_:Ljava/lang/Object;

    .line 778
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 779
    return-object p0
.end method

.method public clearPhone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1

    .prologue
    .line 860
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 861
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getPhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->phone_:Ljava/lang/Object;

    .line 862
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 863
    return-object p0
.end method

.method public clearTraffic()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1

    .prologue
    .line 944
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 945
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getTraffic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->traffic_:Ljava/lang/Object;

    .line 946
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 947
    return-object p0
.end method

.method public clearWorktime()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1

    .prologue
    .line 986
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 987
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getWorktime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->worktime_:Ljava/lang/Object;

    .line 988
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 989
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 2

    .prologue
    .line 571
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->create()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

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
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 796
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->addr_:Ljava/lang/Object;

    .line 797
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 798
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->addr_:Ljava/lang/Object;

    .line 803
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

.method public getCityname()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->cityname_:Ljava/lang/Object;

    .line 1007
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1008
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1010
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->cityname_:Ljava/lang/Object;

    .line 1013
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

.method public getCoordinate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 880
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->coordinate_:Ljava/lang/Object;

    .line 881
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 882
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->coordinate_:Ljava/lang/Object;

    .line 887
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 1

    .prologue
    .line 580
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 575
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 754
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->name_:Ljava/lang/Object;

    .line 755
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 756
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->name_:Ljava/lang/Object;

    .line 761
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

.method public getPhone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 838
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->phone_:Ljava/lang/Object;

    .line 839
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 840
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 842
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->phone_:Ljava/lang/Object;

    .line 845
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

.method public getTraffic()Ljava/lang/String;
    .locals 3

    .prologue
    .line 922
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->traffic_:Ljava/lang/Object;

    .line 923
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 924
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 926
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->traffic_:Ljava/lang/Object;

    .line 929
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

.method public getWorktime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 964
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->worktime_:Ljava/lang/Object;

    .line 965
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 966
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->worktime_:Ljava/lang/Object;

    .line 971
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

.method public hasAddr()Z
    .locals 2

    .prologue
    .line 792
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

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

.method public hasCityname()Z
    .locals 2

    .prologue
    .line 1002
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

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

.method public hasCoordinate()Z
    .locals 2

    .prologue
    .line 876
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 750
    iget v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhone()Z
    .locals 2

    .prologue
    .line 834
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

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

.method public hasTraffic()Z
    .locals 2

    .prologue
    .line 918
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

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

.method public hasWorktime()Z
    .locals 2

    .prologue
    .line 960
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 528
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto;->internal_static_protobuf_ServiceNetStreet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 680
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
    .line 519
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

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
    .line 519
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

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
    .line 519
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

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
    .line 519
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 690
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 691
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 697
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 699
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 700
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 701
    :goto_1
    return-object p0

    .line 693
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 694
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    goto :goto_1

    .line 706
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 707
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 711
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 712
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->addr_:Ljava/lang/Object;

    goto :goto_0

    .line 716
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 717
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->phone_:Ljava/lang/Object;

    goto :goto_0

    .line 721
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 722
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->coordinate_:Ljava/lang/Object;

    goto :goto_0

    .line 726
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 727
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->traffic_:Ljava/lang/Object;

    goto :goto_0

    .line 731
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 732
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->worktime_:Ljava/lang/Object;

    goto :goto_0

    .line 736
    :sswitch_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 737
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->cityname_:Ljava/lang/Object;

    goto :goto_0

    .line 691
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 641
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    if-eqz v0, :cond_0

    .line 642
    check-cast p1, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object p0

    .line 645
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    :goto_0
    return-object p0

    .line 644
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    .prologue
    .line 651
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 676
    :goto_0
    return-object p0

    .line 654
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    .line 657
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->hasAddr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 658
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->setAddr(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    .line 660
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->hasPhone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 661
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->setPhone(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    .line 663
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->hasCoordinate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 664
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getCoordinate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->setCoordinate(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    .line 666
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->hasTraffic()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 667
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getTraffic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->setTraffic(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    .line 669
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->hasWorktime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 670
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getWorktime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->setWorktime(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    .line 672
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->hasCityname()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 673
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getCityname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->setCityname(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    .line 675
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setAddr(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 808
    if-nez p1, :cond_0

    .line 809
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 811
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 812
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->addr_:Ljava/lang/Object;

    .line 813
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 814
    return-object p0
.end method

.method setAddr(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 825
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 826
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->addr_:Ljava/lang/Object;

    .line 827
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 828
    return-void
.end method

.method public setCityname(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1018
    if-nez p1, :cond_0

    .line 1019
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1021
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 1022
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->cityname_:Ljava/lang/Object;

    .line 1023
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 1024
    return-object p0
.end method

.method setCityname(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1035
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 1036
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->cityname_:Ljava/lang/Object;

    .line 1037
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 1038
    return-void
.end method

.method public setCoordinate(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 892
    if-nez p1, :cond_0

    .line 893
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 895
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 896
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->coordinate_:Ljava/lang/Object;

    .line 897
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 898
    return-object p0
.end method

.method setCoordinate(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 909
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 910
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->coordinate_:Ljava/lang/Object;

    .line 911
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 912
    return-void
.end method

.method public setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 766
    if-nez p1, :cond_0

    .line 767
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 769
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 770
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->name_:Ljava/lang/Object;

    .line 771
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 772
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 783
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 784
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->name_:Ljava/lang/Object;

    .line 785
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 786
    return-void
.end method

.method public setPhone(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 850
    if-nez p1, :cond_0

    .line 851
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 853
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 854
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->phone_:Ljava/lang/Object;

    .line 855
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 856
    return-object p0
.end method

.method setPhone(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 867
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 868
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->phone_:Ljava/lang/Object;

    .line 869
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 870
    return-void
.end method

.method public setTraffic(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 934
    if-nez p1, :cond_0

    .line 935
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 937
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 938
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->traffic_:Ljava/lang/Object;

    .line 939
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 940
    return-object p0
.end method

.method setTraffic(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 951
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 952
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->traffic_:Ljava/lang/Object;

    .line 953
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 954
    return-void
.end method

.method public setWorktime(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 976
    if-nez p1, :cond_0

    .line 977
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 979
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 980
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->worktime_:Ljava/lang/Object;

    .line 981
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 982
    return-object p0
.end method

.method setWorktime(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 993
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->bitField0_:I

    .line 994
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->worktime_:Ljava/lang/Object;

    .line 995
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->onChanged()V

    .line 996
    return-void
.end method
