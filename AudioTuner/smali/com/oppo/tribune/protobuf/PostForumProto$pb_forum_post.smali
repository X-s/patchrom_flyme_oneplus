.class public final Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PostForumProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_postOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PostForumProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_forum_post"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final RID_FIELD_NUMBER:I = 0x3

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field public static final TOPICID_FIELD_NUMBER:I = 0x5

.field public static final TOPIC_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private rid_:J

.field private title_:Ljava/lang/Object;

.field private topic_:Ljava/lang/Object;

.field private topicid_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 744
    new-instance v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->defaultInstance:Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    .line 745
    sget-object v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->defaultInstance:Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->initFields()V

    .line 746
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    .prologue
    const/4 v0, -0x1

    .line 48
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 185
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->memoizedIsInitialized:B

    .line 229
    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->memoizedSerializedSize:I

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;Lcom/oppo/tribune/protobuf/PostForumProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PostForumProto$1;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;-><init>(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 51
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 185
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->memoizedIsInitialized:B

    .line 229
    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->memoizedSerializedSize:I

    .line 52
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->topic_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->topicid_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->id_:I

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .param p1, "x1"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->rid_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->defaultInstance:Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 65
    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto;->internal_static_protobuf_pb_forum_post_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->title_:Ljava/lang/Object;

    .line 109
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 110
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 112
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->title_:Ljava/lang/Object;

    .line 115
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

.method private getTopicBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->topic_:Ljava/lang/Object;

    .line 155
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 156
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 158
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->topic_:Ljava/lang/Object;

    .line 161
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

    .line 178
    iput v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->id_:I

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->title_:Ljava/lang/Object;

    .line 180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->rid_:J

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->topic_:Ljava/lang/Object;

    .line 182
    iput v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->topicid_:I

    .line 183
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1

    .prologue
    .line 348
    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->create()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->access$300()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    .prologue
    .line 357
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    .line 314
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v1

    .line 317
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    .line 326
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v1

    .line 329
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->access$200(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->defaultInstance:Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->id_:I

    return v0
.end method

.method public getRid()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->rid_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 232
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->memoizedSerializedSize:I

    .line 233
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 259
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 236
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 237
    iget v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 238
    iget v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->id_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 241
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 242
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 245
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 246
    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->rid_:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 249
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 250
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getTopicBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 253
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 254
    const/4 v2, 0x5

    iget v3, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->topicid_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 257
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 258
    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->memoizedSerializedSize:I

    move v1, v0

    .line 259
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->title_:Ljava/lang/Object;

    .line 95
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 96
    check-cast v1, Ljava/lang/String;

    .line 103
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 98
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 99
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->title_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 103
    goto :goto_0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->topic_:Ljava/lang/Object;

    .line 141
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 142
    check-cast v1, Ljava/lang/String;

    .line 149
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 144
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 145
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->topic_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 149
    goto :goto_0
.end method

.method public getTopicid()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->topicid_:I

    return v0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 78
    iget v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRid()Z
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

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

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

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

.method public hasTopic()Z
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

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

.method public hasTopicid()Z
    .locals 2

    .prologue
    .line 170
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

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
    .line 69
    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto;->internal_static_protobuf_pb_forum_post_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->memoizedIsInitialized:B

    .line 189
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 190
    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 205
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 190
    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->hasId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 193
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->memoizedIsInitialized:B

    goto :goto_1

    .line 196
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->hasTitle()Z

    move-result v3

    if-nez v3, :cond_3

    .line 197
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->memoizedIsInitialized:B

    goto :goto_1

    .line 200
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->hasRid()Z

    move-result v3

    if-nez v3, :cond_4

    .line 201
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->memoizedIsInitialized:B

    goto :goto_1

    .line 204
    :cond_4
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->memoizedIsInitialized:B

    move v2, v1

    .line 205
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilderForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilderForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1

    .prologue
    .line 352
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 367
    new-instance v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PostForumProto$1;)V

    .line 368
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->toBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->toBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1

    .prologue
    .line 361
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilder(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

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
    .line 267
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

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 210
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getSerializedSize()I

    .line 211
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 212
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->id_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 214
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 215
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 217
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 218
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->rid_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 220
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 221
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getTopicBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 223
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 224
    const/4 v0, 0x5

    iget v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->topicid_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 226
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 227
    return-void
.end method
