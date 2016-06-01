.class public final Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SearchResultNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchResultNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PublishProductList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    }
.end annotation


# static fields
.field public static final END_FIELD_NUMBER:I = 0x3

.field public static final FSURL_FIELD_NUMBER:I = 0x5

.field public static final PUBLISHPRODUCT_FIELD_NUMBER:I = 0x4

.field public static final START_FIELD_NUMBER:I = 0x2

.field public static final TOTAL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private end_:I

.field private fsUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private publishProduct_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;",
            ">;"
        }
    .end annotation
.end field

.field private start_:I

.field private total_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7862
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    .line 7863
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->initFields()V

    .line 7864
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    .prologue
    const/4 v0, -0x1

    .line 6988
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 7117
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->memoizedIsInitialized:B

    .line 7149
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->memoizedSerializedSize:I

    .line 6989
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;

    .prologue
    .line 6983
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;-><init>(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 6991
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 7117
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->memoizedIsInitialized:B

    .line 7149
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->memoizedSerializedSize:I

    .line 6992
    return-void
.end method

.method static synthetic access$10000()Z
    .locals 1

    .prologue
    .line 6983
    sget-boolean v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9200()Z
    .locals 1

    .prologue
    .line 6983
    sget-boolean v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9402(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .param p1, "x1"    # I

    .prologue
    .line 6983
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->total_:I

    return p1
.end method

.method static synthetic access$9502(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .param p1, "x1"    # I

    .prologue
    .line 6983
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->start_:I

    return p1
.end method

.method static synthetic access$9602(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .param p1, "x1"    # I

    .prologue
    .line 6983
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->end_:I

    return p1
.end method

.method static synthetic access$9700(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    .prologue
    .line 6983
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9702(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 6983
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9802(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 6983
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->fsUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9902(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .param p1, "x1"    # I

    .prologue
    .line 6983
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 1

    .prologue
    .line 6997
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7005
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$8700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getFsUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 7098
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->fsUrl_:Ljava/lang/Object;

    .line 7099
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7100
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7102
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->fsUrl_:Ljava/lang/Object;

    .line 7105
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
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7110
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->total_:I

    .line 7111
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->start_:I

    .line 7112
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->end_:I

    .line 7113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;

    .line 7114
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->fsUrl_:Ljava/lang/Object;

    .line 7115
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1

    .prologue
    .line 7268
    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->create()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->access$9000()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    .prologue
    .line 7277
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7233
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    .line 7234
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7235
    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->access$8900(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v1

    .line 7237
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7245
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    .line 7246
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7247
    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->access$8900(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v1

    .line 7249
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7193
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->access$8900(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7200
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->access$8900(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7256
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->access$8900(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7263
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->access$8900(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7220
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->access$8900(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7227
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->access$8900(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7207
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->access$8900(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7214
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->access$8900(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6983
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6983
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 1

    .prologue
    .line 7001
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 7046
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->end_:I

    return v0
.end method

.method public getFsUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7084
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->fsUrl_:Ljava/lang/Object;

    .line 7085
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7086
    check-cast v1, Ljava/lang/String;

    .line 7093
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 7088
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7089
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7090
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7091
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->fsUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7093
    goto :goto_0
.end method

.method public getPublishProduct(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7067
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    return-object v0
.end method

.method public getPublishProductCount()I
    .locals 1

    .prologue
    .line 7062
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPublishProductList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7054
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;

    return-object v0
.end method

.method public getPublishProductOrBuilder(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7072
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;

    return-object v0
.end method

.method public getPublishProductOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7058
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 7152
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->memoizedSerializedSize:I

    .line 7153
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 7179
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 7156
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 7157
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 7158
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->total_:I

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 7161
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 7162
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->start_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 7165
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 7166
    const/4 v3, 0x3

    iget v4, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->end_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 7169
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 7170
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7173
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 7174
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getFsUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7177
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 7178
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->memoizedSerializedSize:I

    move v2, v1

    .line 7179
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 7034
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->start_:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 7022
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->total_:I

    return v0
.end method

.method public hasEnd()Z
    .locals 2

    .prologue
    .line 7042
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->bitField0_:I

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

.method public hasFsUrl()Z
    .locals 2

    .prologue
    .line 7080
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->bitField0_:I

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

.method public hasStart()Z
    .locals 2

    .prologue
    .line 7030
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->bitField0_:I

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

.method public hasTotal()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7018
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->bitField0_:I

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
    .line 7009
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$8800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 7120
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->memoizedIsInitialized:B

    .line 7121
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 7122
    if-ne v0, v1, :cond_0

    .line 7125
    :goto_0
    return v1

    .line 7122
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 7124
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6983
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilderForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 6983
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6983
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilderForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1

    .prologue
    .line 7272
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 7287
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;)V

    .line 7288
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6983
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->toBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6983
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->toBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1

    .prologue
    .line 7281
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->newBuilder(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

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
    .line 7187
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
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7130
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getSerializedSize()I

    .line 7131
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 7132
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->total_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7134
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 7135
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->start_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7137
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 7138
    const/4 v1, 0x3

    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->end_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7140
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 7141
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7143
    :cond_3
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 7144
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getFsUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7146
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 7147
    return-void
.end method
