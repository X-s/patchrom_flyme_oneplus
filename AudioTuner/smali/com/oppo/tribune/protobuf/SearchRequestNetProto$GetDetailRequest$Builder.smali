.class public final Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SearchRequestNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private compress_:I

.field private imei_:Ljava/lang/Object;

.field private mobile_:Ljava/lang/Object;

.field private os_:I

.field private position_:I

.field private productId_:I

.field private resType_:I

.field private sourceCode_:Ljava/lang/Object;

.field private source_:I

.field private themeOs_:I

.field private userId_:I

.field private userToken_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2152
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2486
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2528
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2695
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 2737
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2153
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->maybeForceBuilderInitialization()V

    .line 2154
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2157
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2486
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2528
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2695
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 2737
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2158
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->maybeForceBuilderInitialization()V

    .line 2159
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SearchRequestNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$1;

    .prologue
    .line 2138
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2138
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2138
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->create()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2223
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    .line 2224
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2225
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2228
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2167
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2143
    # getter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetDetailRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->access$2500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2162
    # getter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->access$3000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2164
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->build()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->build()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 2

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    .line 2215
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2216
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2218
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 5

    .prologue
    .line 2232
    new-instance v1, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;-><init>(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;Lcom/oppo/tribune/protobuf/SearchRequestNetProto$1;)V

    .line 2234
    .local v1, "result":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2235
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 2236
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2237
    or-int/lit8 v2, v2, 0x1

    .line 2239
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userId_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->userId_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->access$3202(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I

    .line 2240
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2241
    or-int/lit8 v2, v2, 0x2

    .line 2243
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->productId_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->productId_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->access$3302(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I

    .line 2244
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2245
    or-int/lit8 v2, v2, 0x4

    .line 2247
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->imei_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->imei_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->access$3402(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2248
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2249
    or-int/lit8 v2, v2, 0x8

    .line 2251
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->sourceCode_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->sourceCode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->access$3502(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2253
    or-int/lit8 v2, v2, 0x10

    .line 2255
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->position_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->position_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->access$3602(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I

    .line 2256
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 2257
    or-int/lit8 v2, v2, 0x20

    .line 2259
    :cond_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->compress_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->compress_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->access$3702(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I

    .line 2260
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 2261
    or-int/lit8 v2, v2, 0x40

    .line 2263
    :cond_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->resType_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->resType_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->access$3802(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I

    .line 2264
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 2265
    or-int/lit16 v2, v2, 0x80

    .line 2267
    :cond_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->os_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->os_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->access$3902(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I

    .line 2268
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 2269
    or-int/lit16 v2, v2, 0x100

    .line 2271
    :cond_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->themeOs_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->themeOs_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->access$4002(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I

    .line 2272
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 2273
    or-int/lit16 v2, v2, 0x200

    .line 2275
    :cond_9
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mobile_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->mobile_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->access$4102(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2276
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 2277
    or-int/lit16 v2, v2, 0x400

    .line 2279
    :cond_a
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userToken_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->userToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->access$4202(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2280
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 2281
    or-int/lit16 v2, v2, 0x800

    .line 2283
    :cond_b
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->source_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->source_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->access$4302(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I

    .line 2284
    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->access$4402(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I

    .line 2285
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onBuilt()V

    .line 2286
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2171
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2172
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userId_:I

    .line 2173
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2174
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->productId_:I

    .line 2175
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2176
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2177
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2178
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2179
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2180
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->position_:I

    .line 2181
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2182
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->compress_:I

    .line 2183
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2184
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->resType_:I

    .line 2185
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2186
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->os_:I

    .line 2187
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2188
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->themeOs_:I

    .line 2189
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2190
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 2191
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2192
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2193
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2194
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->source_:I

    .line 2195
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2196
    return-object p0
.end method

.method public clearCompress()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2613
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2614
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->compress_:I

    .line 2615
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2616
    return-object p0
.end method

.method public clearImei()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2515
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2516
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2517
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2518
    return-object p0
.end method

.method public clearMobile()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2724
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2725
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getMobile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 2726
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2727
    return-object p0
.end method

.method public clearOs()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2663
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2664
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->os_:I

    .line 2665
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2666
    return-object p0
.end method

.method public clearPosition()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2588
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2589
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->position_:I

    .line 2590
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2591
    return-object p0
.end method

.method public clearProductId()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2479
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2480
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->productId_:I

    .line 2481
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2482
    return-object p0
.end method

.method public clearResType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2638
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2639
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->resType_:I

    .line 2640
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2641
    return-object p0
.end method

.method public clearSource()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2797
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2798
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->source_:I

    .line 2799
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2800
    return-object p0
.end method

.method public clearSourceCode()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2557
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2558
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getSourceCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2559
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2560
    return-object p0
.end method

.method public clearThemeOs()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2688
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2689
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->themeOs_:I

    .line 2690
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2691
    return-object p0
.end method

.method public clearUserId()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2454
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2455
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userId_:I

    .line 2456
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2457
    return-object p0
.end method

.method public clearUserToken()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2766
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2767
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getUserToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2768
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2769
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 2

    .prologue
    .line 2200
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->create()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

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
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCompress()I
    .locals 1

    .prologue
    .line 2602
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->compress_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 1

    .prologue
    .line 2209
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2204
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2493
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2494
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2495
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2497
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2500
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

.method public getMobile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2702
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 2703
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2704
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2706
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 2709
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

.method public getOs()I
    .locals 1

    .prologue
    .line 2652
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->os_:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 2577
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->position_:I

    return v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 2468
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->productId_:I

    return v0
.end method

.method public getResType()I
    .locals 1

    .prologue
    .line 2627
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->resType_:I

    return v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 2786
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->source_:I

    return v0
.end method

.method public getSourceCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2536
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2537
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2539
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2542
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

.method public getThemeOs()I
    .locals 1

    .prologue
    .line 2677
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->themeOs_:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 2443
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userId_:I

    return v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2745
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2746
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2748
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2751
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

.method public hasCompress()Z
    .locals 2

    .prologue
    .line 2598
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

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

.method public hasImei()Z
    .locals 2

    .prologue
    .line 2489
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

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

.method public hasMobile()Z
    .locals 2

    .prologue
    .line 2698
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

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

.method public hasOs()Z
    .locals 2

    .prologue
    .line 2648
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

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

.method public hasPosition()Z
    .locals 2

    .prologue
    .line 2573
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

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

.method public hasProductId()Z
    .locals 2

    .prologue
    .line 2464
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

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

.method public hasResType()Z
    .locals 2

    .prologue
    .line 2623
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

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

.method public hasSource()Z
    .locals 2

    .prologue
    .line 2782
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

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
    .line 2531
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

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

.method public hasThemeOs()Z
    .locals 2

    .prologue
    .line 2673
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2439
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

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
    .line 2740
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2147
    # getter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetDetailRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->access$2600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2344
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
    .line 2138
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2138
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

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
    .line 2138
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

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
    .line 2138
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2138
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

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
    .line 2138
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2351
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 2354
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2355
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2361
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2363
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2364
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2365
    :goto_1
    return-object p0

    .line 2357
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2358
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    goto :goto_1

    .line 2370
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2371
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userId_:I

    goto :goto_0

    .line 2375
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2376
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->productId_:I

    goto :goto_0

    .line 2380
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2381
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->imei_:Ljava/lang/Object;

    goto :goto_0

    .line 2385
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2386
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->sourceCode_:Ljava/lang/Object;

    goto :goto_0

    .line 2390
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2391
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->position_:I

    goto :goto_0

    .line 2395
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2396
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->compress_:I

    goto :goto_0

    .line 2400
    :sswitch_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2401
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->resType_:I

    goto :goto_0

    .line 2405
    :sswitch_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2406
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->os_:I

    goto/16 :goto_0

    .line 2410
    :sswitch_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2411
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->themeOs_:I

    goto/16 :goto_0

    .line 2415
    :sswitch_a
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2416
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mobile_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2420
    :sswitch_b
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2421
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userToken_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2425
    :sswitch_c
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2426
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->source_:I

    goto/16 :goto_0

    .line 2355
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2290
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    if-eqz v0, :cond_0

    .line 2291
    check-cast p1, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object p0

    .line 2294
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    :goto_0
    return-object p0

    .line 2293
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    .prologue
    .line 2300
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2340
    :goto_0
    return-object p0

    .line 2303
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2304
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->setUserId(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    .line 2306
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->hasProductId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2307
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getProductId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->setProductId(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    .line 2309
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->hasImei()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2310
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->setImei(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    .line 2312
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->hasSourceCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2313
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getSourceCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->setSourceCode(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    .line 2315
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2316
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->setPosition(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    .line 2318
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->hasCompress()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2319
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getCompress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->setCompress(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    .line 2321
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->hasResType()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2322
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getResType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->setResType(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    .line 2324
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->hasOs()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2325
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getOs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->setOs(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    .line 2327
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->hasThemeOs()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2328
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getThemeOs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->setThemeOs(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    .line 2330
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->hasMobile()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2331
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->setMobile(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    .line 2333
    :cond_a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->hasUserToken()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2334
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getUserToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->setUserToken(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    .line 2336
    :cond_b
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2337
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->setSource(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    .line 2339
    :cond_c
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setCompress(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2606
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2607
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->compress_:I

    .line 2608
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2609
    return-object p0
.end method

.method public setImei(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2505
    if-nez p1, :cond_0

    .line 2506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2508
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2509
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2510
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2511
    return-object p0
.end method

.method setImei(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2522
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2523
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->imei_:Ljava/lang/Object;

    .line 2524
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2525
    return-void
.end method

.method public setMobile(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2714
    if-nez p1, :cond_0

    .line 2715
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2717
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2718
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 2719
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2720
    return-object p0
.end method

.method setMobile(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2731
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2732
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 2733
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2734
    return-void
.end method

.method public setOs(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2656
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2657
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->os_:I

    .line 2658
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2659
    return-object p0
.end method

.method public setPosition(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2581
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2582
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->position_:I

    .line 2583
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2584
    return-object p0
.end method

.method public setProductId(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2472
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2473
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->productId_:I

    .line 2474
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2475
    return-object p0
.end method

.method public setResType(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2631
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2632
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->resType_:I

    .line 2633
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2634
    return-object p0
.end method

.method public setSource(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2790
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2791
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->source_:I

    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2793
    return-object p0
.end method

.method public setSourceCode(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2547
    if-nez p1, :cond_0

    .line 2548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2550
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2551
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2552
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2553
    return-object p0
.end method

.method setSourceCode(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2564
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2565
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->sourceCode_:Ljava/lang/Object;

    .line 2566
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2567
    return-void
.end method

.method public setThemeOs(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2681
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2682
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->themeOs_:I

    .line 2683
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2684
    return-object p0
.end method

.method public setUserId(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2447
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2448
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userId_:I

    .line 2449
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2450
    return-object p0
.end method

.method public setUserToken(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2756
    if-nez p1, :cond_0

    .line 2757
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2759
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2760
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2761
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2762
    return-object p0
.end method

.method setUserToken(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2773
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->bitField0_:I

    .line 2774
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 2775
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->onChanged()V

    .line 2776
    return-void
.end method
