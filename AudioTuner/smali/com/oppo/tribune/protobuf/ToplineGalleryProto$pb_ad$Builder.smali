.class public final Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ToplineGalleryProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:I

.field private pic_:Ljava/lang/Object;

.field private rid_:J

.field private title_:Ljava/lang/Object;

.field private type_:I

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 659
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->title_:Ljava/lang/Object;

    .line 751
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->url_:Ljava/lang/Object;

    .line 793
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->pic_:Ljava/lang/Object;

    .line 427
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->maybeForceBuilderInitialization()V

    .line 428
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 659
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->title_:Ljava/lang/Object;

    .line 751
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->url_:Ljava/lang/Object;

    .line 793
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->pic_:Ljava/lang/Object;

    .line 432
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->maybeForceBuilderInitialization()V

    .line 433
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ToplineGalleryProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$1;

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1

    .prologue
    .line 413
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->create()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    .line 486
    .local v0, "result":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 490
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1

    .prologue
    .line 441
    new-instance v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 417
    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->internal_static_protobuf_pb_ad_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 436
    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->build()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->build()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    .line 477
    .local v0, "result":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 480
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 6

    .prologue
    .line 494
    new-instance v1, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;-><init>(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;Lcom/oppo/tribune/protobuf/ToplineGalleryProto$1;)V

    .line 496
    .local v1, "result":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 497
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 498
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 499
    or-int/lit8 v2, v2, 0x1

    .line 501
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->id_:I

    # setter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->id_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->access$702(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;I)I

    .line 502
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 503
    or-int/lit8 v2, v2, 0x2

    .line 505
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->title_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->access$802(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 507
    or-int/lit8 v2, v2, 0x4

    .line 509
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->type_:I

    # setter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->type_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->access$902(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;I)I

    .line 510
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 511
    or-int/lit8 v2, v2, 0x8

    .line 513
    :cond_3
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->rid_:J

    # setter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->rid_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->access$1002(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;J)J

    .line 514
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 515
    or-int/lit8 v2, v2, 0x10

    .line 517
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->url_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->access$1102(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 519
    or-int/lit8 v2, v2, 0x20

    .line 521
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->pic_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->pic_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->access$1202(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    # setter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->access$1302(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;I)I

    .line 523
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onBuilt()V

    .line 524
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->clear()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->clear()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->clear()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->clear()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 445
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 446
    iput v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->id_:I

    .line 447
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 448
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->title_:Ljava/lang/Object;

    .line 449
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 450
    iput v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->type_:I

    .line 451
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 452
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->rid_:J

    .line 453
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 454
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->url_:Ljava/lang/Object;

    .line 455
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 456
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->pic_:Ljava/lang/Object;

    .line 457
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 458
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 653
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->id_:I

    .line 654
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 655
    return-object p0
.end method

.method public clearPic()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1

    .prologue
    .line 822
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 823
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getPic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->pic_:Ljava/lang/Object;

    .line 824
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 825
    return-object p0
.end method

.method public clearRid()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 2

    .prologue
    .line 744
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 745
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->rid_:J

    .line 746
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 747
    return-object p0
.end method

.method public clearTitle()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 689
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->title_:Ljava/lang/Object;

    .line 690
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 691
    return-object p0
.end method

.method public clearType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 720
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->type_:I

    .line 721
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 722
    return-object p0
.end method

.method public clearUrl()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 781
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->url_:Ljava/lang/Object;

    .line 782
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 783
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->clone()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->clone()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->clone()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->clone()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->clone()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 2

    .prologue
    .line 462
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->create()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

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
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->clone()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 1

    .prologue
    .line 471
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 466
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->id_:I

    return v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 3

    .prologue
    .line 800
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->pic_:Ljava/lang/Object;

    .line 801
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 802
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->pic_:Ljava/lang/Object;

    .line 807
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

.method public getRid()J
    .locals 2

    .prologue
    .line 733
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->rid_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 666
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->title_:Ljava/lang/Object;

    .line 667
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 668
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->title_:Ljava/lang/Object;

    .line 673
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
    .line 708
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->type_:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 758
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->url_:Ljava/lang/Object;

    .line 759
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 760
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->url_:Ljava/lang/Object;

    .line 765
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

    .line 637
    iget v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

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
    .line 796
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

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

.method public hasRid()Z
    .locals 2

    .prologue
    .line 729
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

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
    .line 662
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

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
    .line 704
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

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
    .line 754
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

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
    .line 421
    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->internal_static_protobuf_pb_ad_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 564
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 572
    :cond_0
    :goto_0
    return v0

    .line 568
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
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
    .line 413
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

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
    .line 413
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

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
    .line 413
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

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
    .line 413
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 582
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 583
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 589
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 591
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 592
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 593
    :goto_1
    return-object p0

    .line 585
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 586
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    goto :goto_1

    .line 598
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 599
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->id_:I

    goto :goto_0

    .line 603
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 604
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 608
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 609
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->type_:I

    goto :goto_0

    .line 613
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 614
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->rid_:J

    goto :goto_0

    .line 618
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 619
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 623
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 624
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->pic_:Ljava/lang/Object;

    goto :goto_0

    .line 583
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 528
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    if-eqz v0, :cond_0

    .line 529
    check-cast p1, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object p0

    .line 532
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    :goto_0
    return-object p0

    .line 531
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    .prologue
    .line 538
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 560
    :goto_0
    return-object p0

    .line 541
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->setId(I)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    .line 544
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    .line 547
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->setType(I)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    .line 550
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->hasRid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 551
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getRid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->setRid(J)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    .line 553
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 554
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->setUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    .line 556
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->hasPic()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 557
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getPic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->setPic(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    .line 559
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setId(I)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 645
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 646
    iput p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->id_:I

    .line 647
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 648
    return-object p0
.end method

.method public setPic(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 812
    if-nez p1, :cond_0

    .line 813
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 815
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 816
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->pic_:Ljava/lang/Object;

    .line 817
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 818
    return-object p0
.end method

.method setPic(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 829
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 830
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->pic_:Ljava/lang/Object;

    .line 831
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 832
    return-void
.end method

.method public setRid(J)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 737
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 738
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->rid_:J

    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 740
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 678
    if-nez p1, :cond_0

    .line 679
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 681
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 682
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->title_:Ljava/lang/Object;

    .line 683
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 684
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 695
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 696
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->title_:Ljava/lang/Object;

    .line 697
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 698
    return-void
.end method

.method public setType(I)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 712
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 713
    iput p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->type_:I

    .line 714
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 715
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 770
    if-nez p1, :cond_0

    .line 771
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 773
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 774
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->url_:Ljava/lang/Object;

    .line 775
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 776
    return-object p0
.end method

.method setUrl(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 787
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->bitField0_:I

    .line 788
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->url_:Ljava/lang/Object;

    .line 789
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->onChanged()V

    .line 790
    return-void
.end method
