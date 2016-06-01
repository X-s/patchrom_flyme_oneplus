.class public final Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "UserConfigProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_configOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_configOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private categoryId_:I

.field private configId_:J

.field private configIntro_:Ljava/lang/Object;

.field private configName_:Ljava/lang/Object;

.field private configParams_:Ljava/lang/Object;

.field private refConfigId_:Ljava/lang/Object;

.field private status_:I

.field private updateTime_:I

.field private userId_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 808
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->refConfigId_:Ljava/lang/Object;

    .line 844
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configName_:Ljava/lang/Object;

    .line 880
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configParams_:Ljava/lang/Object;

    .line 916
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 495
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->maybeForceBuilderInitialization()V

    .line 496
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 808
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->refConfigId_:Ljava/lang/Object;

    .line 844
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configName_:Ljava/lang/Object;

    .line 880
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configParams_:Ljava/lang/Object;

    .line 916
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 500
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->maybeForceBuilderInitialization()V

    .line 501
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/UserConfigProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/UserConfigProto$1;

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->create()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    .line 557
    .local v0, "result":Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 561
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1

    .prologue
    .line 507
    new-instance v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 485
    # getter for: Lcom/oppo/tribune/protobuf/UserConfigProto;->internal_static_protobuf_pb_user_config_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 503
    # getter for: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->build()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->build()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 2

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    .line 548
    .local v0, "result":Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 549
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 551
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 6

    .prologue
    .line 565
    new-instance v1, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;-><init>(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;Lcom/oppo/tribune/protobuf/UserConfigProto$1;)V

    .line 566
    .local v1, "result":Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 567
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 568
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 569
    or-int/lit8 v2, v2, 0x1

    .line 571
    :cond_0
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->userId_:J

    # setter for: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->userId_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->access$702(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;J)J

    .line 572
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 573
    or-int/lit8 v2, v2, 0x2

    .line 575
    :cond_1
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configId_:J

    # setter for: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configId_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->access$802(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;J)J

    .line 576
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 577
    or-int/lit8 v2, v2, 0x4

    .line 579
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->refConfigId_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->refConfigId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->access$902(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 581
    or-int/lit8 v2, v2, 0x8

    .line 583
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configName_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->access$1002(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 585
    or-int/lit8 v2, v2, 0x10

    .line 587
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configParams_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configParams_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->access$1102(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 589
    or-int/lit8 v2, v2, 0x20

    .line 591
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configIntro_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configIntro_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->access$1202(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 593
    or-int/lit8 v2, v2, 0x40

    .line 595
    :cond_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->updateTime_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->updateTime_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->access$1302(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;I)I

    .line 596
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 597
    or-int/lit16 v2, v2, 0x80

    .line 599
    :cond_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->categoryId_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->categoryId_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->access$1402(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;I)I

    .line 600
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 601
    or-int/lit16 v2, v2, 0x100

    .line 603
    :cond_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->status_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->status_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->access$1502(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;I)I

    .line 604
    # setter for: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->access$1602(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;I)I

    .line 605
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onBuilt()V

    .line 606
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->clear()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->clear()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->clear()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->clear()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 511
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 512
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->userId_:J

    .line 513
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 514
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configId_:J

    .line 515
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 516
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->refConfigId_:Ljava/lang/Object;

    .line 517
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 518
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configName_:Ljava/lang/Object;

    .line 519
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 520
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configParams_:Ljava/lang/Object;

    .line 521
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 522
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 523
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 524
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->updateTime_:I

    .line 525
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 526
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->categoryId_:I

    .line 527
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 528
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->status_:I

    .line 529
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 530
    return-object p0
.end method

.method public clearCategoryId()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 988
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->categoryId_:I

    .line 989
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 990
    return-object p0
.end method

.method public clearConfigId()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 2

    .prologue
    .line 801
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 802
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configId_:J

    .line 803
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 804
    return-object p0
.end method

.method public clearConfigIntro()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1

    .prologue
    .line 940
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 941
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getConfigIntro()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 942
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 943
    return-object p0
.end method

.method public clearConfigName()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 869
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getConfigName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configName_:Ljava/lang/Object;

    .line 870
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 871
    return-object p0
.end method

.method public clearConfigParams()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 905
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getConfigParams()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configParams_:Ljava/lang/Object;

    .line 906
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 907
    return-object p0
.end method

.method public clearRefConfigId()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1

    .prologue
    .line 832
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 833
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getRefConfigId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->refConfigId_:Ljava/lang/Object;

    .line 834
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 835
    return-object p0
.end method

.method public clearStatus()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1

    .prologue
    .line 1008
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 1009
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->status_:I

    .line 1010
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 1011
    return-object p0
.end method

.method public clearUpdateTime()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 967
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->updateTime_:I

    .line 968
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 969
    return-object p0
.end method

.method public clearUserId()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 2

    .prologue
    .line 780
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 781
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->userId_:J

    .line 782
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 783
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->clone()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->clone()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->clone()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->clone()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->clone()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 2

    .prologue
    .line 534
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->create()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

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
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->clone()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 978
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->categoryId_:I

    return v0
.end method

.method public getConfigId()J
    .locals 2

    .prologue
    .line 792
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configId_:J

    return-wide v0
.end method

.method public getConfigIntro()Ljava/lang/String;
    .locals 3

    .prologue
    .line 921
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 922
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 923
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 927
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

.method public getConfigName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 849
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configName_:Ljava/lang/Object;

    .line 850
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 851
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 852
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configName_:Ljava/lang/Object;

    .line 855
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

.method public getConfigParams()Ljava/lang/String;
    .locals 3

    .prologue
    .line 885
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configParams_:Ljava/lang/Object;

    .line 886
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 887
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 888
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configParams_:Ljava/lang/Object;

    .line 891
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
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 1

    .prologue
    .line 543
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 539
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getRefConfigId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 813
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->refConfigId_:Ljava/lang/Object;

    .line 814
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 815
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 816
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->refConfigId_:Ljava/lang/Object;

    .line 819
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
    .line 999
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->status_:I

    return v0
.end method

.method public getUpdateTime()I
    .locals 1

    .prologue
    .line 957
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->updateTime_:I

    return v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 771
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->userId_:J

    return-wide v0
.end method

.method public hasCategoryId()Z
    .locals 2

    .prologue
    .line 975
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

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

.method public hasConfigId()Z
    .locals 2

    .prologue
    .line 789
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

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

.method public hasConfigIntro()Z
    .locals 2

    .prologue
    .line 918
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

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

.method public hasConfigName()Z
    .locals 2

    .prologue
    .line 846
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

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

.method public hasConfigParams()Z
    .locals 2

    .prologue
    .line 882
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

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

.method public hasRefConfigId()Z
    .locals 2

    .prologue
    .line 810
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 996
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

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

.method public hasUpdateTime()Z
    .locals 2

    .prologue
    .line 954
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 768
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

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
    .line 490
    # getter for: Lcom/oppo/tribune/protobuf/UserConfigProto;->internal_static_protobuf_pb_user_config_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 652
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->hasUserId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return v0

    .line 656
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->hasConfigId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->hasRefConfigId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->hasConfigName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->hasConfigParams()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->hasConfigIntro()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->hasUpdateTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->hasCategoryId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
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
    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

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
    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

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
    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

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
    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 699
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 700
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 706
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 708
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 709
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 710
    :goto_1
    return-object p0

    .line 702
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    goto :goto_1

    .line 715
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 716
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->userId_:J

    goto :goto_0

    .line 720
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 721
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configId_:J

    goto :goto_0

    .line 725
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 726
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->refConfigId_:Ljava/lang/Object;

    goto :goto_0

    .line 730
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 731
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configName_:Ljava/lang/Object;

    goto :goto_0

    .line 735
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 736
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configParams_:Ljava/lang/Object;

    goto :goto_0

    .line 740
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 741
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configIntro_:Ljava/lang/Object;

    goto :goto_0

    .line 745
    :sswitch_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 746
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->updateTime_:I

    goto :goto_0

    .line 750
    :sswitch_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 751
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->categoryId_:I

    goto/16 :goto_0

    .line 755
    :sswitch_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 756
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->status_:I

    goto/16 :goto_0

    .line 700
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 610
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    if-eqz v0, :cond_0

    .line 611
    check-cast p1, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object p0

    .line 614
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    :goto_0
    return-object p0

    .line 613
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    .prologue
    .line 619
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 648
    :goto_0
    return-object p0

    .line 620
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->setUserId(J)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    .line 623
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasConfigId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getConfigId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->setConfigId(J)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    .line 626
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasRefConfigId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 627
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getRefConfigId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->setRefConfigId(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    .line 629
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasConfigName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 630
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->setConfigName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    .line 632
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasConfigParams()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 633
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getConfigParams()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->setConfigParams(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    .line 635
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasConfigIntro()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 636
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getConfigIntro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->setConfigIntro(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    .line 638
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasUpdateTime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 639
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getUpdateTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->setUpdateTime(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    .line 641
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasCategoryId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 642
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getCategoryId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->setCategoryId(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    .line 644
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 645
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->setStatus(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    .line 647
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setCategoryId(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 981
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 982
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->categoryId_:I

    .line 983
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 984
    return-object p0
.end method

.method public setConfigId(J)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 795
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 796
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configId_:J

    .line 797
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 798
    return-object p0
.end method

.method public setConfigIntro(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 931
    if-nez p1, :cond_0

    .line 932
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 934
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 935
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 936
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 937
    return-object p0
.end method

.method setConfigIntro(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 946
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 947
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 948
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 949
    return-void
.end method

.method public setConfigName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 859
    if-nez p1, :cond_0

    .line 860
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 862
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 863
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configName_:Ljava/lang/Object;

    .line 864
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 865
    return-object p0
.end method

.method setConfigName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 874
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 875
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configName_:Ljava/lang/Object;

    .line 876
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 877
    return-void
.end method

.method public setConfigParams(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
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
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 899
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configParams_:Ljava/lang/Object;

    .line 900
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 901
    return-object p0
.end method

.method setConfigParams(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 910
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 911
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->configParams_:Ljava/lang/Object;

    .line 912
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 913
    return-void
.end method

.method public setRefConfigId(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 823
    if-nez p1, :cond_0

    .line 824
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 826
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 827
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->refConfigId_:Ljava/lang/Object;

    .line 828
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 829
    return-object p0
.end method

.method setRefConfigId(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 838
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 839
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->refConfigId_:Ljava/lang/Object;

    .line 840
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 841
    return-void
.end method

.method public setStatus(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1002
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 1003
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->status_:I

    .line 1004
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 1005
    return-object p0
.end method

.method public setUpdateTime(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 960
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 961
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->updateTime_:I

    .line 962
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 963
    return-object p0
.end method

.method public setUserId(J)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 774
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->bitField0_:I

    .line 775
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->userId_:J

    .line 776
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->onChanged()V

    .line 777
    return-object p0
.end method
