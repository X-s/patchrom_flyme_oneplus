.class public final Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SearchRequestNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchRequestNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetListRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    }
.end annotation


# static fields
.field public static final CATEGORYID_FIELD_NUMBER:I = 0x7

.field public static final COMPRESS_FIELD_NUMBER:I = 0xa

.field public static final KEYWORD_FIELD_NUMBER:I = 0xd

.field public static final MOBILE_FIELD_NUMBER:I = 0x5

.field public static final ORDERBY_FIELD_NUMBER:I = 0x6

.field public static final OS_FIELD_NUMBER:I = 0x2

.field public static final PLATFORM_FIELD_NUMBER:I = 0x9

.field public static final RANDOMCOUNT_FIELD_NUMBER:I = 0x11

.field public static final RELATEID_FIELD_NUMBER:I = 0xc

.field public static final RESTYPE_FIELD_NUMBER:I = 0xb

.field public static final SCREEN_FIELD_NUMBER:I = 0xe

.field public static final SIZE_FIELD_NUMBER:I = 0x3

.field public static final SOURCE_FIELD_NUMBER:I = 0xf

.field public static final START_FIELD_NUMBER:I = 0x4

.field public static final THEMEVERSION_FIELD_NUMBER:I = 0x8

.field public static final USERID_FIELD_NUMBER:I = 0x1

.field public static final USERTOKEN_FIELD_NUMBER:I = 0x10

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private categoryId_:I

.field private compress_:I

.field private keyword_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mobile_:Ljava/lang/Object;

.field private orderBy_:I

.field private os_:I

.field private platform_:I

.field private randomCount_:I

.field private relateId_:I

.field private resType_:I

.field private screen_:Ljava/lang/Object;

.field private size_:I

.field private source_:I

.field private start_:I

.field private themeVersion_:I

.field private userId_:I

