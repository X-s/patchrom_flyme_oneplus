.class public final Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SearchDownloadProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fileUrl_:Ljava/lang/Object;

.field private id_:J

.field private key_:Ljava/lang/Object;

.field private masterId_:J

.field private p2SOpen_:I

.field private remark_:Ljava/lang/Object;

.field private status_:I

.field private subUrl_:Ljava/lang/Object;

.field private type_:I

.field private versionCode_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 873
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->key_:Ljava/lang/Object;

    .line 915
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->fileUrl_:Ljava/lang/Object;

    .line 957
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->subUrl_:Ljava/lang/Object;

    .line 1024
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->remark_:Ljava/lang/Object;

    .line 543
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->maybeForceBuilderInitialization()V

    .line 544
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 873
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->key_:Ljava/lang/Object;

    .line 915
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->fileUrl_:Ljava/lang/Object;

    .line 957
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->subUrl_:Ljava/lang/Object;

    .line 1024
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->remark_:Ljava/lang/Object;

    .line 548
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->maybeForceBuilderInitialization()V

    .line 549
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1

    .prologue
    .line 528
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->create()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    .line 610
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 611
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 614
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1

    .prologue
    .line 557
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 533
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 552
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 2

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    .line 601
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 604
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 6

    .prologue
    .line 618
    new-instance v1, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;-><init>(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;)V

    .line 620
    .local v1, "result":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 621
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 622
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 623
    or-int/lit8 v2, v2, 0x1

    .line 625
    :cond_0
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->id_:J

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->id_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->access$702(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;J)J

    .line 626
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 627
    or-int/lit8 v2, v2, 0x2

    .line 629
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->type_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->type_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->access$802(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;I)I

    .line 630
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 631
    or-int/lit8 v2, v2, 0x4

    .line 633
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->status_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->status_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->access$902(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;I)I

    .line 634
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 635
    or-int/lit8 v2, v2, 0x8

    .line 637
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->key_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->key_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->access$1002(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 639
    or-int/lit8 v2, v2, 0x10

    .line 641
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->fileUrl_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->fileUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->access$1102(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 643
    or-int/lit8 v2, v2, 0x20

    .line 645
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->subUrl_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->subUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->access$1202(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 647
    or-int/lit8 v2, v2, 0x40

    .line 649
    :cond_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->versionCode_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->versionCode_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->access$1302(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;I)I

    .line 650
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 651
    or-int/lit16 v2, v2, 0x80

    .line 653
    :cond_7
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->remark_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->remark_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->access$1402(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 655
    or-int/lit16 v2, v2, 0x100

    .line 657
    :cond_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->p2SOpen_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->p2SOpen_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->access$1502(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;I)I

    .line 658
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 659
    or-int/lit16 v2, v2, 0x200

    .line 661
    :cond_9
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->masterId_:J

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->masterId_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->access$1602(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;J)J

    .line 662
    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->access$1702(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;I)I

    .line 663
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onBuilt()V

    .line 664
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 561
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 562
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->id_:J

    .line 563
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 564
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->type_:I

    .line 565
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 566
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->status_:I

    .line 567
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 568
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->key_:Ljava/lang/Object;

    .line 569
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 570
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->fileUrl_:Ljava/lang/Object;

    .line 571
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 572
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->subUrl_:Ljava/lang/Object;

    .line 573
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 574
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->versionCode_:I

    .line 575
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 576
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->remark_:Ljava/lang/Object;

    .line 577
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 578
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->p2SOpen_:I

    .line 579
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 580
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->masterId_:J

    .line 581
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 582
    return-object p0
.end method

.method public clearFileUrl()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1

    .prologue
    .line 944
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 945
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->fileUrl_:Ljava/lang/Object;

    .line 946
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 947
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 2

    .prologue
    .line 816
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 817
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->id_:J

    .line 818
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 819
    return-object p0
.end method

.method public clearKey()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 903
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->key_:Ljava/lang/Object;

    .line 904
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 905
    return-object p0
.end method

.method public clearMasterId()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 2

    .prologue
    .line 1109
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 1110
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->masterId_:J

    .line 1111
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 1112
    return-object p0
.end method

.method public clearP2SOpen()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1

    .prologue
    .line 1084
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 1085
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->p2SOpen_:I

    .line 1086
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 1087
    return-object p0
.end method

.method public clearRemark()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1

    .prologue
    .line 1053
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 1054
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getRemark()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->remark_:Ljava/lang/Object;

    .line 1055
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 1056
    return-object p0
.end method

.method public clearStatus()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1

    .prologue
    .line 866
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 867
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->status_:I

    .line 868
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 869
    return-object p0
.end method

.method public clearSubUrl()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1

    .prologue
    .line 986
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 987
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getSubUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->subUrl_:Ljava/lang/Object;

    .line 988
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 989
    return-object p0
.end method

.method public clearType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1

    .prologue
    .line 841
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 842
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->type_:I

    .line 843
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 844
    return-object p0
.end method

.method public clearVersionCode()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1

    .prologue
    .line 1017
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 1018
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->versionCode_:I

    .line 1019
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 1020
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 2

    .prologue
    .line 586
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->create()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

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
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 1

    .prologue
    .line 595
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 590
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 922
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->fileUrl_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->fileUrl_:Ljava/lang/Object;

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

.method public getId()J
    .locals 2

    .prologue
    .line 805
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->id_:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 880
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->key_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->key_:Ljava/lang/Object;

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

.method public getMasterId()J
    .locals 2

    .prologue
    .line 1098
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->masterId_:J

    return-wide v0
.end method

.method public getP2SOpen()I
    .locals 1

    .prologue
    .line 1073
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->p2SOpen_:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->remark_:Ljava/lang/Object;

    .line 1032
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1033
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1035
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->remark_:Ljava/lang/Object;

    .line 1038
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

.method public getStatus()I
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->status_:I

    return v0
.end method

.method public getSubUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 964
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->subUrl_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->subUrl_:Ljava/lang/Object;

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

.method public getType()I
    .locals 1

    .prologue
    .line 830
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->type_:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->versionCode_:I

    return v0
.end method

.method public hasFileUrl()Z
    .locals 2

    .prologue
    .line 918
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 801
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKey()Z
    .locals 2

    .prologue
    .line 876
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

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

.method public hasMasterId()Z
    .locals 2

    .prologue
    .line 1094
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasP2SOpen()Z
    .locals 2

    .prologue
    .line 1069
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRemark()Z
    .locals 2

    .prologue
    .line 1027
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

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
    .line 851
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

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

.method public hasSubUrl()Z
    .locals 2

    .prologue
    .line 960
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

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
    .line 826
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

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

.method public hasVersionCode()Z
    .locals 2

    .prologue
    .line 1002
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 537
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 716
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
    .line 528
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

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
    .line 528
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

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
    .line 528
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

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
    .line 528
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 726
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 727
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 733
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 735
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 736
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 737
    :goto_1
    return-object p0

    .line 729
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 730
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    goto :goto_1

    .line 742
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 743
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->id_:J

    goto :goto_0

    .line 747
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 748
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->type_:I

    goto :goto_0

    .line 752
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 753
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->status_:I

    goto :goto_0

    .line 757
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 758
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->key_:Ljava/lang/Object;

    goto :goto_0

    .line 762
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 763
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->fileUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 767
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 768
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->subUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 772
    :sswitch_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 773
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->versionCode_:I

    goto :goto_0

    .line 777
    :sswitch_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 778
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->remark_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 782
    :sswitch_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 783
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->p2SOpen_:I

    goto/16 :goto_0

    .line 787
    :sswitch_a
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 788
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->masterId_:J

    goto/16 :goto_0

    .line 727
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 668
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    if-eqz v0, :cond_0

    .line 669
    check-cast p1, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object p0

    .line 672
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    :goto_0
    return-object p0

    .line 671
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    .prologue
    .line 678
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 712
    :goto_0
    return-object p0

    .line 681
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->setId(J)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    .line 684
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->setType(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    .line 687
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 688
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->setStatus(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    .line 690
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 691
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->setKey(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    .line 693
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->hasFileUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 694
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->setFileUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    .line 696
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->hasSubUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 697
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getSubUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->setSubUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    .line 699
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 700
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getVersionCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->setVersionCode(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    .line 702
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->hasRemark()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 703
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getRemark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->setRemark(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    .line 705
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->hasP2SOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 706
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getP2SOpen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->setP2SOpen(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    .line 708
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->hasMasterId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 709
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getMasterId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->setMasterId(J)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    .line 711
    :cond_a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setFileUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
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
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 938
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->fileUrl_:Ljava/lang/Object;

    .line 939
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 940
    return-object p0
.end method

.method setFileUrl(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 951
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 952
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->fileUrl_:Ljava/lang/Object;

    .line 953
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 954
    return-void
.end method

.method public setId(J)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 809
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 810
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->id_:J

    .line 811
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 812
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
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
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 896
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->key_:Ljava/lang/Object;

    .line 897
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 898
    return-object p0
.end method

.method setKey(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 909
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 910
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->key_:Ljava/lang/Object;

    .line 911
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 912
    return-void
.end method

.method public setMasterId(J)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1102
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 1103
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->masterId_:J

    .line 1104
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 1105
    return-object p0
.end method

.method public setP2SOpen(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1077
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 1078
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->p2SOpen_:I

    .line 1079
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 1080
    return-object p0
.end method

.method public setRemark(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1043
    if-nez p1, :cond_0

    .line 1044
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1046
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 1047
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->remark_:Ljava/lang/Object;

    .line 1048
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 1049
    return-object p0
.end method

.method setRemark(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1060
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 1061
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->remark_:Ljava/lang/Object;

    .line 1062
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 1063
    return-void
.end method

.method public setStatus(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 859
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 860
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->status_:I

    .line 861
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 862
    return-object p0
.end method

.method public setSubUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
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
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 980
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->subUrl_:Ljava/lang/Object;

    .line 981
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 982
    return-object p0
.end method

.method setSubUrl(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 993
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 994
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->subUrl_:Ljava/lang/Object;

    .line 995
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 996
    return-void
.end method

.method public setType(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 834
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 835
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->type_:I

    .line 836
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 837
    return-object p0
.end method

.method public setVersionCode(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1010
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->bitField0_:I

    .line 1011
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->versionCode_:I

    .line 1012
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->onChanged()V

    .line 1013
    return-object p0
.end method
