.class public final Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PackshowTopicsProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topicOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackshowTopicsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_topic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    }
.end annotation


# static fields
.field public static final DESC_FIELD_NUMBER:I = 0x3

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final PIC1_FIELD_NUMBER:I = 0x5

.field public static final PIC_FIELD_NUMBER:I = 0x4

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private desc_:Ljava/lang/Object;

.field private id_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pic1_:Ljava/lang/Object;

.field private pic_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 813
    new-instance v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    .line 814
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->initFields()V

    .line 815
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    .prologue
    const/4 v0, -0x1

    .line 47
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 228
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->memoizedIsInitialized:B

    .line 268
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->memoizedSerializedSize:I

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;Lcom/oppo/tribune/protobuf/PackshowTopicsProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$1;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;-><init>(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 50
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 228
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->memoizedIsInitialized:B

    .line 268
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->memoizedSerializedSize:I

    .line 51
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->pic_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->pic1_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->id_:I

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->desc_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    return-object v0
.end method

.method private getDescBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->desc_:Ljava/lang/Object;

    .line 142
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 143
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 145
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->desc_:Ljava/lang/Object;

    .line 148
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

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 64
    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->internal_static_pb_topic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPic1Bytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 209
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->pic1_:Ljava/lang/Object;

    .line 210
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 211
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 213
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->pic1_:Ljava/lang/Object;

    .line 216
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

.method private getPicBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->pic_:Ljava/lang/Object;

    .line 176
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 177
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 179
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->pic_:Ljava/lang/Object;

    .line 182
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
    .line 107
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->title_:Ljava/lang/Object;

    .line 108
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 109
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 111
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->title_:Ljava/lang/Object;

    .line 114
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
    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->id_:I

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->title_:Ljava/lang/Object;

    .line 223
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->desc_:Ljava/lang/Object;

    .line 224
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->pic_:Ljava/lang/Object;

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->pic1_:Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1

    .prologue
    .line 387
    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->create()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->access$300()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    .prologue
    .line 396
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    .line 353
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v1

    .line 356
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    .line 365
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v1

    .line 368
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->desc_:Ljava/lang/Object;

    .line 128
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 129
    check-cast v1, Ljava/lang/String;

    .line 136
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 131
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 132
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->desc_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 136
    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->id_:I

    return v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->pic_:Ljava/lang/Object;

    .line 162
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 163
    check-cast v1, Ljava/lang/String;

    .line 170
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 165
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 166
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->pic_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 170
    goto :goto_0
.end method

.method public getPic1()Ljava/lang/String;
    .locals 4

    .prologue
    .line 195
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->pic1_:Ljava/lang/Object;

    .line 196
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 197
    check-cast v1, Ljava/lang/String;

    .line 204
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 199
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 200
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->pic1_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 204
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 271
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->memoizedSerializedSize:I

    .line 272
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 298
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 275
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 276
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 277
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->id_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 280
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 281
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 284
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 285
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDescBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 288
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 289
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getPicBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 292
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 293
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getPic1Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 296
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 297
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->memoizedSerializedSize:I

    move v1, v0

    .line 298
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->title_:Ljava/lang/Object;

    .line 94
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 95
    check-cast v1, Ljava/lang/String;

    .line 102
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 97
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 98
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->title_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 102
    goto :goto_0
.end method

.method public hasDesc()Z
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

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

    .line 77
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

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
    .line 157
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

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

.method public hasPic1()Z
    .locals 2

    .prologue
    .line 191
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

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

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

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
    .line 68
    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->internal_static_pb_topic_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->memoizedIsInitialized:B

    .line 232
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 233
    if-ne v0, v1, :cond_0

    .line 244
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 233
    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->hasId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 236
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->memoizedIsInitialized:B

    move v1, v2

    .line 237
    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->hasTitle()Z

    move-result v3

    if-nez v3, :cond_3

    .line 240
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->memoizedIsInitialized:B

    move v1, v2

    .line 241
    goto :goto_0

    .line 243
    :cond_3
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilderForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilderForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1

    .prologue
    .line 391
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 406
    new-instance v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PackshowTopicsProto$1;)V

    .line 407
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->toBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->toBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1

    .prologue
    .line 400
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilder(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

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
    .line 306
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

    .line 249
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getSerializedSize()I

    .line 250
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 251
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->id_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 253
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 256
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 257
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDescBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 259
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 260
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getPicBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 262
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 263
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getPic1Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 265
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 266
    return-void
.end method
