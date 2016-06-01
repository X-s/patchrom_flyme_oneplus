.class public final Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SearchRequestNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchRequestNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetDetailRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    }
.end annotation


# static fields
.field public static final COMPRESS_FIELD_NUMBER:I = 0x6

.field public static final IMEI_FIELD_NUMBER:I = 0x3

.field public static final MOBILE_FIELD_NUMBER:I = 0xa

.field public static final OS_FIELD_NUMBER:I = 0x8

.field public static final POSITION_FIELD_NUMBER:I = 0x5

.field public static final PRODUCTID_FIELD_NUMBER:I = 0x2

.field public static final RESTYPE_FIELD_NUMBER:I = 0x7

.field public static final SOURCECODE_FIELD_NUMBER:I = 0x4

.field public static final SOURCE_FIELD_NUMBER:I = 0xc

.field public static final THEMEOS_FIELD_NUMBER:I = 0x9

.field public static final USERID_FIELD_NUMBER:I = 0x1

.field public static final USERTOKEN_FIELD_NUMBER:I = 0xb

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private compress_:I

.field private imei_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2807
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    .line 2808
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->initFields()V

    .line 2809
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    .prologue
    const/4 v0, -0x1

    .line 1643
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1915
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->memoizedIsInitialized:B

    .line 1968
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->memoizedSerializedSize:I

    .line 1644
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;Lcom/oppo/tribune/protobuf/SearchRequestNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$1;

    .prologue
    .line 1638
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;-><init>(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1646
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1915
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->memoizedIsInitialized:B

    .line 1968
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->memoizedSerializedSize:I

    .line 1647
    return-void
.end method

.method static synthetic access$3000()Z
    .locals 1

    .prologue
    .line 1638
    sget-boolean v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .param p1, "x1"    # I

    .prologue
    .line 1638
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->userId_:I

    return p1
.end method

.method static synthetic access$3302(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .param p1, "x1"    # I

    .prologue
    .line 1638
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->productId_:I

    return p1
.end method

.method static synthetic access$3402(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->imei_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->sourceCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .param p1, "x1"    # I

    .prologue
    .line 1638
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->position_:I

    return p1
.end method

.method static synthetic access$3702(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .param p1, "x1"    # I

    .prologue
    .line 1638
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->compress_:I

    return p1
.end method

.method static synthetic access$3802(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .param p1, "x1"    # I

    .prologue
    .line 1638
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->resType_:I

    return p1
.end method

.method static synthetic access$3902(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .param p1, "x1"    # I

    .prologue
    .line 1638
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->os_:I

    return p1
.end method

.method static synthetic access$4002(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .param p1, "x1"    # I

    .prologue
    .line 1638
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->themeOs_:I

    return p1
.end method

.method static synthetic access$4102(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->mobile_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->userToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .param p1, "x1"    # I

    .prologue
    .line 1638
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->source_:I

    return p1
.end method

.method static synthetic access$4402(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .param p1, "x1"    # I

    .prologue
    .line 1638
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 1

    .prologue
    .line 1652
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1660
    # getter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetDetailRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->access$2500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getImeiBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1715
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->imei_:Ljava/lang/Object;

    .line 1716
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1717
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1719
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->imei_:Ljava/lang/Object;

    .line 1722
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

.method private getMobileBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1843
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->mobile_:Ljava/lang/Object;

    .line 1844
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1845
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1847
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->mobile_:Ljava/lang/Object;

    .line 1850
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
    .line 1749
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->sourceCode_:Ljava/lang/Object;

    .line 1750
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1751
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1753
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->sourceCode_:Ljava/lang/Object;

    .line 1756
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
    .line 1877
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->userToken_:Ljava/lang/Object;

    .line 1878
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1879
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1881
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->userToken_:Ljava/lang/Object;

    .line 1884
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

    .line 1901
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->userId_:I

    .line 1902
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->productId_:I

    .line 1903
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->imei_:Ljava/lang/Object;

    .line 1904
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->sourceCode_:Ljava/lang/Object;

    .line 1905
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->position_:I

    .line 1906
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->compress_:I

    .line 1907
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->resType_:I

    .line 1908
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->os_:I

    .line 1909
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->themeOs_:I

    .line 1910
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->mobile_:Ljava/lang/Object;

    .line 1911
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->userToken_:Ljava/lang/Object;

    .line 1912
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->source_:I

    .line 1913
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2115
    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->create()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->access$2800()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    .prologue
    .line 2124
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2080
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    .line 2081
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2082
    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->access$2700(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v1

    .line 2084
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2092
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    .line 2093
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2094
    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->access$2700(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v1

    .line 2096
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2040
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->access$2700(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2047
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->access$2700(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2103
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->access$2700(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2110
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->access$2700(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2067
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->access$2700(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2074
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->access$2700(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2054
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->access$2700(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2061
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;->access$2700(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCompress()I
    .locals 1

    .prologue
    .line 1781
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->compress_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;
    .locals 1

    .prologue
    .line 1656
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1701
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->imei_:Ljava/lang/Object;

    .line 1702
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1703
    check-cast v1, Ljava/lang/String;

    .line 1710
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1705
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1706
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1707
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1708
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->imei_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1710
    goto :goto_0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1829
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->mobile_:Ljava/lang/Object;

    .line 1830
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1831
    check-cast v1, Ljava/lang/String;

    .line 1838
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1833
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1834
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1835
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1836
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->mobile_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1838
    goto :goto_0
.end method

.method public getOs()I
    .locals 1

    .prologue
    .line 1805
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->os_:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1769
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->position_:I

    return v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 1689
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->productId_:I

    return v0
.end method

.method public getResType()I
    .locals 1

    .prologue
    .line 1793
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->resType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1971
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->memoizedSerializedSize:I

    .line 1972
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2026
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 1975
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 1976
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1977
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->userId_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1980
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1981
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->productId_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1984
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 1985
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getImeiBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1988
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 1989
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getSourceCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1992
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 1993
    const/4 v2, 0x5

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->position_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1996
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 1997
    const/4 v2, 0x6

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->compress_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2000
    :cond_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 2001
    const/4 v2, 0x7

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->resType_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2004
    :cond_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 2005
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->os_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2008
    :cond_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 2009
    const/16 v2, 0x9

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->themeOs_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2012
    :cond_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 2013
    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getMobileBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2016
    :cond_a
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 2017
    const/16 v2, 0xb

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getUserTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2020
    :cond_b
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_c

    .line 2021
    const/16 v2, 0xc

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->source_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2024
    :cond_c
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 2025
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 2026
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 1897
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->source_:I

    return v0
.end method

.method public getSourceCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1735
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->sourceCode_:Ljava/lang/Object;

    .line 1736
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1737
    check-cast v1, Ljava/lang/String;

    .line 1744
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1739
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1740
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1741
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1742
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->sourceCode_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1744
    goto :goto_0
.end method

.method public getThemeOs()I
    .locals 1

    .prologue
    .line 1817
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->themeOs_:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 1677
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->userId_:I

    return v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1863
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->userToken_:Ljava/lang/Object;

    .line 1864
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1865
    check-cast v1, Ljava/lang/String;

    .line 1872
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1867
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1868
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1869
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1870
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->userToken_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1872
    goto :goto_0
.end method

.method public hasCompress()Z
    .locals 2

    .prologue
    .line 1777
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

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
    .line 1697
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

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
    .line 1825
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

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
    .line 1801
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

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
    .line 1765
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

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
    .line 1685
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

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
    .line 1789
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

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
    .line 1893
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

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
    .line 1731
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

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
    .line 1813
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

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

    .line 1673
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

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
    .line 1859
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

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
    .line 1664
    # getter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetDetailRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->access$2600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1918
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->memoizedIsInitialized:B

    .line 1919
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1920
    if-ne v0, v1, :cond_0

    .line 1923
    :goto_0
    return v1

    .line 1920
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1922
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilderForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1638
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilderForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2119
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2134
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SearchRequestNetProto$1;)V

    .line 2135
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->toBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->toBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;
    .locals 1

    .prologue
    .line 2128
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->newBuilder(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

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
    .line 2034
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1928
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getSerializedSize()I

    .line 1929
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1930
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->userId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1932
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1933
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->productId_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1935
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 1936
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getImeiBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1938
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 1939
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getSourceCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1941
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 1942
    const/4 v0, 0x5

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->position_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1944
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 1945
    const/4 v0, 0x6

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->compress_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1947
    :cond_5
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 1948
    const/4 v0, 0x7

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->resType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1950
    :cond_6
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 1951
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->os_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1953
    :cond_7
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 1954
    const/16 v0, 0x9

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->themeOs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1956
    :cond_8
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 1957
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getMobileBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1959
    :cond_9
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 1960
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getUserTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1962
    :cond_a
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 1963
    const/16 v0, 0xc

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->source_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1965
    :cond_b
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1966
    return-void
.end method
