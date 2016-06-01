.class public final Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SquareForumListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SquareForumListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_forum"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    }
.end annotation


# static fields
.field public static final DESC_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final ISPOST_FIELD_NUMBER:I = 0x8

.field public static final MOBILE_FIELD_NUMBER:I = 0xb

.field public static final PIC_FIELD_NUMBER:I = 0x9

.field public static final POSITION_FIELD_NUMBER:I = 0xa

.field public static final RID_FIELD_NUMBER:I = 0x3

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field public static final TOPICID_FIELD_NUMBER:I = 0x7

.field public static final TOPIC_FIELD_NUMBER:I = 0x6

.field public static final TYPE_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private desc_:Ljava/lang/Object;

.field private id_:I

.field private ispost_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mobile_:Ljava/lang/Object;

.field private pic_:Ljava/lang/Object;

.field private position_:I

.field private rid_:J

.field private title_:Ljava/lang/Object;

.field private topic_:Ljava/lang/Object;

.field private topicid_:I

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1237
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->defaultInstance:Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    .line 1238
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->defaultInstance:Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->initFields()V

    .line 1239
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    .prologue
    const/4 v0, -0x1

    .line 77
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 358
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->memoizedIsInitialized:B

    .line 416
    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->memoizedSerializedSize:I

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;Lcom/oppo/tribune/protobuf/SquareForumListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;-><init>(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 80
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 358
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->memoizedIsInitialized:B

    .line 416
    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->memoizedSerializedSize:I

    .line 81
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->desc_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->type_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->topic_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->topicid_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->ispost_:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->pic_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->position_:I

    return p1
.end method

.method static synthetic access$1702(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->mobile_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->id_:I

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .param p1, "x1"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->rid_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->defaultInstance:Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    return-object v0
.end method

.method private getDescBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->desc_:Ljava/lang/Object;

    .line 184
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 185
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 187
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->desc_:Ljava/lang/Object;

    .line 190
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
    .line 94
    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getMobileBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 333
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->mobile_:Ljava/lang/Object;

    .line 334
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 335
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 337
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->mobile_:Ljava/lang/Object;

    .line 340
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
    .line 287
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->pic_:Ljava/lang/Object;

    .line 288
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 289
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 291
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->pic_:Ljava/lang/Object;

    .line 294
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
    .line 137
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->title_:Ljava/lang/Object;

    .line 138
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 139
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 141
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->title_:Ljava/lang/Object;

    .line 144
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
    .line 229
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->topic_:Ljava/lang/Object;

    .line 230
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 231
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 233
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->topic_:Ljava/lang/Object;

    .line 236
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

    .line 345
    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->id_:I

    .line 346
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->title_:Ljava/lang/Object;

    .line 347
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->rid_:J

    .line 348
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->desc_:Ljava/lang/Object;

    .line 349
    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->type_:I

    .line 350
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->topic_:Ljava/lang/Object;

    .line 351
    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->topicid_:I

    .line 352
    iput-boolean v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->ispost_:Z

    .line 353
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->pic_:Ljava/lang/Object;

    .line 354
    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->position_:I

    .line 355
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->mobile_:Ljava/lang/Object;

    .line 356
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1

    .prologue
    .line 559
    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->create()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->access$300()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    .prologue
    .line 568
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    .line 525
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->access$200(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v1

    .line 528
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    .line 537
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->access$200(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v1

    .line 540
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->access$200(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->access$200(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->access$200(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->access$200(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->access$200(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->access$200(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->access$200(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->access$200(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->defaultInstance:Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 169
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->desc_:Ljava/lang/Object;

    .line 170
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 171
    check-cast v1, Ljava/lang/String;

    .line 178
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 173
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 174
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->desc_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 178
    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->id_:I

    return v0
.end method

.method public getIspost()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->ispost_:Z

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 4

    .prologue
    .line 319
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->mobile_:Ljava/lang/Object;

    .line 320
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 321
    check-cast v1, Ljava/lang/String;

    .line 328
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 323
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 324
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->mobile_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 328
    goto :goto_0
.end method

.method public getPic()Ljava/lang/String;
    .locals 4

    .prologue
    .line 273
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->pic_:Ljava/lang/Object;

    .line 274
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 275
    check-cast v1, Ljava/lang/String;

    .line 282
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 277
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 278
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->pic_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 282
    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->position_:I

    return v0
.end method

.method public getRid()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->rid_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 419
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->memoizedSerializedSize:I

    .line 420
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 470
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 423
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 424
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 425
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->id_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 428
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 429
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 432
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 433
    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->rid_:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 436
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_4

    .line 437
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDescBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 440
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 441
    const/4 v2, 0x5

    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->type_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 444
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 445
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getTopicBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 448
    :cond_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 449
    const/4 v2, 0x7

    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->topicid_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 452
    :cond_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 453
    iget-boolean v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->ispost_:Z

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 456
    :cond_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 457
    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getPicBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 460
    :cond_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 461
    const/16 v2, 0xa

    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->position_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 464
    :cond_a
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 465
    const/16 v2, 0xb

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getMobileBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 468
    :cond_b
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 469
    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->memoizedSerializedSize:I

    move v1, v0

    .line 470
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->title_:Ljava/lang/Object;

    .line 124
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 125
    check-cast v1, Ljava/lang/String;

    .line 132
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 127
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 128
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->title_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 132
    goto :goto_0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->topic_:Ljava/lang/Object;

    .line 216
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 217
    check-cast v1, Ljava/lang/String;

    .line 224
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 219
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 220
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->topic_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 224
    goto :goto_0
.end method

.method public getTopicid()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->topicid_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->type_:I

    return v0
.end method

.method public hasDesc()Z
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 107
    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIspost()Z
    .locals 2

    .prologue
    .line 257
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

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

.method public hasMobile()Z
    .locals 2

    .prologue
    .line 315
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPic()Z
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

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

.method public hasPosition()Z
    .locals 2

    .prologue
    .line 303
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

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

.method public hasRid()Z
    .locals 2

    .prologue
    .line 153
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

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
    .line 119
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

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
    .line 211
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

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

.method public hasTopicid()Z
    .locals 2

    .prologue
    .line 245
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

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
    .line 98
    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 361
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->memoizedIsInitialized:B

    .line 362
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 363
    if-ne v0, v1, :cond_0

    .line 374
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 363
    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->hasId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 366
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->memoizedIsInitialized:B

    move v1, v2

    .line 367
    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->hasTitle()Z

    move-result v3

    if-nez v3, :cond_3

    .line 370
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->memoizedIsInitialized:B

    move v1, v2

    .line 371
    goto :goto_0

    .line 373
    :cond_3
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilderForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilderForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1

    .prologue
    .line 563
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 578
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SquareForumListProto$1;)V

    .line 579
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->toBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->toBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1

    .prologue
    .line 572
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilder(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

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
    .line 478
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

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 379
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getSerializedSize()I

    .line 380
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 381
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->id_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 383
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 384
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 386
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 387
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->rid_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 389
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    .line 390
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDescBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 392
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 393
    const/4 v0, 0x5

    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 395
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 396
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getTopicBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 398
    :cond_5
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 399
    const/4 v0, 0x7

    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->topicid_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 401
    :cond_6
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 402
    iget-boolean v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->ispost_:Z

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 404
    :cond_7
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 405
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getPicBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 407
    :cond_8
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 408
    const/16 v0, 0xa

    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->position_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 410
    :cond_9
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 411
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getMobileBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 413
    :cond_a
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 414
    return-void
.end method
