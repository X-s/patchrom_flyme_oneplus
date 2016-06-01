.class public final Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SearchDownloadProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchDownloadProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    }
.end annotation


# static fields
.field public static final IMEI_FIELD_NUMBER:I = 0x2

.field public static final KEYWORD_FIELD_NUMBER:I = 0x9

.field public static final POSITIONS_FIELD_NUMBER:I = 0x5

.field public static final PRODUCTIDS_FIELD_NUMBER:I = 0x4

.field public static final SOURCECODE_FIELD_NUMBER:I = 0x3

.field public static final SOURCE_FIELD_NUMBER:I = 0x8

.field public static final USERAGENT_FIELD_NUMBER:I = 0x6

.field public static final USERID_FIELD_NUMBER:I = 0x1

.field public static final USERTOKEN_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private imei_:Ljava/lang/Object;

.field private keyword_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2946
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    .line 2947
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->initFields()V

    .line 2948
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    .prologue
    const/4 v0, -0x1

    .line 1804
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 2069
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->memoizedIsInitialized:B

    .line 2113
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->memoizedSerializedSize:I

    .line 1805
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;

    .prologue
    .line 1799
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;-><init>(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1807
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2069
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->memoizedIsInitialized:B

    .line 2113
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->memoizedSerializedSize:I

    .line 1808
    return-void
.end method

.method static synthetic access$3200()Z
    .locals 1

    .prologue
    .line 1799
    sget-boolean v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .param p1, "x1"    # I

    .prologue
    .line 1799
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userId_:I

    return p1
.end method

.method static synthetic access$3502(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->imei_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->sourceCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->productIds_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->productIds_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->positions_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->positions_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userAgent_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .param p1, "x1"    # I

    .prologue
    .line 1799
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->source_:I

    return p1
.end method

.method static synthetic access$4202(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->keyword_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .param p1, "x1"    # I

    .prologue
    .line 1799
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 1

    .prologue
    .line 1813
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1821
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$2700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getImeiBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1864
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->imei_:Ljava/lang/Object;

    .line 1865
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1866
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1868
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->imei_:Ljava/lang/Object;

    .line 1871
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

.method private getKeywordBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2044
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->keyword_:Ljava/lang/Object;

    .line 2045
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2046
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2048
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->keyword_:Ljava/lang/Object;

    .line 2051
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

.method private getSourceCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1898
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->sourceCode_:Ljava/lang/Object;

    .line 1899
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1900
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1902
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->sourceCode_:Ljava/lang/Object;

    .line 1905
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

.method private getUserAgentBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1964
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userAgent_:Ljava/lang/Object;

    .line 1965
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1966
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1968
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userAgent_:Ljava/lang/Object;

    .line 1971
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

.method private getUserTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1998
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userToken_:Ljava/lang/Object;

    .line 1999
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2000
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2002
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userToken_:Ljava/lang/Object;

    .line 2005
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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2056
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userId_:I

    .line 2057
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->imei_:Ljava/lang/Object;

    .line 2058
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->sourceCode_:Ljava/lang/Object;

    .line 2059
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->productIds_:Ljava/util/List;

    .line 2061
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->positions_:Ljava/util/List;

    .line 2063
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userAgent_:Ljava/lang/Object;

    .line 2064
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userToken_:Ljava/lang/Object;

    .line 2065
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->source_:I

    .line 2066
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->keyword_:Ljava/lang/Object;

    .line 2067
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1

    .prologue
    .line 2258
    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->create()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->access$3000()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    .prologue
    .line 2267
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2223
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    .line 2224
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2225
    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->access$2900(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v1

    .line 2227
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2235
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    .line 2236
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2237
    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->access$2900(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v1

    .line 2239
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2183
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->access$2900(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2190
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->access$2900(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2246
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->access$2900(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2253
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->access$2900(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2210
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->access$2900(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2217
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->access$2900(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2197
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->access$2900(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2204
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;->access$2900(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;
    .locals 1

    .prologue
    .line 1817
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1850
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->imei_:Ljava/lang/Object;

    .line 1851
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1852
    check-cast v1, Ljava/lang/String;

    .line 1859
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1854
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1855
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1856
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1857
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->imei_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1859
    goto :goto_0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2030
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->keyword_:Ljava/lang/Object;

    .line 2031
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2032
    check-cast v1, Ljava/lang/String;

    .line 2039
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2034
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2035
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2036
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2037
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->keyword_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2039
    goto :goto_0
.end method

.method public getPositions(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->positions_:Ljava/util/List;

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
    .line 1934
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->positions_:Ljava/util/List;

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
    .line 1930
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->positions_:Ljava/util/List;

    return-object v0
.end method

.method public getProductIds(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->productIds_:Ljava/util/List;

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
    .line 1918
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->productIds_:Ljava/util/List;

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
    .line 1914
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->productIds_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2116
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->memoizedSerializedSize:I

    .line 2117
    .local v2, "size":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 2169
    .end local v2    # "size":I
    .local v3, "size":I
    :goto_0
    return v3

    .line 2120
    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_0
    const/4 v2, 0x0

    .line 2121
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 2122
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userId_:I

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2125
    :cond_1
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2

    .line 2126
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getImeiBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2129
    :cond_2
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 2130
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getSourceCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2134
    :cond_3
    const/4 v0, 0x0

    .line 2135
    .local v0, "dataSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->productIds_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 2136
    iget-object v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->productIds_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 2135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2139
    :cond_4
    add-int/2addr v2, v0

    .line 2140
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getProductIdsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2143
    const/4 v0, 0x0

    .line 2144
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->positions_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 2145
    iget-object v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->positions_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 2144
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2148
    :cond_5
    add-int/2addr v2, v0

    .line 2149
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getPositionsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2151
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v7, :cond_6

    .line 2152
    const/4 v4, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getUserAgentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2155
    :cond_6
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_7

    .line 2156
    const/4 v4, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getUserTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2159
    :cond_7
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_8

    .line 2160
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->source_:I

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2163
    :cond_8
    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_9

    .line 2164
    const/16 v4, 0x9

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getKeywordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2167
    :cond_9
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 2168
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 2169
    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto/16 :goto_0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 2018
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->source_:I

    return v0
.end method

.method public getSourceCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1884
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->sourceCode_:Ljava/lang/Object;

    .line 1885
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1886
    check-cast v1, Ljava/lang/String;

    .line 1893
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1888
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1889
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1890
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1891
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->sourceCode_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1893
    goto :goto_0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1950
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userAgent_:Ljava/lang/Object;

    .line 1951
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1952
    check-cast v1, Ljava/lang/String;

    .line 1959
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1954
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1955
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1956
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1957
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userAgent_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1959
    goto :goto_0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 1838
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userId_:I

    return v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1984
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userToken_:Ljava/lang/Object;

    .line 1985
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1986
    check-cast v1, Ljava/lang/String;

    .line 1993
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1988
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1989
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1990
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1991
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userToken_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1993
    goto :goto_0
.end method

.method public hasImei()Z
    .locals 2

    .prologue
    .line 1846
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

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
    .line 2026
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

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
    .line 2014
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

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

.method public hasSourceCode()Z
    .locals 2

    .prologue
    .line 1880
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

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
    .line 1946
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1834
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

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
    .line 1980
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1825
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$2800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2072
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->memoizedIsInitialized:B

    .line 2073
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2074
    if-ne v0, v1, :cond_0

    .line 2077
    :goto_0
    return v1

    .line 2074
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2076
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilderForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1799
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilderForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1

    .prologue
    .line 2262
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2277
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;)V

    .line 2278
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->toBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->toBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;
    .locals 1

    .prologue
    .line 2271
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->newBuilder(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

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
    .line 2177
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

    .line 2082
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getSerializedSize()I

    .line 2083
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 2084
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->userId_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2086
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 2087
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getImeiBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2089
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 2090
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getSourceCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2092
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->productIds_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2093
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->productIds_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2092
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2095
    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->positions_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2096
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->positions_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2095
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2098
    :cond_4
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_5

    .line 2099
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getUserAgentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2101
    :cond_5
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6

    .line 2102
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getUserTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2104
    :cond_6
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7

    .line 2105
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->source_:I

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2107
    :cond_7
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_8

    .line 2108
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getKeywordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2110
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2111
    return-void
.end method
