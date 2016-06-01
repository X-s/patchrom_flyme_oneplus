.class public final Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ConfigThreadProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_configOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ConfigThreadProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    }
.end annotation


# static fields
.field public static final ATTACHMENT_FIELD_NUMBER:I = 0x9

.field public static final AUTHORID_FIELD_NUMBER:I = 0xb

.field public static final AUTHOR_FIELD_NUMBER:I = 0xa

.field public static final CATEGORY_ID_FIELD_NUMBER:I = 0x1c

.field public static final CONFIG_ID_FIELD_NUMBER:I = 0x14

.field public static final CONFIG_INTRO_FIELD_NUMBER:I = 0x19

.field public static final CONFIG_NAME_FIELD_NUMBER:I = 0x17

.field public static final CONFIG_PARAMS_FIELD_NUMBER:I = 0x18

.field public static final DATELINE_FIELD_NUMBER:I = 0x5

.field public static final DOWNLOAD_NUM_FIELD_NUMBER:I = 0x1d

.field public static final FID_FIELD_NUMBER:I = 0x2

.field public static final GROUPID_FIELD_NUMBER:I = 0xc

.field public static final IMAGE_FIELD_NUMBER:I = 0x6

.field public static final ISFOLLOWING_FIELD_NUMBER:I = 0xd

.field public static final ISLIKE_FIELD_NUMBER:I = 0xf

.field public static final LIKES_FIELD_NUMBER:I = 0xe

.field public static final LIKE_NUM_FIELD_NUMBER:I = 0x1b

.field public static final REPLIES_FIELD_NUMBER:I = 0x7

.field public static final SHARE_TIME_FIELD_NUMBER:I = 0x1a

.field public static final SUBJECT_FIELD_NUMBER:I = 0x3

.field public static final SUMMARY_FIELD_NUMBER:I = 0x4

.field public static final TID_FIELD_NUMBER:I = 0x1

.field public static final USER_ID_FIELD_NUMBER:I = 0x15

.field public static final USER_NAME_FIELD_NUMBER:I = 0x16

.field public static final VIEWS_FIELD_NUMBER:I = 0x8

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

.field private static final serialVersionUID:J


# instance fields
.field private attachment_:J

.field private author_:Ljava/lang/Object;

.field private authorid_:J

.field private bitField0_:I

.field private categoryId_:I

.field private configId_:J

.field private configIntro_:Ljava/lang/Object;

.field private configName_:Ljava/lang/Object;

.field private configParams_:Ljava/lang/Object;

.field private dateline_:J

.field private downloadNum_:I

.field private fid_:J

.field private groupid_:J

.field private image_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;",
            ">;"
        }
    .end annotation
.end field

.field private isfollowing_:I

.field private islike_:I

.field private likeNum_:I

.field private likes_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private replies_:J

.field private shareTime_:I

.field private subject_:Ljava/lang/Object;

.field private summary_:Ljava/lang/Object;

.field private tid_:J

.field private userId_:J

.field private userName_:Ljava/lang/Object;

