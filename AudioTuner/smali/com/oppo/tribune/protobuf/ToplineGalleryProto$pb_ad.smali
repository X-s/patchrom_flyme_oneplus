.class public final Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ToplineGalleryProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ToplineGalleryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_ad"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final PIC_FIELD_NUMBER:I = 0x6

.field public static final RID_FIELD_NUMBER:I = 0x4

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field public static final URL_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pic_:Ljava/lang/Object;

.field private rid_:J

.field private title_:Ljava/lang/Object;

.field private type_:I

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 838
    new-instance v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->defaultInstance:Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    .line 839
    sget-object v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->defaultInstance:Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->initFields()V

    .line 840
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    .prologue
    const/4 v0, -0x1

    .line 52
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 224
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->memoizedIsInitialized:B

    .line 267
    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->memoizedSerializedSize:I

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;Lcom/oppo/tribune/protobuf/ToplineGalleryProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$1;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;-><init>(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 55
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 224
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->memoizedIsInitialized:B

    .line 267
    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->memoizedSerializedSize:I

    .line 56
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->rid_:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->pic_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->id_:I

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->type_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->defaultInstance:Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 69
    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->internal_static_protobuf_pb_ad_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPicBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 204
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->pic_:Ljava/lang/Object;

    .line 205
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 206
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 208
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->pic_:Ljava/lang/Object;

    .line 211
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
    .line 112
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->title_:Ljava/lang/Object;

    .line 113
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 114
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 116
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->title_:Ljava/lang/Object;

    .line 119
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

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->url_:Ljava/lang/Object;

    .line 171
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 172
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 174
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->url_:Ljava/lang/Object;

    .line 177
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

    .line 216
    iput v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->id_:I

    .line 217
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->title_:Ljava/lang/Object;

    .line 218
    iput v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->type_:I

    .line 219
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->rid_:J

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->url_:Ljava/lang/Object;

    .line 221
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->pic_:Ljava/lang/Object;

    .line 222
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1

    .prologue
    .line 390
    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->create()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->access$300()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    .prologue
    .line 399
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    .line 356
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->access$200(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v1

    .line 359
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    .line 368
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->access$200(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v1

    .line 371
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->access$200(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->access$200(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->access$200(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->access$200(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->access$200(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->access$200(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->access$200(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->access$200(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->defaultInstance:Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->id_:I

    return v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 4

    .prologue
    .line 190
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->pic_:Ljava/lang/Object;

    .line 191
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 192
    check-cast v1, Ljava/lang/String;

    .line 199
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 194
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 195
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->pic_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 199
    goto :goto_0
.end method

.method public getRid()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->rid_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 270
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->memoizedSerializedSize:I

    .line 271
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 301
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 274
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 275
    iget v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 276
    iget v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->id_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 279
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 280
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 283
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 284
    const/4 v2, 0x3

    iget v3, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->type_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 287
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 288
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->rid_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 291
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 292
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 295
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 296
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getPicBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 299
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 300
    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->memoizedSerializedSize:I

    move v1, v0

    .line 301
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->title_:Ljava/lang/Object;

    .line 99
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 100
    check-cast v1, Ljava/lang/String;

    .line 107
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 102
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 103
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->title_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 107
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->type_:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 156
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->url_:Ljava/lang/Object;

    .line 157
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 158
    check-cast v1, Ljava/lang/String;

    .line 165
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 160
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 161
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 165
    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 82
    iget v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPic()Z
    .locals 2

    .prologue
    .line 186
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

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

.method public hasRid()Z
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

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
    .line 94
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

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

.method public hasUrl()Z
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 73
    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->internal_static_protobuf_pb_ad_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->memoizedIsInitialized:B

    .line 228
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 229
    if-ne v0, v1, :cond_0

    .line 240
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 229
    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->hasId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 232
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->memoizedIsInitialized:B

    move v1, v2

    .line 233
    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->hasTitle()Z

    move-result v3

    if-nez v3, :cond_3

    .line 236
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->memoizedIsInitialized:B

    move v1, v2

    .line 237
    goto :goto_0

    .line 239
    :cond_3
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilderForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilderForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 409
    new-instance v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ToplineGalleryProto$1;)V

    .line 410
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->toBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->toBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1

    .prologue
    .line 403
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilder(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

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
    .line 309
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
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 245
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getSerializedSize()I

    .line 246
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 247
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->id_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 249
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 252
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 253
    const/4 v0, 0x3

    iget v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 255
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 256
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->rid_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 258
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 259
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 261
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 262
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getPicBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 264
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 265
    return-void
.end method
