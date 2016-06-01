.class public final Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ConfigNumProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_numOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ConfigNumProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_config_num"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    }
.end annotation


# static fields
.field public static final CONFIG_NUM_FIELD_NUMBER:I = 0x3

.field public static final REQUEST_NUM_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final TYPE_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private configNum_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestNum_:I

.field private typeId_:J

.field private type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 649
    new-instance v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    .line 650
    sget-object v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->initFields()V

    .line 651
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 145
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->memoizedIsInitialized:B

    .line 190
    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->memoizedSerializedSize:I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;Lcom/oppo/tribune/protobuf/ConfigNumProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;-><init>(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 145
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->memoizedIsInitialized:B

    .line 190
    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->memoizedSerializedSize:I

    .line 47
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->requestNum_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .param p1, "x1"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->typeId_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->configNum_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 60
    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto;->internal_static_protobuf_pb_config_num_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->type_:Ljava/lang/Object;

    .line 104
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 105
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 107
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->type_:Ljava/lang/Object;

    .line 110
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

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->typeId_:J

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->type_:Ljava/lang/Object;

    .line 141
    iput v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->configNum_:I

    .line 142
    iput v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->requestNum_:I

    .line 143
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 1

    .prologue
    .line 305
    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->create()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->access$300()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    .prologue
    .line 314
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    .line 271
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v1

    .line 274
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    .line 283
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v1

    .line 286
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfigNum()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->configNum_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    return-object v0
.end method

.method public getRequestNum()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->requestNum_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 193
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->memoizedSerializedSize:I

    .line 194
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 216
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 197
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 198
    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 199
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->typeId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 202
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 203
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 206
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 207
    const/4 v2, 0x3

    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->configNum_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 210
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 211
    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->requestNum_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 214
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 215
    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->memoizedSerializedSize:I

    move v1, v0

    .line 216
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->type_:Ljava/lang/Object;

    .line 90
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 91
    check-cast v1, Ljava/lang/String;

    .line 98
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 93
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 94
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->type_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 98
    goto :goto_0
.end method

.method public getTypeId()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->typeId_:J

    return-wide v0
.end method

.method public hasConfigNum()Z
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->bitField0_:I

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

.method public hasRequestNum()Z
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->bitField0_:I

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

.method public hasTypeId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 73
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->bitField0_:I

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
    .line 64
    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto;->internal_static_protobuf_pb_config_num_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->memoizedIsInitialized:B

    .line 149
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 150
    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 169
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 150
    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->hasTypeId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 153
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->memoizedIsInitialized:B

    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->hasType()Z

    move-result v3

    if-nez v3, :cond_3

    .line 157
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->memoizedIsInitialized:B

    goto :goto_1

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->hasConfigNum()Z

    move-result v3

    if-nez v3, :cond_4

    .line 161
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->memoizedIsInitialized:B

    goto :goto_1

    .line 164
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->hasRequestNum()Z

    move-result v3

    if-nez v3, :cond_5

    .line 165
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->memoizedIsInitialized:B

    goto :goto_1

    .line 168
    :cond_5
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->memoizedIsInitialized:B

    move v2, v1

    .line 169
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilderForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilderForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 324
    new-instance v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ConfigNumProto$1;)V

    .line 325
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->toBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->toBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 1

    .prologue
    .line 318
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilder(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

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
    .line 224
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

    .line 174
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getSerializedSize()I

    .line 175
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 176
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->typeId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 178
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 181
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 182
    const/4 v0, 0x3

    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->configNum_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 184
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 185
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->requestNum_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 188
    return-void
.end method
