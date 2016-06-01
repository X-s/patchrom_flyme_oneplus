.class public final Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PullMsgProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PullMsgProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PullMsg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    }
.end annotation


# static fields
.field public static final EXTRA_FIELD_NUMBER:I = 0x6

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final IMAGE_FIELD_NUMBER:I = 0x5

.field public static final RESTYPE_FIELD_NUMBER:I = 0x2

.field public static final SUMMARY_FIELD_NUMBER:I = 0x4

.field public static final TITLE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private extra_:Ljava/lang/Object;

.field private id_:J

.field private image_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

.field private summary_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 963
    new-instance v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->defaultInstance:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    .line 964
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->defaultInstance:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->initFields()V

    .line 965
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    .prologue
    const/4 v0, -0x1

    .line 143
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 337
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->memoizedIsInitialized:B

    .line 372
    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->memoizedSerializedSize:I

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;Lcom/oppo/tribune/protobuf/PullMsgProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PullMsgProto$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;-><init>(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 146
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 337
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->memoizedIsInitialized:B

    .line 372
    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->memoizedSerializedSize:I

    .line 147
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->summary_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->image_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->extra_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .param p1, "x1"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->id_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .param p1, "x1"    # Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->defaultInstance:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 160
    # getter for: Lcom/oppo/tribune/protobuf/PullMsgProto;->internal_static_protobuf_PullMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getExtraBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 317
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->extra_:Ljava/lang/Object;

    .line 318
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 319
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 321
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->extra_:Ljava/lang/Object;

    .line 324
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

.method private getImageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->image_:Ljava/lang/Object;

    .line 284
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 285
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 287
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->image_:Ljava/lang/Object;

    .line 290
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

.method private getSummaryBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 249
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->summary_:Ljava/lang/Object;

    .line 250
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 251
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 253
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->summary_:Ljava/lang/Object;

    .line 256
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
    .line 215
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->title_:Ljava/lang/Object;

    .line 216
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 217
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 219
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->title_:Ljava/lang/Object;

    .line 222
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
    .line 329
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->id_:J

    .line 330
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_THREAD:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    .line 331
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->title_:Ljava/lang/Object;

    .line 332
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->summary_:Ljava/lang/Object;

    .line 333
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->image_:Ljava/lang/Object;

    .line 334
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->extra_:Ljava/lang/Object;

    .line 335
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1

    .prologue
    .line 495
    # invokes: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->create()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->access$300()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    .prologue
    .line 504
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    .line 461
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    # invokes: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->access$200(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v1

    .line 464
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    .line 473
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    # invokes: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->access$200(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v1

    .line 476
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->access$200(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->access$200(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->access$200(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->access$200(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->access$200(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->access$200(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->access$200(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;->access$200(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->defaultInstance:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 4

    .prologue
    .line 303
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->extra_:Ljava/lang/Object;

    .line 304
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 305
    check-cast v1, Ljava/lang/String;

    .line 312
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 307
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 308
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->extra_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 312
    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->id_:J

    return-wide v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 269
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->image_:Ljava/lang/Object;

    .line 270
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 271
    check-cast v1, Ljava/lang/String;

    .line 278
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 273
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 274
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->image_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 278
    goto :goto_0
.end method

.method public getResType()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 375
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->memoizedSerializedSize:I

    .line 376
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 406
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 379
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 380
    iget v2, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 381
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->id_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 384
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 385
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    invoke-virtual {v2}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->getNumber()I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 388
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 389
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 392
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 393
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getSummaryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 396
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 397
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getImageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 400
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 401
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getExtraBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 404
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 405
    iput v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->memoizedSerializedSize:I

    move v1, v0

    .line 406
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 235
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->summary_:Ljava/lang/Object;

    .line 236
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 237
    check-cast v1, Ljava/lang/String;

    .line 244
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 239
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 240
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->summary_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 244
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->title_:Ljava/lang/Object;

    .line 202
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 203
    check-cast v1, Ljava/lang/String;

    .line 210
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 205
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 206
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->title_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 210
    goto :goto_0
.end method

.method public hasExtra()Z
    .locals 2

    .prologue
    .line 299
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 173
    iget v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 2

    .prologue
    .line 265
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

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

.method public hasResType()Z
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

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

.method public hasSummary()Z
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

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

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 197
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

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
    .line 164
    # getter for: Lcom/oppo/tribune/protobuf/PullMsgProto;->internal_static_protobuf_PullMsg_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 340
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->memoizedIsInitialized:B

    .line 341
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 342
    if-ne v0, v1, :cond_0

    .line 345
    :goto_0
    return v1

    .line 342
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 344
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilderForType()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilderForType()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1

    .prologue
    .line 499
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 514
    new-instance v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PullMsgProto$1;)V

    .line 515
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->toBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->toBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;
    .locals 1

    .prologue
    .line 508
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->newBuilder(Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg$Builder;

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
    .line 414
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

    .line 350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getSerializedSize()I

    .line 351
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 352
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->id_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 354
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 355
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->resType_:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 357
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 358
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 360
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 361
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getSummaryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 363
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 364
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getImageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 366
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 367
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getExtraBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 369
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 370
    return-void
.end method
