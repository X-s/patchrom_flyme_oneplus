.class public final Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PackshowCoverProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlicesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackshowCoverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "paikeSlices"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    }
.end annotation


# static fields
.field public static final AUTHOR_FIELD_NUMBER:I = 0x2

.field public static final DATELINE_FIELD_NUMBER:I = 0x3

.field public static final FILEPATH_FIELD_NUMBER:I = 0x4

.field public static final HASH_FIELD_NUMBER:I = 0x5

.field public static final PICID_FIELD_NUMBER:I = 0x1

.field public static final POSTTIME_FIELD_NUMBER:I = 0x9

.field public static final PRAISE_FIELD_NUMBER:I = 0x7

.field public static final SHARETIME_FIELD_NUMBER:I = 0x8

.field public static final TITLE_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

.field private static final serialVersionUID:J


# instance fields
.field private author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

.field private bitField0_:I

.field private dateline_:Ljava/lang/Object;

.field private filepath_:Ljava/lang/Object;

.field private hash_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private picid_:J

.field private posttime_:I

.field private praise_:I

.field private sharetime_:I

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2492
    new-instance v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    .line 2493
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->initFields()V

    .line 2494
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    .prologue
    const/4 v0, -0x1

    .line 1411
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1649
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->memoizedIsInitialized:B

    .line 1693
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->memoizedSerializedSize:I

    .line 1412
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;Lcom/oppo/tribune/protobuf/PackshowCoverProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$1;

    .prologue
    .line 1406
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;-><init>(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1414
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1649
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->memoizedIsInitialized:B

    .line 1693
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->memoizedSerializedSize:I

    .line 1415
    return-void
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 1406
    sget-boolean v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .param p1, "x1"    # J

    .prologue
    .line 1406
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->picid_:J

    return-wide p1
.end method

.method static synthetic access$2902(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .param p1, "x1"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->dateline_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->filepath_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hash_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .param p1, "x1"    # I

    .prologue
    .line 1406
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->praise_:I

    return p1
.end method

.method static synthetic access$3502(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .param p1, "x1"    # I

    .prologue
    .line 1406
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->sharetime_:I

    return p1
.end method

.method static synthetic access$3602(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .param p1, "x1"    # I

    .prologue
    .line 1406
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->posttime_:I

    return p1
.end method

.method static synthetic access$3702(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .param p1, "x1"    # I

    .prologue
    .line 1406
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    return p1
.end method

.method private getDatelineBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1487
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->dateline_:Ljava/lang/Object;

    .line 1488
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1489
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1491
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->dateline_:Ljava/lang/Object;

    .line 1494
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 1

    .prologue
    .line 1420
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1428
    # getter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_paikeSlices_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getFilepathBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1521
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->filepath_:Ljava/lang/Object;

    .line 1522
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1523
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1525
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->filepath_:Ljava/lang/Object;

    .line 1528
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getHashBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1555
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hash_:Ljava/lang/Object;

    .line 1556
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1557
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1559
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hash_:Ljava/lang/Object;

    .line 1562
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1589
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->title_:Ljava/lang/Object;

    .line 1590
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1591
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1593
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->title_:Ljava/lang/Object;

    .line 1596
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1637
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->picid_:J

    .line 1638
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .line 1640
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->dateline_:Ljava/lang/Object;

    .line 1641
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->filepath_:Ljava/lang/Object;

    .line 1642
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hash_:Ljava/lang/Object;

    .line 1643
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->title_:Ljava/lang/Object;

    .line 1644
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->praise_:I

    .line 1645
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->sharetime_:I

    .line 1646
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->posttime_:I

    .line 1647
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1

    .prologue
    .line 1828
    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->create()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->access$2400()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    .prologue
    .line 1837
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1793
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    .line 1794
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1795
    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->access$2300(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v1

    .line 1797
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1805
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    .line 1806
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1807
    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->access$2300(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v1

    .line 1809
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1753
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->access$2300(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1760
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->access$2300(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1816
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->access$2300(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1823
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->access$2300(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1780
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->access$2300(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1787
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->access$2300(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1767
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->access$2300(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1774
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;->access$2300(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthor()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    return-object v0
.end method

.method public getAuthorOrBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuserOrBuilder;
    .locals 1

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    return-object v0
.end method

.method public getDateline()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1473
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->dateline_:Ljava/lang/Object;

    .line 1474
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1475
    check-cast v1, Ljava/lang/String;

    .line 1482
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1477
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1478
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1479
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1480
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->dateline_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1482
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1406
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1406
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;
    .locals 1

    .prologue
    .line 1424
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    return-object v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1507
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->filepath_:Ljava/lang/Object;

    .line 1508
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1509
    check-cast v1, Ljava/lang/String;

    .line 1516
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1511
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1512
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1513
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1514
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->filepath_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1516
    goto :goto_0
.end method

.method public getHash()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1541
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hash_:Ljava/lang/Object;

    .line 1542
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1543
    check-cast v1, Ljava/lang/String;

    .line 1550
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1545
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1546
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1547
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1548
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->hash_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1550
    goto :goto_0
.end method

.method public getPicid()J
    .locals 2

    .prologue
    .line 1445
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->picid_:J

    return-wide v0
.end method

.method public getPosttime()I
    .locals 1

    .prologue
    .line 1633
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->posttime_:I

    return v0
.end method

.method public getPraise()I
    .locals 1

    .prologue
    .line 1609
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->praise_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1696
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->memoizedSerializedSize:I

    .line 1697
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1739
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 1700
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 1701
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 1702
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->picid_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1705
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 1706
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1709
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 1710
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getDatelineBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1713
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_4

    .line 1714
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getFilepathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1717
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 1718
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getHashBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1721
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 1722
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1725
    :cond_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 1726
    const/4 v2, 0x7

    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->praise_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1729
    :cond_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 1730
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->sharetime_:I

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1733
    :cond_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 1734
    const/16 v2, 0x9

    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->posttime_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1737
    :cond_9
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1738
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->memoizedSerializedSize:I

    move v1, v0

    .line 1739
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getSharetime()I
    .locals 1

    .prologue
    .line 1621
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->sharetime_:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1575
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->title_:Ljava/lang/Object;

    .line 1576
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1577
    check-cast v1, Ljava/lang/String;

    .line 1584
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1579
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1580
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1581
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1582
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->title_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1584
    goto :goto_0
.end method

.method public hasAuthor()Z
    .locals 2

    .prologue
    .line 1453
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

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
    .line 1469
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

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
    .line 1503
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

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
    .line 1537
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

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

    .line 1441
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

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
    .line 1629
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

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
    .line 1605
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

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
    .line 1617
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

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
    .line 1571
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

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
    .line 1432
    # getter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_paikeSlices_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1652
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->memoizedIsInitialized:B

    .line 1653
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1654
    if-ne v0, v1, :cond_0

    .line 1657
    :goto_0
    return v1

    .line 1654
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1656
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1406
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilderForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1406
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1406
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilderForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1

    .prologue
    .line 1832
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1847
    new-instance v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PackshowCoverProto$1;)V

    .line 1848
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1406
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->toBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1406
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->toBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;
    .locals 1

    .prologue
    .line 1841
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->newBuilder(Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1747
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1662
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getSerializedSize()I

    .line 1663
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 1664
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->picid_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1666
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 1667
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->author_:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1669
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 1670
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getDatelineBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1672
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    .line 1673
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getFilepathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1675
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 1676
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getHashBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1678
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 1679
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1681
    :cond_5
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 1682
    const/4 v0, 0x7

    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->praise_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1684
    :cond_6
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 1685
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->sharetime_:I

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1687
    :cond_7
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 1688
    const/16 v0, 0x9

    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->posttime_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1690
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1691
    return-void
.end method
