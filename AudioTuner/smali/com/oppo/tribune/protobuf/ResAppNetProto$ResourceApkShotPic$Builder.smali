.class public final Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ResAppNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPicOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPicOrBuilder;"
    }
.end annotation


# instance fields
.field private big_:Ljava/lang/Object;

.field private bitField0_:I

.field private middle_:Ljava/lang/Object;

.field private small_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 503
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->small_:Ljava/lang/Object;

    .line 545
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->middle_:Ljava/lang/Object;

    .line 587
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->big_:Ljava/lang/Object;

    .line 346
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->maybeForceBuilderInitialization()V

    .line 347
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 503
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->small_:Ljava/lang/Object;

    .line 545
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->middle_:Ljava/lang/Object;

    .line 587
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->big_:Ljava/lang/Object;

    .line 351
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->maybeForceBuilderInitialization()V

    .line 352
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResAppNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$1;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    .line 399
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 403
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 336
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto;->internal_static_protobuf_ResourceApkShotPic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 355
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    .line 390
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 393
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 5

    .prologue
    .line 407
    new-instance v1, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;-><init>(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;Lcom/oppo/tribune/protobuf/ResAppNetProto$1;)V

    .line 409
    .local v1, "result":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 410
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 411
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 412
    or-int/lit8 v2, v2, 0x1

    .line 414
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->small_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->small_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->access$702(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 416
    or-int/lit8 v2, v2, 0x2

    .line 418
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->middle_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->middle_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->access$802(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 420
    or-int/lit8 v2, v2, 0x4

    .line 422
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->big_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->big_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->access$902(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->access$1002(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;I)I

    .line 424
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->onBuilt()V

    .line 425
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 365
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->small_:Ljava/lang/Object;

    .line 366
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 367
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->middle_:Ljava/lang/Object;

    .line 368
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 369
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->big_:Ljava/lang/Object;

    .line 370
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 371
    return-object p0
.end method

.method public clearBig()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 617
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getBig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->big_:Ljava/lang/Object;

    .line 618
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->onChanged()V

    .line 619
    return-object p0
.end method

.method public clearMiddle()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 575
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getMiddle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->middle_:Ljava/lang/Object;

    .line 576
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->onChanged()V

    .line 577
    return-object p0
.end method

.method public clearSmall()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 533
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getSmall()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->small_:Ljava/lang/Object;

    .line 534
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->onChanged()V

    .line 535
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 2

    .prologue
    .line 375
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

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
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBig()Ljava/lang/String;
    .locals 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->big_:Ljava/lang/Object;

    .line 595
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 596
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->big_:Ljava/lang/Object;

    .line 601
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
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 1

    .prologue
    .line 384
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 379
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMiddle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->middle_:Ljava/lang/Object;

    .line 553
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 554
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->middle_:Ljava/lang/Object;

    .line 559
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

.method public getSmall()Ljava/lang/String;
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->small_:Ljava/lang/Object;

    .line 511
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 512
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->small_:Ljava/lang/Object;

    .line 517
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

.method public hasBig()Z
    .locals 2

    .prologue
    .line 590
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

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

.method public hasMiddle()Z
    .locals 2

    .prologue
    .line 548
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

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

.method public hasSmall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 506
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

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
    .line 340
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto;->internal_static_protobuf_ResourceApkShotPic_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 456
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
    .line 331
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

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
    .line 331
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

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
    .line 331
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

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
    .line 331
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 466
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 467
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 473
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 475
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 476
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->onChanged()V

    .line 477
    :goto_1
    return-object p0

    .line 469
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 470
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->onChanged()V

    goto :goto_1

    .line 482
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 483
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->small_:Ljava/lang/Object;

    goto :goto_0

    .line 487
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 488
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->middle_:Ljava/lang/Object;

    goto :goto_0

    .line 492
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 493
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->big_:Ljava/lang/Object;

    goto :goto_0

    .line 467
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 429
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    if-eqz v0, :cond_0

    .line 430
    check-cast p1, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object p0

    .line 433
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    :goto_0
    return-object p0

    .line 432
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    .prologue
    .line 439
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 452
    :goto_0
    return-object p0

    .line 442
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->hasSmall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getSmall()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->setSmall(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    .line 445
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->hasMiddle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getMiddle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->setMiddle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    .line 448
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->hasBig()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getBig()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->setBig(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    .line 451
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setBig(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 606
    if-nez p1, :cond_0

    .line 607
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 609
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 610
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->big_:Ljava/lang/Object;

    .line 611
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->onChanged()V

    .line 612
    return-object p0
.end method

.method setBig(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 623
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 624
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->big_:Ljava/lang/Object;

    .line 625
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->onChanged()V

    .line 626
    return-void
.end method

.method public setMiddle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 564
    if-nez p1, :cond_0

    .line 565
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 567
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 568
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->middle_:Ljava/lang/Object;

    .line 569
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->onChanged()V

    .line 570
    return-object p0
.end method

.method setMiddle(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 581
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 582
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->middle_:Ljava/lang/Object;

    .line 583
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->onChanged()V

    .line 584
    return-void
.end method

.method public setSmall(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 522
    if-nez p1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 525
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 526
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->small_:Ljava/lang/Object;

    .line 527
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->onChanged()V

    .line 528
    return-object p0
.end method

.method setSmall(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 539
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->bitField0_:I

    .line 540
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->small_:Ljava/lang/Object;

    .line 541
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->onChanged()V

    .line 542
    return-void
.end method
