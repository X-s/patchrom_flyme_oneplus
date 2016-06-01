.class public final Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ResStatNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResStatNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProductStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    }
.end annotation


# static fields
.field public static final DOWNLOADS_FIELD_NUMBER:I = 0x3

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final POOR_FIELD_NUMBER:I = 0x6

.field public static final PRAISE_FIELD_NUMBER:I = 0x5

.field public static final PRODUCTTYPE_FIELD_NUMBER:I = 0x2

.field public static final VIEWS_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private downloads_:I

.field private id_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private poor_:I

.field private praise_:I

.field private productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

.field private views_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 794
    new-instance v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->defaultInstance:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    .line 795
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->defaultInstance:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->initFields()V

    .line 796
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    .prologue
    const/4 v0, -0x1

    .line 129
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 235
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->memoizedIsInitialized:B

    .line 270
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->memoizedSerializedSize:I

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;Lcom/oppo/tribune/protobuf/ResStatNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$1;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;-><init>(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 132
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 235
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->memoizedIsInitialized:B

    .line 270
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->memoizedSerializedSize:I

    .line 133
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->views_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->praise_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->poor_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .param p1, "x1"    # J

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->id_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .param p1, "x1"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->downloads_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->defaultInstance:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 146
    # getter for: Lcom/oppo/tribune/protobuf/ResStatNetProto;->internal_static_protobuf_ProductStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->id_:J

    .line 228
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->GAME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    .line 229
    iput v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->downloads_:I

    .line 230
    iput v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->views_:I

    .line 231
    iput v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->praise_:I

    .line 232
    iput v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->poor_:I

    .line 233
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1

    .prologue
    .line 393
    # invokes: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->create()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->access$300()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    .prologue
    .line 402
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    .line 359
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    # invokes: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v1

    .line 362
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    .line 371
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    # invokes: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v1

    .line 374
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->defaultInstance:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;

    return-object v0
.end method

.method public getDownloads()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->downloads_:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->id_:J

    return-wide v0
.end method

.method public getPoor()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->poor_:I

    return v0
.end method

.method public getPraise()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->praise_:I

    return v0
.end method

.method public getProductType()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 273
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->memoizedSerializedSize:I

    .line 274
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 304
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 277
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 278
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 279
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->id_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 282
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 283
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    invoke-virtual {v2}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->getNumber()I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 286
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 287
    const/4 v2, 0x3

    iget v3, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->downloads_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 290
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 291
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->views_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 294
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 295
    const/4 v2, 0x5

    iget v3, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->praise_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 298
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 299
    const/4 v2, 0x6

    iget v3, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->poor_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 302
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 303
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->memoizedSerializedSize:I

    move v1, v0

    .line 304
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getViews()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->views_:I

    return v0
.end method

.method public hasDownloads()Z
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 159
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPoor()Z
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

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

.method public hasPraise()Z
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

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

.method public hasProductType()Z
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

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

.method public hasViews()Z
    .locals 2

    .prologue
    .line 195
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 150
    # getter for: Lcom/oppo/tribune/protobuf/ResStatNetProto;->internal_static_protobuf_ProductStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->memoizedIsInitialized:B

    .line 239
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 240
    if-ne v0, v1, :cond_0

    .line 243
    :goto_0
    return v1

    .line 240
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 242
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1

    .prologue
    .line 397
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 412
    new-instance v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResStatNetProto$1;)V

    .line 413
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->toBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->toBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;
    .locals 1

    .prologue
    .line 406
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->newBuilder(Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus$Builder;

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
    .line 312
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

    .line 248
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->getSerializedSize()I

    .line 249
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 250
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->id_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 252
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 253
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->productType_:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 255
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 256
    const/4 v0, 0x3

    iget v1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->downloads_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 258
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 259
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->views_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 261
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 262
    const/4 v0, 0x5

    iget v1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->praise_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 264
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 265
    const/4 v0, 0x6

    iget v1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->poor_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 267
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductStatus;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 268
    return-void
.end method
