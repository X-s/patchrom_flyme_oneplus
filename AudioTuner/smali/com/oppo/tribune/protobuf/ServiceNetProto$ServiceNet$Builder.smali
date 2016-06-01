.class public final Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ServiceNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetOrBuilder;"
    }
.end annotation


# instance fields
.field private areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetAreaOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private area_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2010
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2172
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    .line 2011
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->maybeForceBuilderInitialization()V

    .line 2012
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2015
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2172
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    .line 2016
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->maybeForceBuilderInitialization()V

    .line 2017
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ServiceNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$1;

    .prologue
    .line 1997
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1997
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 1

    .prologue
    .line 1997
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->create()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2064
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    .line 2065
    .local v0, "result":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2066
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2069
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 1

    .prologue
    .line 2026
    new-instance v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAreaIsMutable()V
    .locals 2

    .prologue
    .line 2176
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2177
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    .line 2179
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    .line 2181
    :cond_0
    return-void
.end method

.method private getAreaFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetAreaOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2372
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 2373
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    .line 2378
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2373
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2001
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto;->internal_static_protobuf_ServiceNet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2020
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->access$3100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2021
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->getAreaFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2023
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllArea(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;"
        }
    .end annotation

    .prologue
    .line 2297
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2298
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->ensureAreaIsMutable()V

    .line 2299
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2300
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->onChanged()V

    .line 2304
    :goto_0
    return-object p0

    .line 2302
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addArea(ILcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2286
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->ensureAreaIsMutable()V

    .line 2287
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2288
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->onChanged()V

    .line 2292
    :goto_0
    return-object p0

    .line 2290
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addArea(ILcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2258
    if-nez p2, :cond_0

    .line 2259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2261
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->ensureAreaIsMutable()V

    .line 2262
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2263
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->onChanged()V

    .line 2267
    :goto_0
    return-object p0

    .line 2265
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addArea(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2273
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->ensureAreaIsMutable()V

    .line 2274
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2275
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->onChanged()V

    .line 2279
    :goto_0
    return-object p0

    .line 2277
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addArea(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2242
    if-nez p1, :cond_0

    .line 2243
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2245
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->ensureAreaIsMutable()V

    .line 2246
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2247
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->onChanged()V

    .line 2251
    :goto_0
    return-object p0

    .line 2249
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAreaBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 2

    .prologue
    .line 2352
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->getAreaFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    return-object v0
.end method

.method public addAreaBuilder(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2360
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->getAreaFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 2

    .prologue
    .line 2055
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    .line 2056
    .local v0, "result":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2057
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2059
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 4

    .prologue
    .line 2073
    new-instance v1, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;-><init>(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;Lcom/oppo/tribune/protobuf/ServiceNetProto$1;)V

    .line 2075
    .local v1, "result":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    .line 2076
    .local v0, "from_bitField0_":I
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    .line 2077
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2078
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    .line 2079
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    .line 2081
    :cond_0
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->access$3302(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;Ljava/util/List;)Ljava/util/List;

    .line 2085
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->onBuilt()V

    .line 2086
    return-object v1

    .line 2083
    :cond_1
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->access$3302(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->clear()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->clear()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->clear()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->clear()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 1

    .prologue
    .line 2030
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2031
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2032
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    .line 2033
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    .line 2037
    :goto_0
    return-object p0

    .line 2035
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearArea()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 1

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2309
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    .line 2310
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    .line 2311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->onChanged()V

    .line 2315
    :goto_0
    return-object p0

    .line 2313
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 2

    .prologue
    .line 2041
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->create()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

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
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getArea(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2204
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    .line 2206
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    goto :goto_0
.end method

.method public getAreaBuilder(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2331
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->getAreaFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    return-object v0
.end method

.method public getAreaBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2368
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->getAreaFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAreaCount()I
    .locals 1

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2197
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getAreaList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2187
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2189
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAreaOrBuilder(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetAreaOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2337
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetAreaOrBuilder;

    .line 2339
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetAreaOrBuilder;

    goto :goto_0
.end method

.method public getAreaOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetAreaOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2345
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2347
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 1

    .prologue
    .line 2050
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2045
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2005
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto;->internal_static_protobuf_ServiceNet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto;->access$2700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2133
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
    .line 1997
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1997
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

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
    .line 1997
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

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
    .line 1997
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1997
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

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
    .line 1997
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2140
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 2143
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2144
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 2150
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2152
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2153
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->onChanged()V

    .line 2154
    :goto_1
    return-object p0

    .line 2146
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2147
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->onChanged()V

    goto :goto_1

    .line 2159
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    .line 2161
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2162
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->addArea(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    goto :goto_0

    .line 2144
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2090
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    if-eqz v0, :cond_0

    .line 2091
    check-cast p1, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object p0

    .line 2094
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    :goto_0
    return-object p0

    .line 2093
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    .prologue
    const/4 v0, 0x0

    .line 2100
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 2129
    :goto_0
    return-object p0

    .line 2103
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 2104
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->access$3300(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2105
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2106
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->access$3300(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    .line 2107
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    .line 2112
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->onChanged()V

    .line 2128
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 2109
    :cond_2
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->ensureAreaIsMutable()V

    .line 2110
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->access$3300(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2115
    :cond_3
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->access$3300(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2116
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2117
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 2118
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2119
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->access$3300(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    .line 2120
    iget v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->bitField0_:I

    .line 2121
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->access$3400()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->getAreaFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 2124
    :cond_5
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->access$3300(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeArea(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2320
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->ensureAreaIsMutable()V

    .line 2321
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2322
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->onChanged()V

    .line 2326
    :goto_0
    return-object p0

    .line 2324
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setArea(ILcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2230
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->ensureAreaIsMutable()V

    .line 2231
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2232
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->onChanged()V

    .line 2236
    :goto_0
    return-object p0

    .line 2234
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setArea(ILcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2214
    if-nez p2, :cond_0

    .line 2215
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2217
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->ensureAreaIsMutable()V

    .line 2218
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->area_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2219
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->onChanged()V

    .line 2223
    :goto_0
    return-object p0

    .line 2221
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->areaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
