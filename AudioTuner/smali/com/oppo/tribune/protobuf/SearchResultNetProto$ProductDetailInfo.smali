.class public final Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SearchResultNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchResultNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProductDetailInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    }
.end annotation


# static fields
.field public static final COMMENT_FIELD_NUMBER:I = 0x2

.field public static final FAVORITE_FIELD_NUMBER:I = 0x4

.field public static final FSURL_FIELD_NUMBER:I = 0x5

.field public static final PRODUCT_FIELD_NUMBER:I = 0x1

.field public static final RATING_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private comment_:Ljava/lang/Object;

.field private favorite_:I

.field private fsUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

.field private rating_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8672
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    .line 8673
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->initFields()V

    .line 8674
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    .prologue
    const/4 v0, -0x1

    .line 7905
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 8047
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->memoizedIsInitialized:B

    .line 8079
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->memoizedSerializedSize:I

    .line 7906
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;

    .prologue
    .line 7900
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;-><init>(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 7908
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 8047
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->memoizedIsInitialized:B

    .line 8079
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->memoizedSerializedSize:I

    .line 7909
    return-void
.end method

.method static synthetic access$10600()Z
    .locals 1

    .prologue
    .line 7900
    sget-boolean v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10802(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .param p1, "x1"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .prologue
    .line 7900
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    return-object p1
.end method

.method static synthetic access$10902(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 7900
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->comment_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11002(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;D)D
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .param p1, "x1"    # D

    .prologue
    .line 7900
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->rating_:D

    return-wide p1
.end method

.method static synthetic access$11102(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7900
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->favorite_:I

    return p1
.end method

.method static synthetic access$11202(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 7900
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->fsUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11302(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7900
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

    return p1
.end method

.method private getCommentBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 7969
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->comment_:Ljava/lang/Object;

    .line 7970
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7971
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7973
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->comment_:Ljava/lang/Object;

    .line 7976
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

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 1

    .prologue
    .line 7914
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7922
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_ProductDetailInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$10100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getFsUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 8027
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->fsUrl_:Ljava/lang/Object;

    .line 8028
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8029
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8031
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->fsUrl_:Ljava/lang/Object;

    .line 8034
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
    .line 8039
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .line 8041
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->comment_:Ljava/lang/Object;

    .line 8042
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->rating_:D

    .line 8043
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->favorite_:I

    .line 8044
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->fsUrl_:Ljava/lang/Object;

    .line 8045
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1

    .prologue
    .line 8198
    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->create()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->access$10400()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    .prologue
    .line 8207
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8163
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    .line 8164
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8165
    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->access$10300(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v1

    .line 8167
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8175
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    .line 8176
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8177
    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->access$10300(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v1

    .line 8179
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8123
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->access$10300(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8130
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->access$10300(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8186
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->access$10300(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8193
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->access$10300(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8150
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->access$10300(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8157
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->access$10300(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8137
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->access$10300(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8144
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;->access$10300(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7955
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->comment_:Ljava/lang/Object;

    .line 7956
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7957
    check-cast v1, Ljava/lang/String;

    .line 7964
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 7959
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7960
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7961
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7962
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->comment_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7964
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7900
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7900
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;
    .locals 1

    .prologue
    .line 7918
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    return-object v0
.end method

.method public getFavorite()I
    .locals 1

    .prologue
    .line 8001
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->favorite_:I

    return v0
.end method

.method public getFsUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8013
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->fsUrl_:Ljava/lang/Object;

    .line 8014
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 8015
    check-cast v1, Ljava/lang/String;

    .line 8022
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 8017
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8018
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8019
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8020
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->fsUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8022
    goto :goto_0
.end method

.method public getProduct()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
    .locals 1

    .prologue
    .line 7939
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    return-object v0
.end method

.method public getProductOrBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;
    .locals 1

    .prologue
    .line 7943
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    return-object v0
.end method

.method public getRating()D
    .locals 2

    .prologue
    .line 7989
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->rating_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8082
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->memoizedSerializedSize:I

    .line 8083
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 8109
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 8086
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 8087
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 8088
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8091
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 8092
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getCommentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8095
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 8096
    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->rating_:D

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 8099
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 8100
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->favorite_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8103
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 8104
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getFsUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8107
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 8108
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 8109
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasComment()Z
    .locals 2

    .prologue
    .line 7951
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

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
    .line 7997
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

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
    .line 8009
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

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

    .line 7935
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

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
    .line 7985
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

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
    .line 7926
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_ProductDetailInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$10200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 8050
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->memoizedIsInitialized:B

    .line 8051
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 8052
    if-ne v0, v1, :cond_0

    .line 8055
    :goto_0
    return v1

    .line 8052
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 8054
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7900
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilderForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 7900
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7900
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilderForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1

    .prologue
    .line 8202
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 8217
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;)V

    .line 8218
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7900
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->toBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7900
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->toBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;
    .locals 1

    .prologue
    .line 8211
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->newBuilder(Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

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
    .line 8117
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

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 8060
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getSerializedSize()I

    .line 8061
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8062
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->product_:Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 8064
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 8065
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getCommentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8067
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 8068
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->rating_:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 8070
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 8071
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->favorite_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8073
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 8074
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getFsUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8076
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 8077
    return-void
.end method
