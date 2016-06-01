.class public final Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
.super Lcom/google/protobuf/GeneratedMessage;
.source "UserCollectionProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/UserCollectionProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_user_collection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    }
.end annotation


# static fields
.field public static final CONFIG_ID_FIELD_NUMBER:I = 0x1

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final UPDATE_TIME_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private configId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:I

.field private updateTime_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 480
    new-instance v0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->defaultInstance:Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    .line 481
    sget-object v0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->defaultInstance:Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->initFields()V

    .line 482
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 90
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->memoizedIsInitialized:B

    .line 126
    iput v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->memoizedSerializedSize:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;Lcom/oppo/tribune/protobuf/UserCollectionProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/UserCollectionProto$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;-><init>(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 90
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->memoizedIsInitialized:B

    .line 126
    iput v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->memoizedSerializedSize:I

    .line 33
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->configId_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->status_:I

    return p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->updateTime_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->defaultInstance:Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 46
    # getter for: Lcom/oppo/tribune/protobuf/UserCollectionProto;->internal_static_protobuf_pb_user_collection_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->configId_:J

    .line 87
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->status_:I

    .line 88
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->updateTime_:I

    .line 89
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 1

    .prologue
    .line 223
    # invokes: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->create()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->access$300()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    .prologue
    .line 226
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    .line 193
    .local v0, "builder":Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    # invokes: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v1

    .line 196
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    .line 204
    .local v0, "builder":Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    # invokes: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v1

    .line 207
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfigId()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->configId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->defaultInstance:Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 128
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->memoizedSerializedSize:I

    .line 129
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 146
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 131
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 132
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 133
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->configId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 136
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 137
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->status_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 140
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 141
    const/4 v2, 0x3

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->updateTime_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 145
    iput v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->memoizedSerializedSize:I

    move v1, v0

    .line 146
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->status_:I

    return v0
.end method

.method public getUpdateTime()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->updateTime_:I

    return v0
.end method

.method public hasConfigId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 59
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->bitField0_:I

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

.method public hasUpdateTime()Z
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->bitField0_:I

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
    .line 51
    # getter for: Lcom/oppo/tribune/protobuf/UserCollectionProto;->internal_static_protobuf_pb_user_collection_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->memoizedIsInitialized:B

    .line 93
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 108
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 93
    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->hasConfigId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 96
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->memoizedIsInitialized:B

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_3

    .line 100
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->memoizedIsInitialized:B

    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->hasUpdateTime()Z

    move-result v3

    if-nez v3, :cond_4

    .line 104
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->memoizedIsInitialized:B

    goto :goto_1

    .line 107
    :cond_4
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->memoizedIsInitialized:B

    move v2, v1

    .line 108
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilderForType()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilderForType()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 233
    new-instance v0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/UserCollectionProto$1;)V

    .line 234
    .local v0, "builder":Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->toBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->toBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 1

    .prologue
    .line 228
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->newBuilder(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

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
    .line 153
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 113
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->getSerializedSize()I

    .line 114
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 115
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->configId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 117
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 118
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->status_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 120
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 121
    const/4 v0, 0x3

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->updateTime_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 124
    return-void
.end method
