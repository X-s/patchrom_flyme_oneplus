.class public final Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SquareForumListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private desc_:Ljava/lang/Object;

.field private id_:I

.field private ispost_:Z

.field private mobile_:Ljava/lang/Object;

.field private pic_:Ljava/lang/Object;

.field private position_:I

.field private rid_:J

.field private title_:Ljava/lang/Object;

.field private topic_:Ljava/lang/Object;

.field private topicid_:I

.field private type_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 899
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->title_:Ljava/lang/Object;

    .line 966
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->desc_:Ljava/lang/Object;

    .line 1033
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topic_:Ljava/lang/Object;

    .line 1125
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->pic_:Ljava/lang/Object;

    .line 1192
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mobile_:Ljava/lang/Object;

    .line 597
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->maybeForceBuilderInitialization()V

    .line 598
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 899
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->title_:Ljava/lang/Object;

    .line 966
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->desc_:Ljava/lang/Object;

    .line 1033
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topic_:Ljava/lang/Object;

    .line 1125
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->pic_:Ljava/lang/Object;

    .line 1192
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mobile_:Ljava/lang/Object;

    .line 602
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->maybeForceBuilderInitialization()V

    .line 603
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SquareForumListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$1;

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1

    .prologue
    .line 582
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->create()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    .line 666
    .local v0, "result":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 670
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1

    .prologue
    .line 611
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 587
    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 606
    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->build()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->build()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 2

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    .line 657
    .local v0, "result":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 658
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 660
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 6

    .prologue
    .line 674
    new-instance v1, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;-><init>(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;Lcom/oppo/tribune/protobuf/SquareForumListProto$1;)V

    .line 676
    .local v1, "result":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 677
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 678
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 679
    or-int/lit8 v2, v2, 0x1

    .line 681
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->id_:I

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->id_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->access$702(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;I)I

    .line 682
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 683
    or-int/lit8 v2, v2, 0x2

    .line 685
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->title_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->access$802(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 687
    or-int/lit8 v2, v2, 0x4

    .line 689
    :cond_2
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->rid_:J

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->rid_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->access$902(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;J)J

    .line 690
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 691
    or-int/lit8 v2, v2, 0x8

    .line 693
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->desc_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->desc_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->access$1002(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 695
    or-int/lit8 v2, v2, 0x10

    .line 697
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->type_:I

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->type_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->access$1102(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;I)I

    .line 698
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 699
    or-int/lit8 v2, v2, 0x20

    .line 701
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topic_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->topic_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->access$1202(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 703
    or-int/lit8 v2, v2, 0x40

    .line 705
    :cond_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topicid_:I

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->topicid_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->access$1302(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;I)I

    .line 706
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 707
    or-int/lit16 v2, v2, 0x80

    .line 709
    :cond_7
    iget-boolean v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->ispost_:Z

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->ispost_:Z
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->access$1402(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;Z)Z

    .line 710
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 711
    or-int/lit16 v2, v2, 0x100

    .line 713
    :cond_8
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->pic_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->pic_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->access$1502(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 715
    or-int/lit16 v2, v2, 0x200

    .line 717
    :cond_9
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->position_:I

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->position_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->access$1602(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;I)I

    .line 718
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 719
    or-int/lit16 v2, v2, 0x400

    .line 721
    :cond_a
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mobile_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->mobile_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->access$1702(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->access$1802(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;I)I

    .line 723
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onBuilt()V

    .line 724
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 615
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 616
    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->id_:I

    .line 617
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 618
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->title_:Ljava/lang/Object;

    .line 619
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 620
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->rid_:J

    .line 621
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 622
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->desc_:Ljava/lang/Object;

    .line 623
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 624
    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->type_:I

    .line 625
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 626
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topic_:Ljava/lang/Object;

    .line 627
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 628
    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topicid_:I

    .line 629
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 630
    iput-boolean v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->ispost_:Z

    .line 631
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 632
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->pic_:Ljava/lang/Object;

    .line 633
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 634
    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->position_:I

    .line 635
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 636
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mobile_:Ljava/lang/Object;

    .line 637
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 638
    return-object p0
.end method

.method public clearDesc()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1

    .prologue
    .line 995
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 996
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDesc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->desc_:Ljava/lang/Object;

    .line 997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 998
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1

    .prologue
    .line 892
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 893
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->id_:I

    .line 894
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 895
    return-object p0
.end method

.method public clearIspost()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1

    .prologue
    .line 1118
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->ispost_:Z

    .line 1120
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1121
    return-object p0
.end method

.method public clearMobile()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1

    .prologue
    .line 1221
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1222
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getMobile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mobile_:Ljava/lang/Object;

    .line 1223
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1224
    return-object p0
.end method

.method public clearPic()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1

    .prologue
    .line 1154
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1155
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getPic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->pic_:Ljava/lang/Object;

    .line 1156
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1157
    return-object p0
.end method

.method public clearPosition()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1

    .prologue
    .line 1185
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1186
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->position_:I

    .line 1187
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1188
    return-object p0
.end method

.method public clearRid()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 2

    .prologue
    .line 959
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 960
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->rid_:J

    .line 961
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 962
    return-object p0
.end method

.method public clearTitle()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1

    .prologue
    .line 928
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 929
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->title_:Ljava/lang/Object;

    .line 930
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 931
    return-object p0
.end method

.method public clearTopic()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1

    .prologue
    .line 1062
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1063
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getTopic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topic_:Ljava/lang/Object;

    .line 1064
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1065
    return-object p0
.end method

.method public clearTopicid()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1

    .prologue
    .line 1093
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1094
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topicid_:I

    .line 1095
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1096
    return-object p0
.end method

.method public clearType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1

    .prologue
    .line 1026
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1027
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->type_:I

    .line 1028
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1029
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 2

    .prologue
    .line 642
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->create()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

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
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 1

    .prologue
    .line 651
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 973
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->desc_:Ljava/lang/Object;

    .line 974
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 975
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->desc_:Ljava/lang/Object;

    .line 980
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
    .line 646
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->id_:I

    return v0
.end method

.method public getIspost()Z
    .locals 1

    .prologue
    .line 1107
    iget-boolean v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->ispost_:Z

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mobile_:Ljava/lang/Object;

    .line 1200
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1201
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1203
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mobile_:Ljava/lang/Object;

    .line 1206
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

.method public getPic()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->pic_:Ljava/lang/Object;

    .line 1133
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1134
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1136
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->pic_:Ljava/lang/Object;

    .line 1139
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

.method public getPosition()I
    .locals 1

    .prologue
    .line 1174
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->position_:I

    return v0
.end method

.method public getRid()J
    .locals 2

    .prologue
    .line 948
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->rid_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 906
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->title_:Ljava/lang/Object;

    .line 907
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 908
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 910
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->title_:Ljava/lang/Object;

    .line 913
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

.method public getTopic()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topic_:Ljava/lang/Object;

    .line 1041
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1042
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topic_:Ljava/lang/Object;

    .line 1047
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

.method public getTopicid()I
    .locals 1

    .prologue
    .line 1082
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topicid_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1015
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->type_:I

    return v0
.end method

.method public hasDesc()Z
    .locals 2

    .prologue
    .line 969
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 877
    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIspost()Z
    .locals 2

    .prologue
    .line 1103
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

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

.method public hasMobile()Z
    .locals 2

    .prologue
    .line 1195
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPic()Z
    .locals 2

    .prologue
    .line 1128
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

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

.method public hasPosition()Z
    .locals 2

    .prologue
    .line 1170
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

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

.method public hasRid()Z
    .locals 2

    .prologue
    .line 944
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 902
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

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

.method public hasTopic()Z
    .locals 2

    .prologue
    .line 1036
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

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

.method public hasTopicid()Z
    .locals 2

    .prologue
    .line 1078
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 1011
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

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
    .line 591
    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 779
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 787
    :cond_0
    :goto_0
    return v0

    .line 783
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
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
    .line 582
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

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
    .line 582
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

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
    .line 582
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

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
    .line 582
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 797
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 798
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 804
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 806
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 807
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 808
    :goto_1
    return-object p0

    .line 800
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 801
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    goto :goto_1

    .line 813
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 814
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->id_:I

    goto :goto_0

    .line 818
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 819
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 823
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 824
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->rid_:J

    goto :goto_0

    .line 828
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 829
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->desc_:Ljava/lang/Object;

    goto :goto_0

    .line 833
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 834
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->type_:I

    goto :goto_0

    .line 838
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 839
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topic_:Ljava/lang/Object;

    goto :goto_0

    .line 843
    :sswitch_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 844
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topicid_:I

    goto :goto_0

    .line 848
    :sswitch_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 849
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->ispost_:Z

    goto/16 :goto_0

    .line 853
    :sswitch_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 854
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->pic_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 858
    :sswitch_a
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 859
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->position_:I

    goto/16 :goto_0

    .line 863
    :sswitch_b
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 864
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mobile_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 798
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 728
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    if-eqz v0, :cond_0

    .line 729
    check-cast p1, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object p0

    .line 732
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    :goto_0
    return-object p0

    .line 731
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    .prologue
    .line 738
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 775
    :goto_0
    return-object p0

    .line 741
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->setId(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    .line 744
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 745
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    .line 747
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->hasRid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 748
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getRid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->setRid(J)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    .line 750
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->hasDesc()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 751
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->setDesc(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    .line 753
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->hasType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 754
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->setType(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    .line 756
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->hasTopic()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 757
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->setTopic(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    .line 759
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->hasTopicid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 760
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getTopicid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->setTopicid(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    .line 762
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->hasIspost()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 763
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getIspost()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->setIspost(Z)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    .line 765
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->hasPic()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 766
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getPic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->setPic(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    .line 768
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 769
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->setPosition(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    .line 771
    :cond_a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->hasMobile()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 772
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->setMobile(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    .line 774
    :cond_b
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setDesc(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 985
    if-nez p1, :cond_0

    .line 986
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 988
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 989
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->desc_:Ljava/lang/Object;

    .line 990
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 991
    return-object p0
.end method

.method setDesc(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1002
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1003
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->desc_:Ljava/lang/Object;

    .line 1004
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1005
    return-void
.end method

.method public setId(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 885
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 886
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->id_:I

    .line 887
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 888
    return-object p0
.end method

.method public setIspost(Z)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1111
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1112
    iput-boolean p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->ispost_:Z

    .line 1113
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1114
    return-object p0
.end method

.method public setMobile(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1211
    if-nez p1, :cond_0

    .line 1212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1214
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1215
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mobile_:Ljava/lang/Object;

    .line 1216
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1217
    return-object p0
.end method

.method setMobile(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1228
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1229
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mobile_:Ljava/lang/Object;

    .line 1230
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1231
    return-void
.end method

.method public setPic(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1144
    if-nez p1, :cond_0

    .line 1145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1147
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1148
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->pic_:Ljava/lang/Object;

    .line 1149
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1150
    return-object p0
.end method

.method setPic(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1161
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1162
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->pic_:Ljava/lang/Object;

    .line 1163
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1164
    return-void
.end method

.method public setPosition(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1178
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1179
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->position_:I

    .line 1180
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1181
    return-object p0
.end method

.method public setRid(J)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 952
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 953
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->rid_:J

    .line 954
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 955
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 918
    if-nez p1, :cond_0

    .line 919
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 921
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 922
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->title_:Ljava/lang/Object;

    .line 923
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 924
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 935
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 936
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->title_:Ljava/lang/Object;

    .line 937
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 938
    return-void
.end method

.method public setTopic(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1052
    if-nez p1, :cond_0

    .line 1053
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1055
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1056
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topic_:Ljava/lang/Object;

    .line 1057
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1058
    return-object p0
.end method

.method setTopic(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1069
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1070
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topic_:Ljava/lang/Object;

    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1072
    return-void
.end method

.method public setTopicid(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1086
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1087
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->topicid_:I

    .line 1088
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1089
    return-object p0
.end method

.method public setType(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1019
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->bitField0_:I

    .line 1020
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->type_:I

    .line 1021
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->onChanged()V

    .line 1022
    return-object p0
.end method
