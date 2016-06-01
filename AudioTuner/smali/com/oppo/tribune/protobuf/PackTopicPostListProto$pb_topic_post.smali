.class public final Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PackTopicPostListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_postOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackTopicPostListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_topic_post"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 506
    new-instance v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->defaultInstance:Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    .line 507
    sget-object v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->defaultInstance:Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->initFields()V

    .line 508
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 109
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->memoizedIsInitialized:B

    .line 140
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->memoizedSerializedSize:I

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;Lcom/oppo/tribune/protobuf/PackTopicPostListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;-><init>(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 109
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->memoizedIsInitialized:B

    .line 140
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->memoizedSerializedSize:I

    .line 37
    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->id_:I

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->defaultInstance:Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 50
    # getter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto;->internal_static_pb_topic_post_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->title_:Ljava/lang/Object;

    .line 94
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 95
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 97
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->title_:Ljava/lang/Object;

    .line 100
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
    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->id_:I

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->title_:Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 1

    .prologue
    .line 247
    # invokes: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->create()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->access$300()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    .prologue
    .line 256
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    .line 213
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    # invokes: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v1

    .line 216
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    .line 225
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    # invokes: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v1

    .line 228
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->defaultInstance:Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->id_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 143
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->memoizedSerializedSize:I

    .line 144
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 158
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 147
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 148
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 149
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->id_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 152
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 157
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->memoizedSerializedSize:I

    move v1, v0

    .line 158
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->title_:Ljava/lang/Object;

    .line 80
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 81
    check-cast v1, Ljava/lang/String;

    .line 88
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 83
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 84
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->title_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 88
    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 63
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 54
    # getter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto;->internal_static_pb_topic_post_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->memoizedIsInitialized:B

    .line 113
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 114
    if-ne v0, v1, :cond_0

    .line 125
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 114
    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->hasId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->memoizedIsInitialized:B

    move v1, v2

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->hasTitle()Z

    move-result v3

    if-nez v3, :cond_3

    .line 121
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->memoizedIsInitialized:B

    move v1, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_3
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilderForType()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilderForType()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 266
    new-instance v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PackTopicPostListProto$1;)V

    .line 267
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->toBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->toBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 1

    .prologue
    .line 260
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilder(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

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
    .line 166
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 130
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getSerializedSize()I

    .line 131
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->id_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 134
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 138
    return-void
.end method
