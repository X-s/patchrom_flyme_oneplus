.class public final Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ResPhoneModelNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModelOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private height_:J

.field private id_:J

.field private name_:Ljava/lang/Object;

.field private resolution_:Ljava/lang/Object;

.field private width_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 584
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->name_:Ljava/lang/Object;

    .line 676
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->resolution_:Ljava/lang/Object;

    .line 374
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->maybeForceBuilderInitialization()V

    .line 375
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 584
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->name_:Ljava/lang/Object;

    .line 676
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->resolution_:Ljava/lang/Object;

    .line 379
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->maybeForceBuilderInitialization()V

    .line 380
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$1;

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 1

    .prologue
    .line 359
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->create()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    .line 431
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 435
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 1

    .prologue
    .line 388
    new-instance v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 364
    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->internal_static_protobuf_ResourceModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 383
    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->build()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->build()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    .line 422
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 425
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 6

    .prologue
    .line 439
    new-instance v1, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;-><init>(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$1;)V

    .line 441
    .local v1, "result":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 442
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 443
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 444
    or-int/lit8 v2, v2, 0x1

    .line 446
    :cond_0
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->id_:J

    # setter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->id_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->access$702(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;J)J

    .line 447
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 448
    or-int/lit8 v2, v2, 0x2

    .line 450
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->access$802(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 452
    or-int/lit8 v2, v2, 0x4

    .line 454
    :cond_2
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->height_:J

    # setter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->height_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->access$902(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;J)J

    .line 455
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 456
    or-int/lit8 v2, v2, 0x8

    .line 458
    :cond_3
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->width_:J

    # setter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->width_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->access$1002(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;J)J

    .line 459
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 460
    or-int/lit8 v2, v2, 0x10

    .line 462
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->resolution_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->resolution_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->access$1102(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    # setter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->access$1202(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;I)I

    .line 464
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->onBuilt()V

    .line 465
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->clear()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->clear()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->clear()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->clear()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 392
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 393
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->id_:J

    .line 394
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 395
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->name_:Ljava/lang/Object;

    .line 396
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 397
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->height_:J

    .line 398
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 399
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->width_:J

    .line 400
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 401
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->resolution_:Ljava/lang/Object;

    .line 402
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 403
    return-object p0
.end method

.method public clearHeight()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 2

    .prologue
    .line 644
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 645
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->height_:J

    .line 646
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->onChanged()V

    .line 647
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 2

    .prologue
    .line 577
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 578
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->id_:J

    .line 579
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->onChanged()V

    .line 580
    return-object p0
.end method

.method public clearName()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 614
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->name_:Ljava/lang/Object;

    .line 615
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->onChanged()V

    .line 616
    return-object p0
.end method

.method public clearResolution()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 706
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getResolution()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->resolution_:Ljava/lang/Object;

    .line 707
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->onChanged()V

    .line 708
    return-object p0
.end method

.method public clearWidth()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 2

    .prologue
    .line 669
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 670
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->width_:J

    .line 671
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->onChanged()V

    .line 672
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->clone()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->clone()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->clone()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->clone()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->clone()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 2

    .prologue
    .line 407
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->create()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

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
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->clone()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 1

    .prologue
    .line 416
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 411
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()J
    .locals 2

    .prologue
    .line 633
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->height_:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 566
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->id_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 591
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->name_:Ljava/lang/Object;

    .line 592
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 593
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->name_:Ljava/lang/Object;

    .line 598
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

.method public getResolution()Ljava/lang/String;
    .locals 3

    .prologue
    .line 683
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->resolution_:Ljava/lang/Object;

    .line 684
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 685
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->resolution_:Ljava/lang/Object;

    .line 690
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

.method public getWidth()J
    .locals 2

    .prologue
    .line 658
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->width_:J

    return-wide v0
.end method

.method public hasHeight()Z
    .locals 2

    .prologue
    .line 629
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

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

    .line 562
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 587
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

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

.method public hasResolution()Z
    .locals 2

    .prologue
    .line 679
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

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

.method public hasWidth()Z
    .locals 2

    .prologue
    .line 654
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

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
    .line 368
    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->internal_static_protobuf_ResourceModel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 502
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
    .line 359
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

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
    .line 359
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

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
    .line 359
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

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
    .line 359
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 512
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 513
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 519
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 522
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->onChanged()V

    .line 523
    :goto_1
    return-object p0

    .line 515
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 516
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->onChanged()V

    goto :goto_1

    .line 528
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 529
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->id_:J

    goto :goto_0

    .line 533
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 534
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 538
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 539
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->height_:J

    goto :goto_0

    .line 543
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 544
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->width_:J

    goto :goto_0

    .line 548
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 549
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->resolution_:Ljava/lang/Object;

    goto :goto_0

    .line 513
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

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 469
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    if-eqz v0, :cond_0

    .line 470
    check-cast p1, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object p0

    .line 473
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    :goto_0
    return-object p0

    .line 472
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    .prologue
    .line 479
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 498
    :goto_0
    return-object p0

    .line 482
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->setId(J)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    .line 485
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    .line 488
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getHeight()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->setHeight(J)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    .line 491
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 492
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getWidth()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->setWidth(J)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    .line 494
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 495
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getResolution()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->setResolution(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    .line 497
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setHeight(J)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 637
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 638
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->height_:J

    .line 639
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->onChanged()V

    .line 640
    return-object p0
.end method

.method public setId(J)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 570
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 571
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->id_:J

    .line 572
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->onChanged()V

    .line 573
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 603
    if-nez p1, :cond_0

    .line 604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 606
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 607
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->name_:Ljava/lang/Object;

    .line 608
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->onChanged()V

    .line 609
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 620
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 621
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->name_:Ljava/lang/Object;

    .line 622
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->onChanged()V

    .line 623
    return-void
.end method

.method public setResolution(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 695
    if-nez p1, :cond_0

    .line 696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 698
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 699
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->resolution_:Ljava/lang/Object;

    .line 700
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->onChanged()V

    .line 701
    return-object p0
.end method

.method setResolution(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 712
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 713
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->resolution_:Ljava/lang/Object;

    .line 714
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->onChanged()V

    .line 715
    return-void
.end method

.method public setWidth(J)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 662
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->bitField0_:I

    .line 663
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->width_:J

    .line 664
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->onChanged()V

    .line 665
    return-object p0
.end method
