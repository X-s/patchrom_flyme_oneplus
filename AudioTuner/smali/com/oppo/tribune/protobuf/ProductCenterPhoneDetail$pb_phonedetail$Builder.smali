.class public final Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ProductCenterPhoneDetail.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetailOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetailOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private fid_:I

.field private id_:I

.field private isnew_:I

.field private name_:Ljava/lang/Object;

.field private pictures_:Lcom/google/protobuf/LazyStringList;

.field private serial_:I

.field private smallpic_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 743
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->name_:Ljava/lang/Object;

    .line 785
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->smallpic_:Ljava/lang/Object;

    .line 902
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->description_:Ljava/lang/Object;

    .line 944
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    .line 482
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->maybeForceBuilderInitialization()V

    .line 483
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 743
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->name_:Ljava/lang/Object;

    .line 785
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->smallpic_:Ljava/lang/Object;

    .line 902
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->description_:Ljava/lang/Object;

    .line 944
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    .line 487
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->maybeForceBuilderInitialization()V

    .line 488
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$1;

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1

    .prologue
    .line 467
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->create()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    .line 545
    .local v0, "result":Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 546
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 549
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1

    .prologue
    .line 496
    new-instance v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePicturesIsMutable()V
    .locals 2

    .prologue
    .line 947
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 948
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    .line 950
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 952
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 472
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail;->internal_static_pb_phonedetail_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 491
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllPictures(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;"
        }
    .end annotation

    .prologue
    .line 987
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->ensurePicturesIsMutable()V

    .line 988
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 989
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 990
    return-object p0
.end method

