.class public final Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ThreadUrlInfoProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_urlOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_url"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    }
.end annotation


# static fields
.field public static final DESC_FIELD_NUMBER:I = 0x6

.field public static final EXTRA_FIELD_NUMBER:I = 0x7

.field public static final HTML_FIELD_NUMBER:I = 0x8

.field public static final IMAGE_FIELD_NUMBER:I = 0x5

.field public static final KEY_FIELD_NUMBER:I = 0x1

.field public static final TARGET_FIELD_NUMBER:I = 0x4

.field public static final TITLE_FIELD_NUMBER:I = 0x3

.field public static final URL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private desc_:Ljava/lang/Object;

.field private extra_:Ljava/lang/Object;

.field private html_:Ljava/lang/Object;

.field private image_:Ljava/lang/Object;

.field private key_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private target_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1145
    new-instance v0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->defaultInstance:Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    .line 1146
    sget-object v0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->defaultInstance:Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->initFields()V

    .line 1147
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    .prologue
    const/4 v0, -0x1

    .line 62
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 370
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->memoizedIsInitialized:B

    .line 411
    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->memoizedSerializedSize:I

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$1;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;-><init>(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 370
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->memoizedIsInitialized:B

    .line 411
    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->memoizedSerializedSize:I

    .line 66
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->target_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->image_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->desc_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->extra_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->html_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->defaultInstance:Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    return-object v0
.end method

.method private getDescBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 280
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->desc_:Ljava/lang/Object;

    .line 281
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 282
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 284
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->desc_:Ljava/lang/Object;

    .line 287
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
    .line 79
    # getter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->internal_static_protobuf_pb_url_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getExtraBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->extra_:Ljava/lang/Object;

    .line 315
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 316
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 318
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->extra_:Ljava/lang/Object;

    .line 321
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

.method private getHtmlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 348
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->html_:Ljava/lang/Object;

    .line 349
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 350
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 352
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->html_:Ljava/lang/Object;

    .line 355
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
    .line 246
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->image_:Ljava/lang/Object;

    .line 247
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 248
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 250
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->image_:Ljava/lang/Object;

    .line 253
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
    .line 110
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->key_:Ljava/lang/Object;

    .line 111
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 112
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 114
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->key_:Ljava/lang/Object;

    .line 117
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

.method private getTargetBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->target_:Ljava/lang/Object;

    .line 213
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 214
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 216
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->target_:Ljava/lang/Object;

    .line 219
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
    .line 178
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->title_:Ljava/lang/Object;

    .line 179
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 180
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 182
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->title_:Ljava/lang/Object;

    .line 185
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
    .line 144
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->url_:Ljava/lang/Object;

    .line 145
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 146
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 148
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->url_:Ljava/lang/Object;

    .line 151
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
    .line 360
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->key_:Ljava/lang/Object;

    .line 361
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->url_:Ljava/lang/Object;

    .line 362
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->title_:Ljava/lang/Object;

    .line 363
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->target_:Ljava/lang/Object;

    .line 364
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->image_:Ljava/lang/Object;

    .line 365
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->desc_:Ljava/lang/Object;

    .line 366
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->extra_:Ljava/lang/Object;

    .line 367
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->html_:Ljava/lang/Object;

    .line 368
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1

    .prologue
    .line 542
    # invokes: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->create()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->access$300()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    .prologue
    .line 551
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    .line 508
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    # invokes: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->access$200(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v1

    .line 511
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    .line 520
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    # invokes: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->access$200(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v1

    .line 523
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->access$200(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 474
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->access$200(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->access$200(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->access$200(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->access$200(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->access$200(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 481
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->access$200(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->access$200(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->defaultInstance:Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 266
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->desc_:Ljava/lang/Object;

    .line 267
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 268
    check-cast v1, Ljava/lang/String;

    .line 275
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 270
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 271
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->desc_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 275
    goto :goto_0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 4

    .prologue
    .line 300
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->extra_:Ljava/lang/Object;

    .line 301
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 302
    check-cast v1, Ljava/lang/String;

    .line 309
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 304
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 305
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->extra_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 309
    goto :goto_0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 4

    .prologue
    .line 334
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->html_:Ljava/lang/Object;

    .line 335
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 336
    check-cast v1, Ljava/lang/String;

    .line 343
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 338
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 339
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->html_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 343
    goto :goto_0
.end method

.method public getImage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 232
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->image_:Ljava/lang/Object;

    .line 233
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 234
    check-cast v1, Ljava/lang/String;

    .line 241
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 236
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 237
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->image_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 241
    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->key_:Ljava/lang/Object;

    .line 97
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 98
    check-cast v1, Ljava/lang/String;

    .line 105
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 100
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 101
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->key_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 105
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 414
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->memoizedSerializedSize:I

    .line 415
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 453
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 418
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 419
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 420
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 423
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 424
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 427
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 428
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 431
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 432
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getTargetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 435
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 436
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getImageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 439
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 440
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDescBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 443
    :cond_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 444
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getExtraBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 447
    :cond_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 448
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 451
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 452
    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->memoizedSerializedSize:I

    move v1, v0

    .line 453
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 4

    .prologue
    .line 198
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->target_:Ljava/lang/Object;

    .line 199
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 200
    check-cast v1, Ljava/lang/String;

    .line 207
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 202
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 203
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->target_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 207
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->title_:Ljava/lang/Object;

    .line 165
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 166
    check-cast v1, Ljava/lang/String;

    .line 173
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 168
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 169
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->title_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 173
    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 130
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->url_:Ljava/lang/Object;

    .line 131
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 132
    check-cast v1, Ljava/lang/String;

    .line 139
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 134
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 135
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 139
    goto :goto_0
.end method

.method public hasDesc()Z
    .locals 2

    .prologue
    .line 262
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

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

.method public hasExtra()Z
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

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

.method public hasHtml()Z
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

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

.method public hasImage()Z
    .locals 2

    .prologue
    .line 228
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

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

.method public hasKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 92
    iget v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTarget()Z
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

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
    .line 160
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

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
    .line 126
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

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
    .line 83
    # getter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->internal_static_protobuf_pb_url_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 373
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->memoizedIsInitialized:B

    .line 374
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 375
    if-ne v0, v1, :cond_0

    .line 378
    :goto_0
    return v1

    .line 375
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 377
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilderForType()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilderForType()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1

    .prologue
    .line 546
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 561
    new-instance v0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$1;)V

    .line 562
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->toBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->toBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1

    .prologue
    .line 555
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->newBuilder(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

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
    .line 461
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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 383
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getSerializedSize()I

    .line 384
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 387
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 388
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 390
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 391
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 393
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 394
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getTargetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 396
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 397
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getImageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 399
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 400
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDescBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 402
    :cond_5
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 403
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getExtraBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 405
    :cond_6
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 406
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 408
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 409
    return-void
.end method
