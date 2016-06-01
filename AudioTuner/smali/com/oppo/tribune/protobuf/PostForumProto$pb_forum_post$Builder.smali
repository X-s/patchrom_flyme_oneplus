.class public final Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PostForumProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_postOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_postOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:I

.field private rid_:J

.field private title_:Ljava/lang/Object;

.field private topic_:Ljava/lang/Object;

.field private topicid_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 607
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->title_:Ljava/lang/Object;

    .line 674
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topic_:Ljava/lang/Object;

    .line 385
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->maybeForceBuilderInitialization()V

    .line 386
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 607
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->title_:Ljava/lang/Object;

    .line 674
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topic_:Ljava/lang/Object;

    .line 390
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->maybeForceBuilderInitialization()V

    .line 391
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PostForumProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PostForumProto$1;

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1

    .prologue
    .line 371
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->create()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    .line 442
    .local v0, "result":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 446
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1

    .prologue
    .line 399
    new-instance v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 375
    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto;->internal_static_protobuf_pb_forum_post_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 394
    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->build()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->build()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    .line 433
    .local v0, "result":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 436
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 6

    .prologue
    .line 450
    new-instance v1, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;-><init>(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;Lcom/oppo/tribune/protobuf/PostForumProto$1;)V

    .line 452
    .local v1, "result":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 453
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 454
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 455
    or-int/lit8 v2, v2, 0x1

    .line 457
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->id_:I

    # setter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->id_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->access$702(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;I)I

    .line 458
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 459
    or-int/lit8 v2, v2, 0x2

    .line 461
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->title_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->access$802(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 463
    or-int/lit8 v2, v2, 0x4

    .line 465
    :cond_2
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->rid_:J

    # setter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->rid_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->access$902(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;J)J

    .line 466
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 467
    or-int/lit8 v2, v2, 0x8

    .line 469
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topic_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->topic_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->access$1002(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 471
    or-int/lit8 v2, v2, 0x10

    .line 473
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topicid_:I

    # setter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->topicid_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->access$1102(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;I)I

    .line 474
    # setter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->access$1202(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;I)I

    .line 475
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->onBuilt()V

    .line 476
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->clear()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->clear()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->clear()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->clear()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 404
    iput v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->id_:I

    .line 405
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 406
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->title_:Ljava/lang/Object;

    .line 407
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 408
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->rid_:J

    .line 409
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 410
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topic_:Ljava/lang/Object;

    .line 411
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 412
    iput v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topicid_:I

    .line 413
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 414
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 601
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->id_:I

    .line 602
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->onChanged()V

    .line 603
    return-object p0
.end method

.method public clearRid()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 2

    .prologue
    .line 667
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 668
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->rid_:J

    .line 669
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->onChanged()V

    .line 670
    return-object p0
.end method

.method public clearTitle()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 637
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->title_:Ljava/lang/Object;

    .line 638
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->onChanged()V

    .line 639
    return-object p0
.end method

.method public clearTopic()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 704
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getTopic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topic_:Ljava/lang/Object;

    .line 705
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->onChanged()V

    .line 706
    return-object p0
.end method

.method public clearTopicid()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 735
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topicid_:I

    .line 736
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->onChanged()V

    .line 737
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->clone()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->clone()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->clone()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->clone()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->clone()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 2

    .prologue
    .line 418
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->create()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

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
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->clone()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 1

    .prologue
    .line 427
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 422
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->id_:I

    return v0
.end method

.method public getRid()J
    .locals 2

    .prologue
    .line 656
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->rid_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->title_:Ljava/lang/Object;

    .line 615
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 616
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->title_:Ljava/lang/Object;

    .line 621
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
    .line 681
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topic_:Ljava/lang/Object;

    .line 682
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 683
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topic_:Ljava/lang/Object;

    .line 688
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
    .line 723
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topicid_:I

    return v0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 585
    iget v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

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
    .line 652
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

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
    .line 610
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

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
    .line 677
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

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

.method public hasTopicid()Z
    .locals 2

    .prologue
    .line 719
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

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
    .line 379
    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto;->internal_static_protobuf_pb_forum_post_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 513
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v0

    .line 517
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->hasRid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
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
    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

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
    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

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
    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

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
    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 535
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 536
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 542
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 544
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 545
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->onChanged()V

    .line 546
    :goto_1
    return-object p0

    .line 538
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 539
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->onChanged()V

    goto :goto_1

    .line 551
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 552
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->id_:I

    goto :goto_0

    .line 556
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 557
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 561
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 562
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->rid_:J

    goto :goto_0

    .line 566
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 567
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topic_:Ljava/lang/Object;

    goto :goto_0

    .line 571
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 572
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topicid_:I

    goto :goto_0

    .line 536
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 480
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    if-eqz v0, :cond_0

    .line 481
    check-cast p1, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object p0

    .line 484
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    :goto_0
    return-object p0

    .line 483
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    .prologue
    .line 490
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 509
    :goto_0
    return-object p0

    .line 493
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->setId(I)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    .line 496
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    .line 499
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->hasRid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getRid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->setRid(J)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    .line 502
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->hasTopic()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 503
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->setTopic(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    .line 505
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->hasTopicid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 506
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getTopicid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->setTopicid(I)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    .line 508
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setId(I)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 593
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 594
    iput p1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->id_:I

    .line 595
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->onChanged()V

    .line 596
    return-object p0
.end method

.method public setRid(J)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 660
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 661
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->rid_:J

    .line 662
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->onChanged()V

    .line 663
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 626
    if-nez p1, :cond_0

    .line 627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 629
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 630
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->title_:Ljava/lang/Object;

    .line 631
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->onChanged()V

    .line 632
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 643
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 644
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->title_:Ljava/lang/Object;

    .line 645
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->onChanged()V

    .line 646
    return-void
.end method

.method public setTopic(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 693
    if-nez p1, :cond_0

    .line 694
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 696
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 697
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topic_:Ljava/lang/Object;

    .line 698
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->onChanged()V

    .line 699
    return-object p0
.end method

.method setTopic(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 710
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 711
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topic_:Ljava/lang/Object;

    .line 712
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->onChanged()V

    .line 713
    return-void
.end method

.method public setTopicid(I)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 727
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->bitField0_:I

    .line 728
    iput p1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->topicid_:I

    .line 729
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->onChanged()V

    .line 730
    return-object p0
.end method
