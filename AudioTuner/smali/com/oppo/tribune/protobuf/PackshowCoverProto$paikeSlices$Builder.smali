.class public final Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PackshowCoverProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlicesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlicesOrBuilder;"
    }
.end annotation


# instance fields
.field private authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;",
            "Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;",
            "Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuserOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

.field private bitField0_:I

.field private dateline_:Ljava/lang/Object;

.field private filepath_:Ljava/lang/Object;

.field private hash_:Ljava/lang/Object;

.field private picid_:J

.field private posttime_:I

.field private praise_:I

.field private sharetime_:I

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1865
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2147
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .line 2246
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->dateline_:Ljava/lang/Object;

    .line 2288
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->filepath_:Ljava/lang/Object;

    .line 2330
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->hash_:Ljava/lang/Object;

    .line 2372
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->title_:Ljava/lang/Object;

    .line 1866
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->maybeForceBuilderInitialization()V

    .line 1867
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1870
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2147
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .line 2246
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->dateline_:Ljava/lang/Object;

    .line 2288
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->filepath_:Ljava/lang/Object;

    .line 2330
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->hash_:Ljava/lang/Object;

    .line 2372
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->title_:Ljava/lang/Object;

    .line 1871
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->maybeForceBuilderInitialization()V

    .line 1872
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PackshowCoverProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$1;

    .prologue
    .line 1851
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1851
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1

    .prologue
    .line 1851
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->create()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1936
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    .line 1937
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1938
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1941
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1

    .prologue
    .line 1881
    new-instance v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;-><init>()V

    return-object v0
.end method

