.class public final Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SearchDownloadProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private imei_:Ljava/lang/Object;

.field private keyword_:Ljava/lang/Object;

.field private positions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private productIds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sourceCode_:Ljava/lang/Object;

.field private source_:I

.field private userAgent_:Ljava/lang/Object;

.field private userId_:I

.field private userToken_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2295
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2600
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2642
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2684
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    .line 2738
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    .line 2792
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userAgent_:Ljava/lang/Object;

    .line 2834
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2901
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 2296
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->maybeForceBuilderInitialization()V

    .line 2297
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2300
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2600
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2642
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2684
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    .line 2738
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    .line 2792
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userAgent_:Ljava/lang/Object;

    .line 2834
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2901
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 2301
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->maybeForceBuilderInitialization()V

    .line 2302
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;

    .prologue
    .line 2281
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2281
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1

    .prologue
    .line 2281
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->create()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2362
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    .line 2363
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2364
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2367
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1

    .prologue
    .line 2310
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePositionsIsMutable()V
    .locals 2

    .prologue
    .line 2742
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 2743
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    .line 2745
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2747
    :cond_0
    return-void
.end method

.method private ensureProductIdsIsMutable()V
    .locals 2

    .prologue
    .line 2688
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2689
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    .line 2691
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2693
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2286
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$2700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2305
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$3200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2307
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllPositions(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 2777
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->ensurePositionsIsMutable()V

    .line 2778
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2779
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2780
    return-object p0
.end method

.method public addAllProductIds(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 2723
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->ensureProductIdsIsMutable()V

    .line 2724
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2725
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2726
    return-object p0
.end method

.method public addPositions(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2769
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->ensurePositionsIsMutable()V

    .line 2770
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2771
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2772
    return-object p0
.end method

.method public addProductIds(J)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 2715
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->ensureProductIdsIsMutable()V

    .line 2716
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2718
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->build()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->build()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 2

    .prologue
    .line 2353
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    .line 2354
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2355
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2357
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 5

    .prologue
    .line 2371
    new-instance v1, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;-><init>(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;)V

    .line 2373
    .local v1, "result":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2374
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 2375
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2376
    or-int/lit8 v2, v2, 0x1

    .line 2378
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userId_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userId_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$3402(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;I)I

    .line 2379
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2380
    or-int/lit8 v2, v2, 0x2

    .line 2382
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->imei_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->imei_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$3502(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2383
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2384
    or-int/lit8 v2, v2, 0x4

    .line 2386
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->sourceCode_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->sourceCode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$3602(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2387
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2388
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    .line 2390
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2392
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->productIds_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$3702(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;Ljava/util/List;)Ljava/util/List;

    .line 2393
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2394
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    .line 2396
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2398
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->positions_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$3802(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;Ljava/util/List;)Ljava/util/List;

    .line 2399
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 2400
    or-int/lit8 v2, v2, 0x8

    .line 2402
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userAgent_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userAgent_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$3902(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2403
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 2404
    or-int/lit8 v2, v2, 0x10

    .line 2406
    :cond_6
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userToken_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$4002(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2407
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 2408
    or-int/lit8 v2, v2, 0x20

    .line 2410
    :cond_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->source_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->source_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$4102(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;I)I

    .line 2411
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 2412
    or-int/lit8 v2, v2, 0x40

    .line 2414
    :cond_8
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->keyword_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->keyword_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$4202(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$4302(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;I)I

    .line 2416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onBuilt()V

    .line 2417
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2314
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2315
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userId_:I

    .line 2316
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2317
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2318
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2319
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2320
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2321
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    .line 2323
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2324
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    .line 2326
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2327
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userAgent_:Ljava/lang/Object;

    .line 2328
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2329
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2330
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2331
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->source_:I

    .line 2332
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2333
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 2334
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2335
    return-object p0
.end method

.method public clearImei()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1

    .prologue
    .line 2629
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2630
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2631
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2632
    return-object p0
.end method

.method public clearKeyword()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1

    .prologue
    .line 2930
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2931
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getKeyword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 2932
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2933
    return-object p0
.end method

.method public clearPositions()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1

    .prologue
    .line 2784
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    .line 2786
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2787
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2788
    return-object p0
.end method

.method public clearProductIds()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1

    .prologue
    .line 2730
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    .line 2732
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2733
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2734
    return-object p0
.end method

.method public clearSource()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1

    .prologue
    .line 2894
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2895
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->source_:I

    .line 2896
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2897
    return-object p0
.end method

.method public clearSourceCode()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1

    .prologue
    .line 2671
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2672
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getSourceCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2673
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2674
    return-object p0
.end method

.method public clearUserAgent()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1

    .prologue
    .line 2821
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2822
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userAgent_:Ljava/lang/Object;

    .line 2823
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2824
    return-object p0
.end method

.method public clearUserId()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1

    .prologue
    .line 2593
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2594
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userId_:I

    .line 2595
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2596
    return-object p0
.end method

.method public clearUserToken()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1

    .prologue
    .line 2863
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2864
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getUserToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2865
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2866
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 2

    .prologue
    .line 2339
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->create()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

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
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 1

    .prologue
    .line 2348
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2343
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2608
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2609
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2611
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2614
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

.method public getKeyword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2908
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 2909
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2910
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2912
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 2915
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

.method public getPositions(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPositionsCount()I
    .locals 1

    .prologue
    .line 2754
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPositionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2750
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProductIds(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2704
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProductIdsCount()I
    .locals 1

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getProductIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 2883
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->source_:I

    return v0
.end method

.method public getSourceCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2650
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2651
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2653
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2656
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

.method public getUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userAgent_:Ljava/lang/Object;

    .line 2800
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2801
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2803
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userAgent_:Ljava/lang/Object;

    .line 2806
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

.method public getUserId()I
    .locals 1

    .prologue
    .line 2582
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userId_:I

    return v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2841
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2842
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2843
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2845
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2848
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

.method public hasImei()Z
    .locals 2

    .prologue
    .line 2603
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

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

.method public hasKeyword()Z
    .locals 2

    .prologue
    .line 2904
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

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

.method public hasSource()Z
    .locals 2

    .prologue
    .line 2879
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

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

.method public hasSourceCode()Z
    .locals 2

    .prologue
    .line 2645
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

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

.method public hasUserAgent()Z
    .locals 2

    .prologue
    .line 2795
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2578
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserToken()Z
    .locals 2

    .prologue
    .line 2837
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

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
    .line 2290
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$2800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2480
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
    .line 2281
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2281
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

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
    .line 2281
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

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
    .line 2281
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2281
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

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
    .line 2281
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2487
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 2490
    .local v3, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 2491
    .local v2, "tag":I
    sparse-switch v2, :sswitch_data_0

    .line 2497
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2499
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2500
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2501
    :goto_1
    return-object p0

    .line 2493
    :sswitch_0
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2494
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    goto :goto_1

    .line 2506
    :sswitch_1
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2507
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userId_:I

    goto :goto_0

    .line 2511
    :sswitch_2
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2512
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->imei_:Ljava/lang/Object;

    goto :goto_0

    .line 2516
    :sswitch_3
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2517
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->sourceCode_:Ljava/lang/Object;

    goto :goto_0

    .line 2521
    :sswitch_4
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->ensureProductIdsIsMutable()V

    .line 2522
    iget-object v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2526
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 2527
    .local v0, "length":I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 2528
    .local v1, "limit":I
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_1

    .line 2529
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->addProductIds(J)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    goto :goto_2

    .line 2531
    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 2535
    .end local v0    # "length":I
    .end local v1    # "limit":I
    :sswitch_6
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->ensurePositionsIsMutable()V

    .line 2536
    iget-object v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2540
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 2541
    .restart local v0    # "length":I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 2542
    .restart local v1    # "limit":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_2

    .line 2543
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->addPositions(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    goto :goto_3

    .line 2545
    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 2549
    .end local v0    # "length":I
    .end local v1    # "limit":I
    :sswitch_8
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2550
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userAgent_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2554
    :sswitch_9
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2555
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userToken_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2559
    :sswitch_a
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2560
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->source_:I

    goto/16 :goto_0

    .line 2564
    :sswitch_b
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2565
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->keyword_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2491
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x28 -> :sswitch_6
        0x2a -> :sswitch_7
        0x32 -> :sswitch_8
        0x3a -> :sswitch_9
        0x40 -> :sswitch_a
        0x4a -> :sswitch_b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2421
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    if-eqz v0, :cond_0

    .line 2422
    check-cast p1, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object p0

    .line 2425
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    :goto_0
    return-object p0

    .line 2424
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    .prologue
    .line 2431
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2476
    :goto_0
    return-object p0

    .line 2434
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2435
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->setUserId(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    .line 2437
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->hasImei()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2438
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->setImei(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    .line 2440
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->hasSourceCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2441
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getSourceCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->setSourceCode(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    .line 2443
    :cond_3
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->productIds_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$3700(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2444
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2445
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->productIds_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$3700(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    .line 2446
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2451
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2453
    :cond_4
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->positions_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$3800(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2454
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2455
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->positions_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$3800(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    .line 2456
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2461
    :goto_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2463
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->hasUserAgent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2464
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->setUserAgent(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    .line 2466
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->hasUserToken()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2467
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getUserToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->setUserToken(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    .line 2469
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2470
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->setSource(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    .line 2472
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->hasKeyword()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2473
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->setKeyword(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    .line 2475
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 2448
    :cond_a
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->ensureProductIdsIsMutable()V

    .line 2449
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->productIds_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$3700(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2458
    :cond_b
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->ensurePositionsIsMutable()V

    .line 2459
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->positions_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->access$3800(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public setImei(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2619
    if-nez p1, :cond_0

    .line 2620
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2622
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2623
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2625
    return-object p0
.end method

.method setImei(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2636
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2637
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2638
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2639
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2920
    if-nez p1, :cond_0

    .line 2921
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2923
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2924
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 2925
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2926
    return-object p0
.end method

.method setKeyword(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2937
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2938
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 2939
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2940
    return-void
.end method

.method public setPositions(II)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 2762
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->ensurePositionsIsMutable()V

    .line 2763
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->positions_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2764
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2765
    return-object p0
.end method

.method public setProductIds(IJ)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->ensureProductIdsIsMutable()V

    .line 2709
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->productIds_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2710
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2711
    return-object p0
.end method

.method public setSource(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2887
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2888
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->source_:I

    .line 2889
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2890
    return-object p0
.end method

.method public setSourceCode(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2661
    if-nez p1, :cond_0

    .line 2662
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2664
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2665
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2666
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2667
    return-object p0
.end method

.method setSourceCode(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2678
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2679
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2680
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2681
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2811
    if-nez p1, :cond_0

    .line 2812
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2814
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2815
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userAgent_:Ljava/lang/Object;

    .line 2816
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2817
    return-object p0
.end method

.method setUserAgent(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2828
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2829
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userAgent_:Ljava/lang/Object;

    .line 2830
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2831
    return-void
.end method

.method public setUserId(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2586
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2587
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userId_:I

    .line 2588
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2589
    return-object p0
.end method

.method public setUserToken(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2853
    if-nez p1, :cond_0

    .line 2854
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2856
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2857
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2858
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2859
    return-object p0
.end method

.method setUserToken(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2870
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->bitField0_:I

    .line 2871
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2872
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->onChanged()V

    .line 2873
    return-void
.end method
