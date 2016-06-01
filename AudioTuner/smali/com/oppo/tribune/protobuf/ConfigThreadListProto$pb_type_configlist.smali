.class public final Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ConfigThreadListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ConfigThreadListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_type_configlist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    }
.end annotation


# static fields
.field public static final CONFIGLIST_FIELD_NUMBER:I = 0xb

.field public static final FID_FIELD_NUMBER:I = 0x1

.field public static final FORUM_THREADCOUNT_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x4

.field public static final PAGE_FIELD_NUMBER:I = 0xc

.field public static final PERPAGE_FIELD_NUMBER:I = 0xd

.field public static final PICURL_FIELD_NUMBER:I = 0x6

.field public static final TOTAL_FIELD_NUMBER:I = 0xe

.field public static final TPP_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private configlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;",
            ">;"
        }
    .end annotation
.end field

.field private fid_:J

.field private forumThreadcount_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private page_:I

.field private perpage_:I

.field private picurl_:Ljava/lang/Object;

.field private total_:I

.field private tpp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1100
    new-instance v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    .line 1101
    sget-object v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->initFields()V

    .line 1102
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    .prologue
    const/4 v0, -0x1

    .line 61
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 241
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->memoizedIsInitialized:B

    .line 289
    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->memoizedSerializedSize:I

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;Lcom/oppo/tribune/protobuf/ConfigThreadListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$1;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;-><init>(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 63
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 241
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->memoizedIsInitialized:B

    .line 289
    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->memoizedSerializedSize:I

    .line 63
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->total_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->fid_:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->forumThreadcount_:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->tpp_:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->picurl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    return p1
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->page_:I

    return p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->perpage_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 76
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->internal_static_protobuf_pb_type_configlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->name_:Ljava/lang/Object;

    .line 188
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 189
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 191
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->name_:Ljava/lang/Object;

    .line 194
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

.method private getPicurlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 219
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->picurl_:Ljava/lang/Object;

    .line 220
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 221
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 223
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->picurl_:Ljava/lang/Object;

    .line 226
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

    .line 231
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;

    .line 232
    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->page_:I

    .line 233
    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->perpage_:I

    .line 234
    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->total_:I

    .line 235
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->fid_:J

    .line 236
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->forumThreadcount_:J

    .line 237
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->tpp_:J

    .line 238
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->name_:Ljava/lang/Object;

    .line 239
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->picurl_:Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1

    .prologue
    .line 410
    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->create()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->access$300()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    .prologue
    .line 413
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    .line 380
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v1

    .line 383
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    .line 391
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v1

    .line 394
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfiglist(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    return-object v0
.end method

.method public getConfiglistCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getConfiglistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;

    return-object v0
.end method

.method public getConfiglistOrBuilder(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_configOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_configOrBuilder;

    return-object v0
.end method

.method public getConfiglistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_configOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    return-object v0
.end method

.method public getFid()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->fid_:J

    return-wide v0
.end method

.method public getForumThreadcount()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->forumThreadcount_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 173
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->name_:Ljava/lang/Object;

    .line 174
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 175
    check-cast v1, Ljava/lang/String;

    .line 183
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 177
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 179
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 183
    goto :goto_0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->page_:I

    return v0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->perpage_:I

    return v0
.end method

.method public getPicurl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 205
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->picurl_:Ljava/lang/Object;

    .line 206
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 207
    check-cast v1, Ljava/lang/String;

    .line 215
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 209
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 211
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->picurl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 215
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 291
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->memoizedSerializedSize:I

    .line 292
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 333
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 294
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 295
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 296
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->fid_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 299
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    .line 300
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->forumThreadcount_:J

    invoke-static {v7, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 303
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    .line 304
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->tpp_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 307
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_4

    .line 308
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 311
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_5

    .line 312
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getPicurlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 315
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 316
    const/16 v4, 0xb

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    :cond_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_7

    .line 320
    const/16 v3, 0xc

    iget v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->page_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 323
    :cond_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v7, :cond_8

    .line 324
    const/16 v3, 0xd

    iget v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->perpage_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 327
    :cond_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v8, :cond_9

    .line 328
    const/16 v3, 0xe

    iget v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->total_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 331
    :cond_9
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 332
    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->memoizedSerializedSize:I

    move v2, v1

    .line 333
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->total_:I

    return v0
.end method

.method public getTpp()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->tpp_:J

    return-wide v0
.end method

.method public hasFid()Z
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

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

.method public hasForumThreadcount()Z
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 170
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

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

.method public hasPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 110
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPerpage()Z
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

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

.method public hasPicurl()Z
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

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

.method public hasTotal()Z
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

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

.method public hasTpp()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 81
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->internal_static_protobuf_pb_type_configlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 243
    iget-byte v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->memoizedIsInitialized:B

    .line 244
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 253
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 244
    goto :goto_0

    .line 246
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getConfiglistCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 247
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getConfiglist(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 248
    iput-byte v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->memoizedIsInitialized:B

    move v2, v3

    .line 249
    goto :goto_0

    .line 246
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_3
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilderForType()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilderForType()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1

    .prologue
    .line 411
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 420
    new-instance v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ConfigThreadListProto$1;)V

    .line 421
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->toBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->toBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1

    .prologue
    .line 415
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->newBuilder(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

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
    .line 340
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 258
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getSerializedSize()I

    .line 259
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 260
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->fid_:J

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 262
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 263
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->forumThreadcount_:J

    invoke-virtual {p1, v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 265
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 266
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->tpp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 268
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_3

    .line 269
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 271
    :cond_3
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_4

    .line 272
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getPicurlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 274
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 275
    const/16 v2, 0xb

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_5
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_6

    .line 278
    const/16 v1, 0xc

    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->page_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 280
    :cond_6
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_7

    .line 281
    const/16 v1, 0xd

    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->perpage_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 283
    :cond_7
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v6, :cond_8

    .line 284
    const/16 v1, 0xe

    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->total_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 286
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 287
    return-void
.end method
