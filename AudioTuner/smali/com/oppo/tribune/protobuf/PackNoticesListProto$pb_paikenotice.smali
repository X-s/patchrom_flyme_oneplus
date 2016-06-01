.class public final Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PackNoticesListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackNoticesListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_paikenotice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    }
.end annotation


# static fields
.field public static final DATELINE_FIELD_NUMBER:I = 0x4

.field public static final EXT_FIELD_NUMBER:I = 0x7

.field public static final MSG_FIELD_NUMBER:I = 0x3

.field public static final NUM_FIELD_NUMBER:I = 0x5

.field public static final STATUS_FIELD_NUMBER:I = 0x6

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final UID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private dateline_:I

.field private ext_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private msg_:Ljava/lang/Object;

.field private num_:I

.field private status_:I

.field private type_:I

.field private uid_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 905
    new-instance v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->defaultInstance:Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    .line 906
    sget-object v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->defaultInstance:Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->initFields()V

    .line 907
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    .prologue
    const/4 v0, -0x1

    .line 58
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 221
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->memoizedIsInitialized:B

    .line 287
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->memoizedSerializedSize:I

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;Lcom/oppo/tribune/protobuf/PackNoticesListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;-><init>(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 61
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 221
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->memoizedIsInitialized:B

    .line 287
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->memoizedSerializedSize:I

    .line 62
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->dateline_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->num_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->status_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->ext_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .param p1, "x1"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->uid_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->type_:I

    return p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->msg_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->defaultInstance:Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 75
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getExtBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->ext_:Ljava/lang/Object;

    .line 201
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 202
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 204
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->ext_:Ljava/lang/Object;

    .line 207
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

.method private getMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->msg_:Ljava/lang/Object;

    .line 131
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 132
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 134
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->msg_:Ljava/lang/Object;

    .line 137
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

    .line 212
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->uid_:J

    .line 213
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->type_:I

    .line 214
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->msg_:Ljava/lang/Object;

    .line 215
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->dateline_:I

    .line 216
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->num_:I

    .line 217
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->status_:I

    .line 218
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->ext_:Ljava/lang/Object;

    .line 219
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1

    .prologue
    .line 414
    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->create()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->access$300()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    .prologue
    .line 423
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    .line 380
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v1

    .line 383
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    .line 392
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v1

    .line 395
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDateline()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->dateline_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->defaultInstance:Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->ext_:Ljava/lang/Object;

    .line 187
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 188
    check-cast v1, Ljava/lang/String;

    .line 195
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 190
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 191
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->ext_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 195
    goto :goto_0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->msg_:Ljava/lang/Object;

    .line 117
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 118
    check-cast v1, Ljava/lang/String;

    .line 125
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 120
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 121
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->msg_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 125
    goto :goto_0
.end method

.method public getNum()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->num_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 290
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->memoizedSerializedSize:I

    .line 291
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 325
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 294
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 295
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 296
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->uid_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 299
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 300
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->type_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 303
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 304
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 307
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 308
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->dateline_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 311
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 312
    const/4 v2, 0x5

    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->num_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 315
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 316
    const/4 v2, 0x6

    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->status_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 319
    :cond_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 320
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getExtBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 323
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 324
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->memoizedSerializedSize:I

    move v1, v0

    .line 325
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->status_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->type_:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->uid_:J

    return-wide v0
.end method

.method public hasDateline()Z
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

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

.method public hasExt()Z
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

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

.method public hasMsg()Z
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

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

.method public hasNum()Z
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 170
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

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

.method public hasUid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

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
    .line 79
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->memoizedIsInitialized:B

    .line 225
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 226
    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 257
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 226
    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->hasUid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 229
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->memoizedIsInitialized:B

    goto :goto_1

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->hasType()Z

    move-result v3

    if-nez v3, :cond_3

    .line 233
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->memoizedIsInitialized:B

    goto :goto_1

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->hasMsg()Z

    move-result v3

    if-nez v3, :cond_4

    .line 237
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->memoizedIsInitialized:B

    goto :goto_1

    .line 240
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->hasDateline()Z

    move-result v3

    if-nez v3, :cond_5

    .line 241
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->memoizedIsInitialized:B

    goto :goto_1

    .line 244
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->hasNum()Z

    move-result v3

    if-nez v3, :cond_6

    .line 245
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->memoizedIsInitialized:B

    goto :goto_1

    .line 248
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_7

    .line 249
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->memoizedIsInitialized:B

    goto :goto_1

    .line 252
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->hasExt()Z

    move-result v3

    if-nez v3, :cond_8

    .line 253
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->memoizedIsInitialized:B

    goto :goto_1

    .line 256
    :cond_8
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->memoizedIsInitialized:B

    move v2, v1

    .line 257
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilderForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilderForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 433
    new-instance v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PackNoticesListProto$1;)V

    .line 434
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->toBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->toBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1

    .prologue
    .line 427
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilder(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

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
    .line 333
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

    .line 262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getSerializedSize()I

    .line 263
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 264
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->uid_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 266
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 267
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->type_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 269
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 270
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 272
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 273
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->dateline_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 275
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 276
    const/4 v0, 0x5

    iget v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->num_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 278
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 279
    const/4 v0, 0x6

    iget v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 281
    :cond_5
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 282
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getExtBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 284
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 285
    return-void
.end method