.field private views_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2265
    new-instance v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    .line 2266
    sget-object v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->initFields()V

    .line 2267
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .prologue
    const/4 v0, -0x1

    .line 125
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 591
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedIsInitialized:B

    .line 721
    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedSerializedSize:I

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;Lcom/oppo/tribune/protobuf/ConfigThreadProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$1;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;-><init>(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 127
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 591
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedIsInitialized:B

    .line 721
    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedSerializedSize:I

    .line 127
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configParams_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configIntro_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->shareTime_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->likeNum_:I

    return p1
.end method

.method static synthetic access$1502(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->categoryId_:I

    return p1
.end method

.method static synthetic access$1602(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->downloadNum_:I

    return p1
.end method

.method static synthetic access$1702(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->tid_:J

    return-wide p1
.end method

.method static synthetic access$1802(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->fid_:J

    return-wide p1
.end method

.method static synthetic access$1902(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->subject_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->summary_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->dateline_:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->replies_:J

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->views_:J

    return-wide p1
.end method

.method static synthetic access$2502(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->attachment_:J

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->author_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->authorid_:J

    return-wide p1
.end method

.method static synthetic access$2802(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->groupid_:J

    return-wide p1
.end method

.method static synthetic access$2902(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->isfollowing_:I

    return p1
.end method

.method static synthetic access$3002(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->likes_:J

    return-wide p1
.end method

.method static synthetic access$3102(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->islike_:I

    return p1
.end method

.method static synthetic access$3202(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    return p1
.end method

.method static synthetic access$3300()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configId_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->userId_:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->userName_:Ljava/lang/Object;

    return-object p1
.end method

.method private getAuthorBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 503
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->author_:Ljava/lang/Object;

    .line 504
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 505
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 507
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->author_:Ljava/lang/Object;

    .line 510
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

.method private getConfigIntroBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configIntro_:Ljava/lang/Object;

    .line 287
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 288
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 290
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configIntro_:Ljava/lang/Object;

    .line 293
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

.method private getConfigNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 222
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configName_:Ljava/lang/Object;

    .line 223
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 224
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 226
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configName_:Ljava/lang/Object;

    .line 229
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

.method private getConfigParamsBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 254
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configParams_:Ljava/lang/Object;

    .line 255
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 256
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 258
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configParams_:Ljava/lang/Object;

    .line 261
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

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 140
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto;->internal_static_protobuf_pb_config_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getSubjectBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 378
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->subject_:Ljava/lang/Object;

    .line 379
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 380
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 382
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->subject_:Ljava/lang/Object;

    .line 385
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
    .line 410
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->summary_:Ljava/lang/Object;

    .line 411
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 412
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 414
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->summary_:Ljava/lang/Object;

    .line 417
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

.method private getUserNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->userName_:Ljava/lang/Object;

    .line 191
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 192
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 194
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->userName_:Ljava/lang/Object;

    .line 197
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
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 565
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configId_:J

    .line 566
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->userId_:J

    .line 567
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->userName_:Ljava/lang/Object;

    .line 568
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configName_:Ljava/lang/Object;

    .line 569
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configParams_:Ljava/lang/Object;

    .line 570
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configIntro_:Ljava/lang/Object;

    .line 571
    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->shareTime_:I

    .line 572
    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->likeNum_:I

    .line 573
    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->categoryId_:I

    .line 574
    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->downloadNum_:I

    .line 575
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->tid_:J

    .line 576
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->fid_:J

    .line 577
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->subject_:Ljava/lang/Object;

    .line 578
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->summary_:Ljava/lang/Object;

    .line 579
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->dateline_:J

    .line 580
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;

    .line 581
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->replies_:J

    .line 582
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->views_:J

    .line 583
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->attachment_:J

    .line 584
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->author_:Ljava/lang/Object;

    .line 585
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->authorid_:J

    .line 586
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->groupid_:J

    .line 587
    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->isfollowing_:I

    .line 588
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->likes_:J

    .line 589
    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->islike_:I

    .line 590
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1

    .prologue
    .line 906
    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->create()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->access$300()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    .prologue
    .line 909
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    .line 876
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v1

    .line 879
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    .line 887
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 888
    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v1

    .line 890
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 842
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 848
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 902
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 853
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAttachment()J
    .locals 2

    .prologue
    .line 479
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->attachment_:J

    return-wide v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 4

    .prologue
    .line 489
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->author_:Ljava/lang/Object;

    .line 490
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 491
    check-cast v1, Ljava/lang/String;

    .line 499
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 493
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 495
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 497
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->author_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 499
    goto :goto_0
.end method

.method public getAuthorid()J
    .locals 2

    .prologue
    .line 521
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->authorid_:J

    return-wide v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->categoryId_:I

    return v0
.end method

.method public getConfigId()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configId_:J

    return-wide v0
.end method

.method public getConfigIntro()Ljava/lang/String;
    .locals 4

    .prologue
    .line 272
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configIntro_:Ljava/lang/Object;

    .line 273
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 274
    check-cast v1, Ljava/lang/String;

    .line 282
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 276
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
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configIntro_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 282
    goto :goto_0
.end method

.method public getConfigName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 208
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configName_:Ljava/lang/Object;

    .line 209
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 210
    check-cast v1, Ljava/lang/String;

    .line 218
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 212
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 214
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 218
    goto :goto_0
.end method

.method public getConfigParams()Ljava/lang/String;
    .locals 4

    .prologue
    .line 240
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configParams_:Ljava/lang/Object;

    .line 241
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 242
    check-cast v1, Ljava/lang/String;

    .line 250
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 244
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 246
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configParams_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 250
    goto :goto_0
.end method

.method public getDateline()J
    .locals 2

    .prologue
    .line 428
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->dateline_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    return-object v0
.end method

.method public getDownloadNum()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->downloadNum_:I

    return v0
.end method

.method public getFid()J
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->fid_:J

    return-wide v0
.end method

.method public getGroupid()J
    .locals 2

    .prologue
    .line 531
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->groupid_:J

    return-wide v0
.end method

.method public getImage(I)Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;

    return-object v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;

    return-object v0
.end method

.method public getImageOrBuilder(I)Lcom/oppo/tribune/protobuf/PbUrlProto$pb_urlOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 449
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_urlOrBuilder;

    return-object v0
.end method

.method public getImageOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/PbUrlProto$pb_urlOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;

    return-object v0
.end method

.method public getIsfollowing()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->isfollowing_:I

    return v0
.end method

.method public getIslike()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->islike_:I

    return v0
.end method

.method public getLikeNum()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->likeNum_:I

    return v0
.end method

.method public getLikes()J
    .locals 2

    .prologue
    .line 551
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->likes_:J

    return-wide v0
.end method

.method public getReplies()J
    .locals 2

    .prologue
    .line 459
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->replies_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 11

    .prologue
    const v10, 0x8000

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 723
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedSerializedSize:I

    .line 724
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 829
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 726
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 727
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_1

    .line 728
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->tid_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 731
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_2

    .line 732
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->fid_:J

    invoke-static {v7, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 735
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_3

    .line 736
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getSubjectBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 739
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_4

    .line 740
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getSummaryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 743
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_5

    .line 744
    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->dateline_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 747
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 748
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 751
    :cond_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/2addr v3, v10

    if-ne v3, v10, :cond_7

    .line 752
    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->replies_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 755
    :cond_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    const/high16 v4, 0x10000

    if-ne v3, v4, :cond_8

    .line 756
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->views_:J

    invoke-static {v9, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 759
    :cond_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    const/high16 v4, 0x20000

    if-ne v3, v4, :cond_9

    .line 760
    const/16 v3, 0x9

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->attachment_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 763
    :cond_9
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_a

    .line 764
    const/16 v3, 0xa

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getAuthorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 767
    :cond_a
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_b

    .line 768
    const/16 v3, 0xb

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->authorid_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 771
    :cond_b
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_c

    .line 772
    const/16 v3, 0xc

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->groupid_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 775
    :cond_c
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    const/high16 v4, 0x200000

    if-ne v3, v4, :cond_d

    .line 776
    const/16 v3, 0xd

    iget v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->isfollowing_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 779
    :cond_d
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    const/high16 v4, 0x400000

    if-ne v3, v4, :cond_e

    .line 780
    const/16 v3, 0xe

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->likes_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 783
    :cond_e
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    const/high16 v4, 0x800000

    if-ne v3, v4, :cond_f

    .line 784
    const/16 v3, 0xf

    iget v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->islike_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 787
    :cond_f
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_10

    .line 788
    const/16 v3, 0x14

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configId_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 791
    :cond_10
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v7, :cond_11

    .line 792
    const/16 v3, 0x15

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->userId_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 795
    :cond_11
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v8, :cond_12

    .line 796
    const/16 v3, 0x16

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getUserNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 799
    :cond_12
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v9, :cond_13

    .line 800
    const/16 v3, 0x17

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 803
    :cond_13
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_14

    .line 804
    const/16 v3, 0x18

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigParamsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 807
    :cond_14
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_15

    .line 808
    const/16 v3, 0x19

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigIntroBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 811
    :cond_15
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_16

    .line 812
    const/16 v3, 0x1a

    iget v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->shareTime_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 815
    :cond_16
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_17

    .line 816
    const/16 v3, 0x1b

    iget v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->likeNum_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 819
    :cond_17
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_18

    .line 820
    const/16 v3, 0x1c

    iget v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->categoryId_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 823
    :cond_18
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_19

    .line 824
    const/16 v3, 0x1d

    iget v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->downloadNum_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 827
    :cond_19
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 828
    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedSerializedSize:I

    move v2, v1

    .line 829
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_0
.end method

.method public getShareTime()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->shareTime_:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 4

    .prologue
    .line 364
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->subject_:Ljava/lang/Object;

    .line 365
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 366
    check-cast v1, Ljava/lang/String;

    .line 374
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 368
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 370
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->subject_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 374
    goto :goto_0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 396
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->summary_:Ljava/lang/Object;

    .line 397
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 398
    check-cast v1, Ljava/lang/String;

    .line 406
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 400
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 402
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->summary_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 406
    goto :goto_0
.end method

.method public getTid()J
    .locals 2

    .prologue
    .line 344
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->tid_:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->userId_:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 176
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->userName_:Ljava/lang/Object;

    .line 177
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 178
    check-cast v1, Ljava/lang/String;

    .line 186
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 180
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
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->userName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 186
    goto :goto_0
.end method

.method public getViews()J
    .locals 2

    .prologue
    .line 469
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->views_:J

    return-wide v0
.end method

.method public hasAttachment()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 476
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAuthor()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000

    .line 486
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAuthorid()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 518
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCategoryId()Z
    .locals 2

    .prologue
    .line 321
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

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

.method public hasConfigId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 153
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConfigIntro()Z
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

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

.method public hasConfigName()Z
    .locals 2

    .prologue
    .line 205
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

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

.method public hasConfigParams()Z
    .locals 2

    .prologue
    .line 237
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

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

.method public hasDateline()Z
    .locals 2

    .prologue
    .line 425
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

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

.method public hasDownloadNum()Z
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

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

.method public hasFid()Z
    .locals 2

    .prologue
    .line 351
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

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

.method public hasGroupid()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100000

    .line 528
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsfollowing()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 538
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIslike()Z
    .locals 2

    .prologue
    const/high16 v1, 0x800000

    .line 558
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLikeNum()Z
    .locals 2

    .prologue
    .line 311
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

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

.method public hasLikes()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400000

    .line 548
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReplies()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 456
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShareTime()Z
    .locals 2

    .prologue
    .line 301
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

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

.method public hasSubject()Z
    .locals 2

    .prologue
    .line 361
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

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

.method public hasSummary()Z
    .locals 2

    .prologue
    .line 393
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

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

.method public hasTid()Z
    .locals 2

    .prologue
    .line 341
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

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

.method public hasUserName()Z
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

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

.method public hasViews()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 466
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

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
    .line 145
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto;->internal_static_protobuf_pb_config_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 593
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedIsInitialized:B

    .line 594
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 637
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 594
    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasConfigId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 597
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 600
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasUserId()Z

    move-result v3

    if-nez v3, :cond_3

    .line 601
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 604
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasUserName()Z

    move-result v3

    if-nez v3, :cond_4

    .line 605
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 608
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasConfigName()Z

    move-result v3

    if-nez v3, :cond_5

    .line 609
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 612
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasConfigParams()Z

    move-result v3

    if-nez v3, :cond_6

    .line 613
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 616
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasConfigIntro()Z

    move-result v3

    if-nez v3, :cond_7

    .line 617
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 620
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasShareTime()Z

    move-result v3

    if-nez v3, :cond_8

    .line 621
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 624
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasLikeNum()Z

    move-result v3

    if-nez v3, :cond_9

    .line 625
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 628
    :cond_9
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasCategoryId()Z

    move-result v3

    if-nez v3, :cond_a

    .line 629
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 632
    :cond_a
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasDownloadNum()Z

    move-result v3

    if-nez v3, :cond_b

    .line 633
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 636
    :cond_b
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->memoizedIsInitialized:B

    move v2, v1

    .line 637
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilderForType()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilderForType()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1

    .prologue
    .line 907
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 916
    new-instance v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ConfigThreadProto$1;)V

    .line 917
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->toBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->toBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1

    .prologue
    .line 911
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilder(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

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
    .line 836
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 9
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0x8000

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 642
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getSerializedSize()I

    .line 643
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_0

    .line 644
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->tid_:J

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 646
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_1

    .line 647
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->fid_:J

    invoke-virtual {p1, v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 649
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_2

    .line 650
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getSubjectBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 652
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_3

    .line 653
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getSummaryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 655
    :cond_3
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_4

    .line 656
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->dateline_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 658
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 659
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 661
    :cond_5
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_6

    .line 662
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->replies_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 664
    :cond_6
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_7

    .line 665
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->views_:J

    invoke-virtual {p1, v7, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 667
    :cond_7
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_8

    .line 668
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->attachment_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 670
    :cond_8
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_9

    .line 671
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getAuthorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 673
    :cond_9
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    const/high16 v2, 0x80000

    if-ne v1, v2, :cond_a

    .line 674
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->authorid_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 676
    :cond_a
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    const/high16 v2, 0x100000

    if-ne v1, v2, :cond_b

    .line 677
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->groupid_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 679
    :cond_b
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    const/high16 v2, 0x200000

    if-ne v1, v2, :cond_c

    .line 680
    const/16 v1, 0xd

    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->isfollowing_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 682
    :cond_c
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    const/high16 v2, 0x400000

    if-ne v1, v2, :cond_d

    .line 683
    const/16 v1, 0xe

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->likes_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 685
    :cond_d
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    const/high16 v2, 0x800000

    if-ne v1, v2, :cond_e

    .line 686
    const/16 v1, 0xf

    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->islike_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 688
    :cond_e
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_f

    .line 689
    const/16 v1, 0x14

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 691
    :cond_f
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_10

    .line 692
    const/16 v1, 0x15

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->userId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 694
    :cond_10
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v6, :cond_11

    .line 695
    const/16 v1, 0x16

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getUserNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 697
    :cond_11
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v7, :cond_12

    .line 698
    const/16 v1, 0x17

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 700
    :cond_12
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_13

    .line 701
    const/16 v1, 0x18

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigParamsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 703
    :cond_13
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_14

    .line 704
    const/16 v1, 0x19

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigIntroBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 706
    :cond_14
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_15

    .line 707
    const/16 v1, 0x1a

    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->shareTime_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 709
    :cond_15
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_16

    .line 710
    const/16 v1, 0x1b

    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->likeNum_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 712
    :cond_16
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_17

    .line 713
    const/16 v1, 0x1c

    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->categoryId_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 715
    :cond_17
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_18

    .line 716
    const/16 v1, 0x1d

    iget v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->downloadNum_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 718
    :cond_18
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 719
    return-void
.end method
