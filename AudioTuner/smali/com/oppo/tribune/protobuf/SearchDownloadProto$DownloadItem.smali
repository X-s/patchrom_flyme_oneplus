.class public final Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SearchDownloadProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchDownloadProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    }
.end annotation


# static fields
.field public static final FILEURL_FIELD_NUMBER:I = 0x5

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final KEY_FIELD_NUMBER:I = 0x4

.field public static final MASTERID_FIELD_NUMBER:I = 0xa

.field public static final P2SOPEN_FIELD_NUMBER:I = 0x9

.field public static final REMARK_FIELD_NUMBER:I = 0x8

.field public static final STATUS_FIELD_NUMBER:I = 0x3

.field public static final SUBURL_FIELD_NUMBER:I = 0x6

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final VERSIONCODE_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private fileUrl_:Ljava/lang/Object;

.field private id_:J

.field private key_:Ljava/lang/Object;

.field private masterId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private p2SOpen_:I

.field private remark_:Ljava/lang/Object;

.field private status_:I

.field private subUrl_:Ljava/lang/Object;

.field private type_:I

.field private versionCode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1119
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    .line 1120
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->initFields()V

    .line 1121
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    .prologue
    const/4 v0, -0x1

    .line 73
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 319
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->memoizedIsInitialized:B

    .line 366
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->memoizedSerializedSize:I

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;-><init>(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 76
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 319
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->memoizedIsInitialized:B

    .line 366
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->memoizedSerializedSize:I

    .line 77
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->fileUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->subUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->versionCode_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->remark_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->p2SOpen_:I

    return p1
.end method

.method static synthetic access$1602(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .param p1, "x1"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->masterId_:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .param p1, "x1"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->id_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->type_:I

    return p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->status_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 90
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getFileUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->fileUrl_:Ljava/lang/Object;

    .line 192
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 193
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 195
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->fileUrl_:Ljava/lang/Object;

    .line 198
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

.method private getKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->key_:Ljava/lang/Object;

    .line 158
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 159
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 161
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->key_:Ljava/lang/Object;

    .line 164
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

.method private getRemarkBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 271
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->remark_:Ljava/lang/Object;

    .line 272
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 273
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 275
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->remark_:Ljava/lang/Object;

    .line 278
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

.method private getSubUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 225
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->subUrl_:Ljava/lang/Object;

    .line 226
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 227
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 229
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->subUrl_:Ljava/lang/Object;

    .line 232
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
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 307
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->id_:J

    .line 308
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->type_:I

    .line 309
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->status_:I

    .line 310
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->key_:Ljava/lang/Object;

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->fileUrl_:Ljava/lang/Object;

    .line 312
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->subUrl_:Ljava/lang/Object;

    .line 313
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->versionCode_:I

    .line 314
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->remark_:Ljava/lang/Object;

    .line 315
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->p2SOpen_:I

    .line 316
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->masterId_:J

    .line 317
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1

    .prologue
    .line 505
    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->create()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->access$300()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    .prologue
    .line 514
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    .line 471
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v1

    .line 474
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    .line 483
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v1

    .line 486
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    return-object v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->fileUrl_:Ljava/lang/Object;

    .line 178
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 179
    check-cast v1, Ljava/lang/String;

    .line 186
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 181
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 182
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->fileUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 186
    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->id_:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->key_:Ljava/lang/Object;

    .line 144
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 145
    check-cast v1, Ljava/lang/String;

    .line 152
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 147
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 148
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->key_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 152
    goto :goto_0
.end method

.method public getMasterId()J
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->masterId_:J

    return-wide v0
.end method

.method public getP2SOpen()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->p2SOpen_:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 4

    .prologue
    .line 257
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->remark_:Ljava/lang/Object;

    .line 258
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 259
    check-cast v1, Ljava/lang/String;

    .line 266
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 261
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 262
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->remark_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 266
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 369
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->memoizedSerializedSize:I

    .line 370
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 416
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 373
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 374
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 375
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->id_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 378
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 379
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->type_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 382
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 383
    const/4 v2, 0x3

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->status_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 386
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_4

    .line 387
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 390
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 391
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getFileUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 394
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 395
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getSubUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 398
    :cond_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 399
    const/4 v2, 0x7

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->versionCode_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 402
    :cond_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 403
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getRemarkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 406
    :cond_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 407
    const/16 v2, 0x9

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->p2SOpen_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 410
    :cond_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 411
    const/16 v2, 0xa

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->masterId_:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 414
    :cond_a
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 415
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->memoizedSerializedSize:I

    move v1, v0

    .line 416
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->status_:I

    return v0
.end method

.method public getSubUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 211
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->subUrl_:Ljava/lang/Object;

    .line 212
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 213
    check-cast v1, Ljava/lang/String;

    .line 220
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 215
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 216
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->subUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 220
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->type_:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->versionCode_:I

    return v0
.end method

.method public hasFileUrl()Z
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 103
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKey()Z
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

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

.method public hasMasterId()Z
    .locals 2

    .prologue
    .line 299
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

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

.method public hasP2SOpen()Z
    .locals 2

    .prologue
    .line 287
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

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

.method public hasRemark()Z
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

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

.method public hasSubUrl()Z
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

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
    .line 115
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

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

.method public hasVersionCode()Z
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 94
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 322
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->memoizedIsInitialized:B

    .line 323
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 324
    if-ne v0, v1, :cond_0

    .line 327
    :goto_0
    return v1

    .line 324
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 326
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilderForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilderForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1

    .prologue
    .line 509
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 524
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;)V

    .line 525
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->toBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->toBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilder(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

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
    .line 424
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

    .line 332
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getSerializedSize()I

    .line 333
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 334
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->id_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 336
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 337
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->type_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 339
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 340
    const/4 v0, 0x3

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 342
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    .line 343
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 345
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 346
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getFileUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 348
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 349
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getSubUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 351
    :cond_5
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 352
    const/4 v0, 0x7

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->versionCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 354
    :cond_6
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 355
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getRemarkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 357
    :cond_7
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 358
    const/16 v0, 0x9

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->p2SOpen_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 360
    :cond_8
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 361
    const/16 v0, 0xa

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->masterId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 363
    :cond_9
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 364
    return-void
.end method
