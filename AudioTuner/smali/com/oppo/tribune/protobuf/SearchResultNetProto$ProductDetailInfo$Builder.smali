.class public final Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SearchResultNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private comment_:Ljava/lang/Object;

.field private favorite_:I

.field private fsUrl_:Ljava/lang/Object;

.field private productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

.field private rating_:D


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8235
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 8436
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .line 8535
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->comment_:Ljava/lang/Object;

    .line 8627
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->fsUrl_:Ljava/lang/Object;

    .line 8236
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->maybeForceBuilderInitialization()V

    .line 8237
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 8240
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 8436
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .line 8535
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->comment_:Ljava/lang/Object;

    .line 8627
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->fsUrl_:Ljava/lang/Object;

    .line 8241
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->maybeForceBuilderInitialization()V

    .line 8242
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;

    .prologue
    .line 8221
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8221
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10400()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1

    .prologue
    .line 8221
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->create()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8298
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    .line 8299
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8300
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 8303
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1

    .prologue
    .line 8251
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8226
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_ProductDetailInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$10100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getProductFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8526
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8527
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 8529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .line 8531
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 8245
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->access$10600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8246
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->getProductFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 8248
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 2

    .prologue
    .line 8289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    .line 8290
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8291
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8293
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 6

    .prologue
    .line 8307
    new-instance v1, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;-><init>(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;)V

    .line 8309
    .local v1, "result":Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8310
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 8311
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8312
    or-int/lit8 v2, v2, 0x1

    .line 8314
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_5

    .line 8315
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->access$10802(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .line 8319
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8320
    or-int/lit8 v2, v2, 0x2

    .line 8322
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->comment_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->comment_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->access$10902(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8323
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 8324
    or-int/lit8 v2, v2, 0x4

    .line 8326
    :cond_2
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->rating_:D

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->rating_:D
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->access$11002(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;D)D

    .line 8327
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 8328
    or-int/lit8 v2, v2, 0x8

    .line 8330
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->favorite_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->favorite_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->access$11102(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;I)I

    .line 8331
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 8332
    or-int/lit8 v2, v2, 0x10

    .line 8334
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->fsUrl_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->fsUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->access$11202(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8335
    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->access$11302(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;I)I

    .line 8336
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onBuilt()V

    .line 8337
    return-object v1

    .line 8317
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->access$10802(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 2

    .prologue
    .line 8255
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 8256
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8257
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .line 8262
    :goto_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8263
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->comment_:Ljava/lang/Object;

    .line 8264
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8265
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->rating_:D

    .line 8266
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8267
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->favorite_:I

    .line 8268
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8269
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->fsUrl_:Ljava/lang/Object;

    .line 8270
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8271
    return-object p0

    .line 8260
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearComment()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1

    .prologue
    .line 8564
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8565
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->comment_:Ljava/lang/Object;

    .line 8566
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8567
    return-object p0
.end method

.method public clearFavorite()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1

    .prologue
    .line 8620
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8621
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->favorite_:I

    .line 8622
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8623
    return-object p0
.end method

.method public clearFsUrl()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1

    .prologue
    .line 8656
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8657
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getFsUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->fsUrl_:Ljava/lang/Object;

    .line 8658
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8659
    return-object p0
.end method

.method public clearProduct()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1

    .prologue
    .line 8500
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8501
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .line 8503
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8507
    :goto_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8508
    return-object p0

    .line 8505
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearRating()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 2

    .prologue
    .line 8595
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8596
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->rating_:D

    .line 8597
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8598
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 2

    .prologue
    .line 8275
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->create()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

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
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8542
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->comment_:Ljava/lang/Object;

    .line 8543
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 8544
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8546
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->comment_:Ljava/lang/Object;

    .line 8549
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
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8221
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 1

    .prologue
    .line 8284
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8279
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFavorite()I
    .locals 1

    .prologue
    .line 8609
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->favorite_:I

    return v0
.end method

.method public getFsUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8634
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->fsUrl_:Ljava/lang/Object;

    .line 8635
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 8636
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8638
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->fsUrl_:Ljava/lang/Object;

    .line 8641
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

.method public getProduct()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
    .locals 1

    .prologue
    .line 8445
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8446
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .line 8448
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    goto :goto_0
.end method

.method public getProductBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 8512
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8513
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8514
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->getProductFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    return-object v0
.end method

.method public getProductOrBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;
    .locals 1

    .prologue
    .line 8518
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 8519
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;

    .line 8521
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    goto :goto_0
.end method

.method public getRating()D
    .locals 2

    .prologue
    .line 8584
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->rating_:D

    return-wide v0
.end method

.method public hasComment()Z
    .locals 2

    .prologue
    .line 8538
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

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

.method public hasFavorite()Z
    .locals 2

    .prologue
    .line 8605
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

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

.method public hasFsUrl()Z
    .locals 2

    .prologue
    .line 8630
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

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

.method public hasProduct()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8441
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRating()Z
    .locals 2

    .prologue
    .line 8580
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

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
    .line 8230
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_ProductDetailInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$10200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8374
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
    .line 8221
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 8221
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

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
    .line 8221
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

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
    .line 8221
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 8221
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

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
    .line 8221
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8381
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 8384
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 8385
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 8391
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8393
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 8394
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8395
    :goto_1
    return-object p0

    .line 8387
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 8388
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    goto :goto_1

    .line 8400
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    .line 8402
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->hasProduct()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8403
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->getProduct()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 8405
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8406
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->setProduct(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    goto :goto_0

    .line 8410
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8411
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->comment_:Ljava/lang/Object;

    goto :goto_0

    .line 8415
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8416
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->rating_:D

    goto :goto_0

    .line 8420
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8421
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->favorite_:I

    goto :goto_0

    .line 8425
    :sswitch_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8426
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->fsUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 8385
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x19 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 8341
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    if-eqz v0, :cond_0

    .line 8342
    check-cast p1, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object p0

    .line 8345
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    :goto_0
    return-object p0

    .line 8344
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    .prologue
    .line 8351
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 8370
    :goto_0
    return-object p0

    .line 8354
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->hasProduct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8355
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getProduct()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeProduct(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    .line 8357
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8358
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->setComment(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    .line 8360
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->hasRating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8361
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getRating()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->setRating(D)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    .line 8363
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->hasFavorite()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8364
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getFavorite()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->setFavorite(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    .line 8366
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->hasFsUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8367
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getFsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->setFsUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    .line 8369
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeProduct(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 2
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .prologue
    .line 8481
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 8482
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8485
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->newBuilder(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .line 8491
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8495
    :goto_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8496
    return-object p0

    .line 8489
    :cond_0
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    goto :goto_0

    .line 8493
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setComment(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8554
    if-nez p1, :cond_0

    .line 8555
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8557
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8558
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->comment_:Ljava/lang/Object;

    .line 8559
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8560
    return-object p0
.end method

.method setComment(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 8571
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8572
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->comment_:Ljava/lang/Object;

    .line 8573
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8574
    return-void
.end method

.method public setFavorite(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8613
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8614
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->favorite_:I

    .line 8615
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8616
    return-object p0
.end method

.method public setFsUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8646
    if-nez p1, :cond_0

    .line 8647
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8649
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8650
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->fsUrl_:Ljava/lang/Object;

    .line 8651
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8652
    return-object p0
.end method

.method setFsUrl(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 8663
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8664
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->fsUrl_:Ljava/lang/Object;

    .line 8665
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8666
    return-void
.end method

.method public setProduct(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .prologue
    .line 8469
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8470
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .line 8471
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8475
    :goto_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8476
    return-object p0

    .line 8473
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setProduct(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .prologue
    .line 8454
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 8455
    if-nez p1, :cond_0

    .line 8456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8458
    :cond_0
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .line 8459
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8463
    :goto_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8464
    return-object p0

    .line 8461
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->productBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setRating(D)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 8588
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->bitField0_:I

    .line 8589
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->rating_:D

    .line 8590
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->onChanged()V

    .line 8591
    return-object p0
.end method