.field private userToken_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1567
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    .line 1568
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->initFields()V

    .line 1569
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .prologue
    const/4 v0, -0x1

    .line 108
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 445
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->memoizedIsInitialized:B

    .line 513
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->memoizedSerializedSize:I

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;Lcom/oppo/tribune/protobuf/SearchRequestNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;-><init>(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 111
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 445
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->memoizedIsInitialized:B

    .line 513
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->memoizedSerializedSize:I

    .line 112
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->start_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->mobile_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->orderBy_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->categoryId_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->themeVersion_:I

    return p1
.end method

.method static synthetic access$1502(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->platform_:I

    return p1
.end method

.method static synthetic access$1602(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->compress_:I

    return p1
.end method

.method static synthetic access$1702(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->resType_:I

    return p1
.end method

.method static synthetic access$1802(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->relateId_:I

    return p1
.end method

.method static synthetic access$1902(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->keyword_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->screen_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->source_:I

    return p1
.end method

.method static synthetic access$2202(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->userToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->randomCount_:I

    return p1
.end method

.method static synthetic access$2402(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->userId_:I

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->os_:I

    return p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->size_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 125
    # getter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetListRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getKeywordBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 322
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->keyword_:Ljava/lang/Object;

    .line 323
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 324
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 326
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->keyword_:Ljava/lang/Object;

    .line 329
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

.method private getMobileBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 204
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->mobile_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->mobile_:Ljava/lang/Object;

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

.method private getScreenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 356
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->screen_:Ljava/lang/Object;

    .line 357
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 358
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 360
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->screen_:Ljava/lang/Object;

    .line 363
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

.method private getUserTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 402
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->userToken_:Ljava/lang/Object;

    .line 403
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 404
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 406
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->userToken_:Ljava/lang/Object;

    .line 409
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

    .line 426
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->userId_:I

    .line 427
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->os_:I

    .line 428
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->size_:I

    .line 429
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->start_:I

    .line 430
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->mobile_:Ljava/lang/Object;

    .line 431
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->orderBy_:I

    .line 432
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->categoryId_:I

    .line 433
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->themeVersion_:I

    .line 434
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->platform_:I

    .line 435
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->compress_:I

    .line 436
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->resType_:I

    .line 437
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->relateId_:I

    .line 438
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->keyword_:Ljava/lang/Object;

    .line 439
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->screen_:Ljava/lang/Object;

    .line 440
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->source_:I

    .line 441
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->userToken_:Ljava/lang/Object;

    .line 442
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->randomCount_:I

    .line 443
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 680
    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->create()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->access$300()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    .prologue
    .line 689
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    .line 646
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v1

    .line 649
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    .line 658
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v1

    .line 661
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 605
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 612
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 619
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 626
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->access$200(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCategoryId()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->categoryId_:I

    return v0
.end method

.method public getCompress()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->compress_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 4

    .prologue
    .line 308
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->keyword_:Ljava/lang/Object;

    .line 309
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 310
    check-cast v1, Ljava/lang/String;

    .line 317
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 312
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 313
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->keyword_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 317
    goto :goto_0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 4

    .prologue
    .line 190
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->mobile_:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->mobile_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 199
    goto :goto_0
.end method

.method public getOrderBy()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->orderBy_:I

    return v0
.end method

.method public getOs()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->os_:I

    return v0
.end method

.method public getPlatform()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->platform_:I

    return v0
.end method

.method public getRandomCount()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->randomCount_:I

    return v0
.end method

.method public getRelateId()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->relateId_:I

    return v0
.end method

.method public getResType()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->resType_:I

    return v0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 4

    .prologue
    .line 342
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->screen_:Ljava/lang/Object;

    .line 343
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 344
    check-cast v1, Ljava/lang/String;

    .line 351
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 346
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 347
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->screen_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 351
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 516
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->memoizedSerializedSize:I

    .line 517
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 591
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 520
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 521
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 522
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->userId_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 525
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 526
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->os_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 529
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 530
    const/4 v2, 0x3

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->size_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 533
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 534
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->start_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 537
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v7, :cond_5

    .line 538
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getMobileBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 541
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 542
    const/4 v2, 0x6

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->orderBy_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 545
    :cond_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 546
    const/4 v2, 0x7

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->categoryId_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 549
    :cond_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 550
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->themeVersion_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 553
    :cond_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 554
    const/16 v2, 0x9

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->platform_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 557
    :cond_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 558
    const/16 v2, 0xa

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->compress_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 561
    :cond_a
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 562
    const/16 v2, 0xb

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->resType_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 565
    :cond_b
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_c

    .line 566
    const/16 v2, 0xc

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->relateId_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 569
    :cond_c
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_d

    .line 570
    const/16 v2, 0xd

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getKeywordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 573
    :cond_d
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_e

    .line 574
    const/16 v2, 0xe

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getScreenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 577
    :cond_e
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_f

    .line 578
    const/16 v2, 0xf

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->source_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 581
    :cond_f
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    const v3, 0x8000

    if-ne v2, v3, :cond_10

    .line 582
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getUserTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 585
    :cond_10
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_11

    .line 586
    const/16 v2, 0x11

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->randomCount_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 589
    :cond_11
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 590
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 591
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->size_:I

    return v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->source_:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->start_:I

    return v0
.end method

.method public getThemeVersion()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->themeVersion_:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->userId_:I

    return v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 388
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->userToken_:Ljava/lang/Object;

    .line 389
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 390
    check-cast v1, Ljava/lang/String;

    .line 397
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 392
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 393
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->userToken_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 397
    goto :goto_0
.end method

.method public hasCategoryId()Z
    .locals 2

    .prologue
    .line 232
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

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

.method public hasCompress()Z
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

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

.method public hasKeyword()Z
    .locals 2

    .prologue
    .line 304
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

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
    .line 186
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

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

.method public hasOrderBy()Z
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

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

.method public hasOs()Z
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

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

.method public hasPlatform()Z
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

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

.method public hasRandomCount()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 418
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRelateId()Z
    .locals 2

    .prologue
    .line 292
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

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
    .line 280
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

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

.method public hasScreen()Z
    .locals 2

    .prologue
    .line 338
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSize()Z
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

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

.method public hasSource()Z
    .locals 2

    .prologue
    .line 372
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStart()Z
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

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

.method public hasThemeVersion()Z
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 138
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserToken()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 384
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 129
    # getter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetListRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 448
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->memoizedIsInitialized:B

    .line 449
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 450
    if-ne v0, v1, :cond_0

    .line 453
    :goto_0
    return v1

    .line 450
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 452
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilderForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilderForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 684
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 699
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SearchRequestNetProto$1;)V

    .line 700
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->toBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->toBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 693
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->newBuilder(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

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
    .line 599
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
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 458
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getSerializedSize()I

    .line 459
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 460
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->userId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 462
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 463
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->os_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 465
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 466
    const/4 v0, 0x3

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->size_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 468
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 469
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->start_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 471
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_4

    .line 472
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getMobileBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 474
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 475
    const/4 v0, 0x6

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->orderBy_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 477
    :cond_5
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 478
    const/4 v0, 0x7

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->categoryId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 480
    :cond_6
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 481
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->themeVersion_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 483
    :cond_7
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 484
    const/16 v0, 0x9

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->platform_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 486
    :cond_8
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 487
    const/16 v0, 0xa

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->compress_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 489
    :cond_9
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 490
    const/16 v0, 0xb

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->resType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 492
    :cond_a
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 493
    const/16 v0, 0xc

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->relateId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 495
    :cond_b
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 496
    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getKeywordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 498
    :cond_c
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    .line 499
    const/16 v0, 0xe

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getScreenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 501
    :cond_d
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_e

    .line 502
    const/16 v0, 0xf

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->source_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 504
    :cond_e
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_f

    .line 505
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getUserTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 507
    :cond_f
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_10

    .line 508
    const/16 v0, 0x11

    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->randomCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 510
    :cond_10
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 511
    return-void
.end method