.method public addPictures(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 977
    if-nez p1, :cond_0

    .line 978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 980
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->ensurePicturesIsMutable()V

    .line 981
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 982
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 983
    return-object p0
.end method

.method addPictures(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1001
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->ensurePicturesIsMutable()V

    .line 1002
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 1003
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 1004
    return-void
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->build()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->build()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 2

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    .line 536
    .local v0, "result":Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 537
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 539
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 5

    .prologue
    .line 553
    new-instance v1, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;-><init>(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$1;)V

    .line 555
    .local v1, "result":Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 556
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 557
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 558
    or-int/lit8 v2, v2, 0x1

    .line 560
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->id_:I

    # setter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->id_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->access$702(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;I)I

    .line 561
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 562
    or-int/lit8 v2, v2, 0x2

    .line 564
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->access$802(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 566
    or-int/lit8 v2, v2, 0x4

    .line 568
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->smallpic_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->smallpic_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->access$902(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 570
    or-int/lit8 v2, v2, 0x8

    .line 572
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->serial_:I

    # setter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->serial_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->access$1002(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;I)I

    .line 573
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 574
    or-int/lit8 v2, v2, 0x10

    .line 576
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->fid_:I

    # setter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->fid_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->access$1102(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;I)I

    .line 577
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 578
    or-int/lit8 v2, v2, 0x20

    .line 580
    :cond_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->isnew_:I

    # setter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->isnew_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->access$1202(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;I)I

    .line 581
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 582
    or-int/lit8 v2, v2, 0x40

    .line 584
    :cond_6
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->description_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->access$1302(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 586
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    .line 588
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 590
    :cond_7
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    # setter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->pictures_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->access$1402(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 591
    # setter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->access$1502(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;I)I

    .line 592
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onBuilt()V

    .line 593
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->clear()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->clear()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->clear()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->clear()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 500
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 501
    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->id_:I

    .line 502
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 503
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->name_:Ljava/lang/Object;

    .line 504
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 505
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->smallpic_:Ljava/lang/Object;

    .line 506
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 507
    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->serial_:I

    .line 508
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 509
    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->fid_:I

    .line 510
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 511
    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->isnew_:I

    .line 512
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 513
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->description_:Ljava/lang/Object;

    .line 514
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 515
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    .line 516
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 517
    return-object p0
.end method

.method public clearDescription()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1

    .prologue
    .line 931
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 932
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->description_:Ljava/lang/Object;

    .line 933
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 934
    return-object p0
.end method

.method public clearFid()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1

    .prologue
    .line 870
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 871
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->fid_:I

    .line 872
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 873
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 737
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->id_:I

    .line 738
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 739
    return-object p0
.end method

.method public clearIsnew()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1

    .prologue
    .line 895
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 896
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->isnew_:I

    .line 897
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 898
    return-object p0
.end method

.method public clearName()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 773
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->name_:Ljava/lang/Object;

    .line 774
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 775
    return-object p0
.end method

.method public clearPictures()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1

    .prologue
    .line 994
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    .line 995
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 996
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 997
    return-object p0
.end method

.method public clearSerial()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1

    .prologue
    .line 845
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 846
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->serial_:I

    .line 847
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 848
    return-object p0
.end method

.method public clearSmallpic()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 815
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getSmallpic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->smallpic_:Ljava/lang/Object;

    .line 816
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 817
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->clone()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->clone()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->clone()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->clone()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->clone()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 2

    .prologue
    .line 521
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->create()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

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
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->clone()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 1

    .prologue
    .line 530
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 909
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->description_:Ljava/lang/Object;

    .line 910
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 911
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 913
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->description_:Ljava/lang/Object;

    .line 916
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
    .line 525
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFid()I
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->fid_:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 725
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->id_:I

    return v0
.end method

.method public getIsnew()I
    .locals 1

    .prologue
    .line 884
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->isnew_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 750
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->name_:Ljava/lang/Object;

    .line 751
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 752
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->name_:Ljava/lang/Object;

    .line 757
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

.method public getPictures(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 963
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPicturesCount()I
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getPicturesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 955
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSerial()I
    .locals 1

    .prologue
    .line 834
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->serial_:I

    return v0
.end method

.method public getSmallpic()Ljava/lang/String;
    .locals 3

    .prologue
    .line 792
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->smallpic_:Ljava/lang/Object;

    .line 793
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 794
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->smallpic_:Ljava/lang/Object;

    .line 799
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

.method public hasDescription()Z
    .locals 2

    .prologue
    .line 905
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

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

.method public hasFid()Z
    .locals 2

    .prologue
    .line 855
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

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

    .line 721
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsnew()Z
    .locals 2

    .prologue
    .line 880
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 746
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

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

.method public hasSerial()Z
    .locals 2

    .prologue
    .line 830
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

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

.method public hasSmallpic()Z
    .locals 2

    .prologue
    .line 788
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

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
    .line 476
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail;->internal_static_pb_phonedetail_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 646
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
    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

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
    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

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
    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

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
    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 656
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 657
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 663
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 665
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 666
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 667
    :goto_1
    return-object p0

    .line 659
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 660
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    goto :goto_1

    .line 672
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 673
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->id_:I

    goto :goto_0

    .line 677
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 678
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 682
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 683
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->smallpic_:Ljava/lang/Object;

    goto :goto_0

    .line 687
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 688
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->serial_:I

    goto :goto_0

    .line 692
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 693
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->fid_:I

    goto :goto_0

    .line 697
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 698
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->isnew_:I

    goto :goto_0

    .line 702
    :sswitch_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 703
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 707
    :sswitch_8
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->ensurePicturesIsMutable()V

    .line 708
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 657
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 597
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    if-eqz v0, :cond_0

    .line 598
    check-cast p1, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object p0

    .line 601
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    :goto_0
    return-object p0

    .line 600
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    .prologue
    .line 607
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 642
    :goto_0
    return-object p0

    .line 610
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->setId(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    .line 613
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    .line 616
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->hasSmallpic()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getSmallpic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->setSmallpic(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    .line 619
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->hasSerial()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 620
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getSerial()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->setSerial(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    .line 622
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->hasFid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 623
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getFid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->setFid(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    .line 625
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->hasIsnew()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 626
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getIsnew()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->setIsnew(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    .line 628
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 629
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->setDescription(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    .line 631
    :cond_7
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->pictures_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->access$1400(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 632
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 633
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->pictures_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->access$1400(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    .line 634
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 639
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 641
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 636
    :cond_9
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->ensurePicturesIsMutable()V

    .line 637
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->pictures_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->access$1400(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setDescription(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 921
    if-nez p1, :cond_0

    .line 922
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 924
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 925
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->description_:Ljava/lang/Object;

    .line 926
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 927
    return-object p0
.end method

.method setDescription(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 938
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 939
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->description_:Ljava/lang/Object;

    .line 940
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 941
    return-void
.end method

.method public setFid(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 863
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 864
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->fid_:I

    .line 865
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 866
    return-object p0
.end method

.method public setId(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 729
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 730
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->id_:I

    .line 731
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 732
    return-object p0
.end method

.method public setIsnew(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 888
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 889
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->isnew_:I

    .line 890
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 891
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 762
    if-nez p1, :cond_0

    .line 763
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 765
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 766
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->name_:Ljava/lang/Object;

    .line 767
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 768
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 779
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 780
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->name_:Ljava/lang/Object;

    .line 781
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 782
    return-void
.end method

.method public setPictures(ILjava/lang/String;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 967
    if-nez p2, :cond_0

    .line 968
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 970
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->ensurePicturesIsMutable()V

    .line 971
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 972
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 973
    return-object p0
.end method

.method public setSerial(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 838
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 839
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->serial_:I

    .line 840
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 841
    return-object p0
.end method

.method public setSmallpic(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 804
    if-nez p1, :cond_0

    .line 805
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 807
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 808
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->smallpic_:Ljava/lang/Object;

    .line 809
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 810
    return-object p0
.end method

.method setSmallpic(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 821
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->bitField0_:I

    .line 822
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->smallpic_:Ljava/lang/Object;

    .line 823
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->onChanged()V

    .line 824
    return-void
.end method