.method private getAuthorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;",
            "Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;",
            "Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuserOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2238
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .line 2242
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1856
    # getter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_paikeSlices_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1875
    # getter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1876
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->getAuthorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1878
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 2

    .prologue
    .line 1927
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    .line 1928
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1929
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1931
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 6

    .prologue
    .line 1945
    new-instance v1, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;-><init>(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;Lcom/oppo/tribune/protobuf/PackshowCoverProto$1;)V

    .line 1947
    .local v1, "result":Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 1948
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1949
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1950
    or-int/lit8 v2, v2, 0x1

    .line 1952
    :cond_0
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->picid_:J

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->picid_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->access$2802(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;J)J

    .line 1953
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1954
    or-int/lit8 v2, v2, 0x2

    .line 1956
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_9

    .line 1957
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->access$2902(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .line 1961
    :goto_0
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1962
    or-int/lit8 v2, v2, 0x4

    .line 1964
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->dateline_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->dateline_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->access$3002(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1966
    or-int/lit8 v2, v2, 0x8

    .line 1968
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->filepath_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->filepath_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->access$3102(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1970
    or-int/lit8 v2, v2, 0x10

    .line 1972
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->hash_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hash_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->access$3202(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1974
    or-int/lit8 v2, v2, 0x20

    .line 1976
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->title_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->access$3302(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1978
    or-int/lit8 v2, v2, 0x40

    .line 1980
    :cond_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->praise_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->praise_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->access$3402(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;I)I

    .line 1981
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1982
    or-int/lit16 v2, v2, 0x80

    .line 1984
    :cond_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->sharetime_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->sharetime_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->access$3502(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;I)I

    .line 1985
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1986
    or-int/lit16 v2, v2, 0x100

    .line 1988
    :cond_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->posttime_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->posttime_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->access$3602(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;I)I

    .line 1989
    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->access$3702(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;I)I

    .line 1990
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onBuilt()V

    .line 1991
    return-object v1

    .line 1959
    :cond_9
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->access$2902(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1885
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1886
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->picid_:J

    .line 1887
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 1888
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1889
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .line 1894
    :goto_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 1895
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->dateline_:Ljava/lang/Object;

    .line 1896
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 1897
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->filepath_:Ljava/lang/Object;

    .line 1898
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 1899
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->hash_:Ljava/lang/Object;

    .line 1900
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 1901
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->title_:Ljava/lang/Object;

    .line 1902
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 1903
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->praise_:I

    .line 1904
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 1905
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->sharetime_:I

    .line 1906
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 1907
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->posttime_:I

    .line 1908
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 1909
    return-object p0

    .line 1892
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearAuthor()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2212
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .line 2214
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2218
    :goto_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2219
    return-object p0

    .line 2216
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearDateline()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1

    .prologue
    .line 2275
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2276
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getDateline()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->dateline_:Ljava/lang/Object;

    .line 2277
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2278
    return-object p0
.end method

.method public clearFilepath()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1

    .prologue
    .line 2317
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2318
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getFilepath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->filepath_:Ljava/lang/Object;

    .line 2319
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2320
    return-object p0
.end method

.method public clearHash()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1

    .prologue
    .line 2359
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2360
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->hash_:Ljava/lang/Object;

    .line 2361
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2362
    return-object p0
.end method

.method public clearPicid()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 2

    .prologue
    .line 2140
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->picid_:J

    .line 2142
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2143
    return-object p0
.end method

.method public clearPosttime()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1

    .prologue
    .line 2482
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2483
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->posttime_:I

    .line 2484
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2485
    return-object p0
.end method

.method public clearPraise()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1

    .prologue
    .line 2432
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2433
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->praise_:I

    .line 2434
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2435
    return-object p0
.end method

.method public clearSharetime()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1

    .prologue
    .line 2457
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2458
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->sharetime_:I

    .line 2459
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2460
    return-object p0
.end method

.method public clearTitle()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1

    .prologue
    .line 2401
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2402
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->title_:Ljava/lang/Object;

    .line 2403
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2404
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 2

    .prologue
    .line 1913
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->create()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

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
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 1

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2157
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .line 2159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    goto :goto_0
.end method

.method public getAuthorBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 2223
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2224
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2225
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->getAuthorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    return-object v0
.end method

.method public getAuthorOrBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuserOrBuilder;
    .locals 1

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2230
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuserOrBuilder;

    .line 2232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    goto :goto_0
.end method

.method public getDateline()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->dateline_:Ljava/lang/Object;

    .line 2254
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2255
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2257
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->dateline_:Ljava/lang/Object;

    .line 2260
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
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 1

    .prologue
    .line 1922
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1917
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->filepath_:Ljava/lang/Object;

    .line 2296
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2297
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2299
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->filepath_:Ljava/lang/Object;

    .line 2302
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

.method public getHash()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->hash_:Ljava/lang/Object;

    .line 2338
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2339
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2341
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->hash_:Ljava/lang/Object;

    .line 2344
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

.method public getPicid()J
    .locals 2

    .prologue
    .line 2129
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->picid_:J

    return-wide v0
.end method

.method public getPosttime()I
    .locals 1

    .prologue
    .line 2471
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->posttime_:I

    return v0
.end method

.method public getPraise()I
    .locals 1

    .prologue
    .line 2421
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->praise_:I

    return v0
.end method

.method public getSharetime()I
    .locals 1

    .prologue
    .line 2446
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->sharetime_:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->title_:Ljava/lang/Object;

    .line 2380
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2381
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2383
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->title_:Ljava/lang/Object;

    .line 2386
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

.method public hasAuthor()Z
    .locals 2

    .prologue
    .line 2152
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

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

.method public hasDateline()Z
    .locals 2

    .prologue
    .line 2249
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

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

.method public hasFilepath()Z
    .locals 2

    .prologue
    .line 2291
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

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

.method public hasHash()Z
    .locals 2

    .prologue
    .line 2333
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

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

.method public hasPicid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2125
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPosttime()Z
    .locals 2

    .prologue
    .line 2467
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

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

.method public hasPraise()Z
    .locals 2

    .prologue
    .line 2417
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

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

.method public hasSharetime()Z
    .locals 2

    .prologue
    .line 2442
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 2375
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1860
    # getter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_paikeSlices_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2040
    const/4 v0, 0x1

    return v0
.end method

.method public mergeAuthor(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 2
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2193
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2196
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilder(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .line 2202
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2206
    :goto_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2207
    return-object p0

    .line 2200
    :cond_0
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    goto :goto_0

    .line 2204
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
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
    .line 1851
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1851
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

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
    .line 1851
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

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
    .line 1851
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1851
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

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
    .line 1851
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2047
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 2050
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2051
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 2057
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2059
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2060
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2061
    :goto_1
    return-object p0

    .line 2053
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2054
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    goto :goto_1

    .line 2066
    :sswitch_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2067
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->picid_:J

    goto :goto_0

    .line 2071
    :sswitch_2
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    .line 2073
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->hasAuthor()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2074
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->getAuthor()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .line 2076
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2077
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->setAuthor(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    goto :goto_0

    .line 2081
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2082
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->dateline_:Ljava/lang/Object;

    goto :goto_0

    .line 2086
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2087
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->filepath_:Ljava/lang/Object;

    goto :goto_0

    .line 2091
    :sswitch_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2092
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->hash_:Ljava/lang/Object;

    goto :goto_0

    .line 2096
    :sswitch_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2097
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 2101
    :sswitch_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2102
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->praise_:I

    goto/16 :goto_0

    .line 2106
    :sswitch_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2107
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->sharetime_:I

    goto/16 :goto_0

    .line 2111
    :sswitch_9
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2112
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->posttime_:I

    goto/16 :goto_0

    .line 2051
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1995
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    if-eqz v0, :cond_0

    .line 1996
    check-cast p1, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object p0

    .line 1999
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    :goto_0
    return-object p0

    .line 1998
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    .prologue
    .line 2005
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2036
    :goto_0
    return-object p0

    .line 2008
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hasPicid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2009
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getPicid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->setPicid(J)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    .line 2011
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hasAuthor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2012
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getAuthor()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeAuthor(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    .line 2014
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hasDateline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2015
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getDateline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->setDateline(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    .line 2017
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hasFilepath()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2018
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getFilepath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->setFilepath(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    .line 2020
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hasHash()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2021
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->setHash(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    .line 2023
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2024
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    .line 2026
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hasPraise()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2027
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getPraise()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->setPraise(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    .line 2029
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hasSharetime()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2030
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getSharetime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->setSharetime(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    .line 2032
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hasPosttime()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2033
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getPosttime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->setPosttime(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    .line 2035
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setAuthor(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2181
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .line 2182
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2186
    :goto_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2187
    return-object p0

    .line 2184
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setAuthor(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2166
    if-nez p1, :cond_0

    .line 2167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2169
    :cond_0
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .line 2170
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2174
    :goto_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2175
    return-object p0

    .line 2172
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->authorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setDateline(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2265
    if-nez p1, :cond_0

    .line 2266
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2268
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2269
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->dateline_:Ljava/lang/Object;

    .line 2270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2271
    return-object p0
.end method

.method setDateline(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2282
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2283
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->dateline_:Ljava/lang/Object;

    .line 2284
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2285
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2307
    if-nez p1, :cond_0

    .line 2308
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2310
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2311
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->filepath_:Ljava/lang/Object;

    .line 2312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2313
    return-object p0
.end method

.method setFilepath(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2324
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2325
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->filepath_:Ljava/lang/Object;

    .line 2326
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2327
    return-void
.end method

.method public setHash(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2349
    if-nez p1, :cond_0

    .line 2350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2352
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2353
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->hash_:Ljava/lang/Object;

    .line 2354
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2355
    return-object p0
.end method

.method setHash(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2366
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2367
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->hash_:Ljava/lang/Object;

    .line 2368
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2369
    return-void
.end method

.method public setPicid(J)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2133
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2134
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->picid_:J

    .line 2135
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2136
    return-object p0
.end method

.method public setPosttime(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2475
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2476
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->posttime_:I

    .line 2477
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2478
    return-object p0
.end method

.method public setPraise(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2425
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2426
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->praise_:I

    .line 2427
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2428
    return-object p0
.end method

.method public setSharetime(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2450
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2451
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->sharetime_:I

    .line 2452
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2453
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2391
    if-nez p1, :cond_0

    .line 2392
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2394
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2395
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->title_:Ljava/lang/Object;

    .line 2396
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2397
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2408
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->bitField0_:I

    .line 2409
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->title_:Ljava/lang/Object;

    .line 2410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->onChanged()V

    .line 2411
    return-void
.end method
