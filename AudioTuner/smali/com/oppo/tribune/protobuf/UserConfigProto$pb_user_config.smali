.class public final Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
.super Lcom/google/protobuf/GeneratedMessage;
.source "UserConfigProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_configOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/UserConfigProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_user_config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    }
.end annotation


# static fields
.field public static final CATEGORY_ID_FIELD_NUMBER:I = 0x8

.field public static final CONFIG_ID_FIELD_NUMBER:I = 0x2

.field public static final CONFIG_INTRO_FIELD_NUMBER:I = 0x6

.field public static final CONFIG_NAME_FIELD_NUMBER:I = 0x4

.field public static final CONFIG_PARAMS_FIELD_NUMBER:I = 0x5

.field public static final REF_CONFIG_ID_FIELD_NUMBER:I = 0x3

.field public static final STATUS_FIELD_NUMBER:I = 0x9

.field public static final UPDATE_TIME_FIELD_NUMBER:I = 0x7

.field public static final USER_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private categoryId_:I

.field private configId_:J

.field private configIntro_:Ljava/lang/Object;

.field private configName_:Ljava/lang/Object;

.field private configParams_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private refConfigId_:Ljava/lang/Object;

.field private status_:I

.field private updateTime_:I

.field private userId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1018
    new-instance v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->defaultInstance:Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    .line 1019
    sget-object v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->defaultInstance:Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->initFields()V

    .line 1020
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    .prologue
    const/4 v0, -0x1

    .line 55
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 268
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedIsInitialized:B

    .line 346
    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedSerializedSize:I

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;Lcom/oppo/tribune/protobuf/UserConfigProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/UserConfigProto$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;-><init>(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 57
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 268
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedIsInitialized:B

    .line 346
    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedSerializedSize:I

    .line 57
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configParams_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configIntro_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->updateTime_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->categoryId_:I

    return p1
.end method

.method static synthetic access$1502(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->status_:I

    return p1
.end method

.method static synthetic access$1602(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->userId_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configId_:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->refConfigId_:Ljava/lang/Object;

    return-object p1
.end method

.method private getConfigIntroBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 216
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configIntro_:Ljava/lang/Object;

    .line 217
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 218
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 220
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configIntro_:Ljava/lang/Object;

    .line 223
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
    .line 152
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configName_:Ljava/lang/Object;

    .line 153
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 154
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 156
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configName_:Ljava/lang/Object;

    .line 159
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
    .line 184
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configParams_:Ljava/lang/Object;

    .line 185
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 186
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 188
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configParams_:Ljava/lang/Object;

    .line 191
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

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->defaultInstance:Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 70
    # getter for: Lcom/oppo/tribune/protobuf/UserConfigProto;->internal_static_protobuf_pb_user_config_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getRefConfigIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->refConfigId_:Ljava/lang/Object;

    .line 121
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 122
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 124
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->refConfigId_:Ljava/lang/Object;

    .line 127
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

    .line 258
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->userId_:J

    .line 259
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configId_:J

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->refConfigId_:Ljava/lang/Object;

    .line 261
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configName_:Ljava/lang/Object;

    .line 262
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configParams_:Ljava/lang/Object;

    .line 263
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configIntro_:Ljava/lang/Object;

    .line 264
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->updateTime_:I

    .line 265
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->categoryId_:I

    .line 266
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->status_:I

    .line 267
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1

    .prologue
    .line 467
    # invokes: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->create()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->access$300()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    .prologue
    .line 470
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    .line 437
    .local v0, "builder":Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    # invokes: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v1

    .line 440
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    .line 448
    .local v0, "builder":Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    # invokes: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v1

    .line 451
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCategoryId()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->categoryId_:I

    return v0
.end method

.method public getConfigId()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configId_:J

    return-wide v0
.end method

.method public getConfigIntro()Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configIntro_:Ljava/lang/Object;

    .line 203
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 204
    check-cast v1, Ljava/lang/String;

    .line 212
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 206
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 208
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configIntro_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 212
    goto :goto_0
.end method

.method public getConfigName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configName_:Ljava/lang/Object;

    .line 139
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 140
    check-cast v1, Ljava/lang/String;

    .line 148
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 142
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 144
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 148
    goto :goto_0
.end method

.method public getConfigParams()Ljava/lang/String;
    .locals 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configParams_:Ljava/lang/Object;

    .line 171
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 172
    check-cast v1, Ljava/lang/String;

    .line 180
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 174
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 176
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configParams_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 180
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->defaultInstance:Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    return-object v0
.end method

.method public getRefConfigId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->refConfigId_:Ljava/lang/Object;

    .line 107
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 108
    check-cast v1, Ljava/lang/String;

    .line 116
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 110
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 112
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->refConfigId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 116
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 348
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedSerializedSize:I

    .line 349
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 390
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 351
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 352
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 353
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->userId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 356
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 357
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 360
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 361
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getRefConfigIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 364
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_4

    .line 365
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getConfigNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 368
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 369
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getConfigParamsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 372
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 373
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getConfigIntroBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 376
    :cond_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 377
    const/4 v2, 0x7

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->updateTime_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 380
    :cond_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 381
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->categoryId_:I

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 384
    :cond_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 385
    const/16 v2, 0x9

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->status_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 388
    :cond_9
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 389
    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedSerializedSize:I

    move v1, v0

    .line 390
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->status_:I

    return v0
.end method

.method public getUpdateTime()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->updateTime_:I

    return v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->userId_:J

    return-wide v0
.end method

.method public hasCategoryId()Z
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

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

.method public hasConfigId()Z
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

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

.method public hasConfigIntro()Z
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

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
    .line 135
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

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
    .line 167
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

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

.method public hasRefConfigId()Z
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 251
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

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

.method public hasUpdateTime()Z
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 83
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 75
    # getter for: Lcom/oppo/tribune/protobuf/UserConfigProto;->internal_static_protobuf_pb_user_config_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 270
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedIsInitialized:B

    .line 271
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 310
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 271
    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasUserId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 274
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasConfigId()Z

    move-result v3

    if-nez v3, :cond_3

    .line 278
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 281
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasRefConfigId()Z

    move-result v3

    if-nez v3, :cond_4

    .line 282
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 285
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasConfigName()Z

    move-result v3

    if-nez v3, :cond_5

    .line 286
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 289
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasConfigParams()Z

    move-result v3

    if-nez v3, :cond_6

    .line 290
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 293
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasConfigIntro()Z

    move-result v3

    if-nez v3, :cond_7

    .line 294
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 297
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasUpdateTime()Z

    move-result v3

    if-nez v3, :cond_8

    .line 298
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 301
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasCategoryId()Z

    move-result v3

    if-nez v3, :cond_9

    .line 302
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 305
    :cond_9
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_a

    .line 306
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedIsInitialized:B

    goto :goto_1

    .line 309
    :cond_a
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->memoizedIsInitialized:B

    move v2, v1

    .line 310
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilderForType()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilderForType()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1

    .prologue
    .line 468
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 477
    new-instance v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/UserConfigProto$1;)V

    .line 478
    .local v0, "builder":Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->toBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->toBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1

    .prologue
    .line 472
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilder(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

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
    .line 397
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

    .line 315
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getSerializedSize()I

    .line 316
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 317
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->userId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 319
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 320
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->configId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 322
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 323
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getRefConfigIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 325
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    .line 326
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getConfigNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 328
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 329
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getConfigParamsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 331
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 332
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getConfigIntroBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 334
    :cond_5
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 335
    const/4 v0, 0x7

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->updateTime_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 337
    :cond_6
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 338
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->categoryId_:I

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 340
    :cond_7
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 341
    const/16 v0, 0x9

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 343
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 344
    return-void
.end method
