.class public final Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
.super Lcom/google/protobuf/GeneratedMessage;
.source "RemindCountProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnoticeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/RemindCountProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_numnotice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    }
.end annotation


# static fields
.field public static final ISSIGN_FIELD_NUMBER:I = 0xf

.field public static final NUM_BBSFAVOR_FIELD_NUMBER:I = 0x6

.field public static final NUM_BBSNOTICE_FIELD_NUMBER:I = 0x3

.field public static final NUM_BBSPOST_FIELD_NUMBER:I = 0x5

.field public static final NUM_CANDY_FIELD_NUMBER:I = 0xc

.field public static final NUM_DAYS_FIELD_NUMBER:I = 0xd

.field public static final NUM_FOLLOWED_FIELD_NUMBER:I = 0x1

.field public static final NUM_FOLLOWERS_FIELD_NUMBER:I = 0xa

.field public static final NUM_FOLLOWFEED_FIELD_NUMBER:I = 0x9

.field public static final NUM_FOLLOWINGS_FIELD_NUMBER:I = 0xb

.field public static final NUM_LASTED_FIELD_NUMBER:I = 0xe

.field public static final NUM_OBI_FIELD_NUMBER:I = 0x7

.field public static final NUM_PAIKENOTICE_FIELD_NUMBER:I = 0x4

.field public static final NUM_PAIKEREPLY_FIELD_NUMBER:I = 0x8

.field public static final NUM_VISITED_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private issign_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private numBbsfavor_:I

.field private numBbsnotice_:I

.field private numBbspost_:I

.field private numCandy_:I

.field private numDays_:I

.field private numFollowed_:I

.field private numFollowers_:I

.field private numFollowfeed_:I

.field private numFollowings_:I

.field private numLasted_:I

.field private numObi_:I

.field private numPaikenotice_:I

.field private numPaikereply_:I

.field private numVisited_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1283
    new-instance v0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->defaultInstance:Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    .line 1284
    sget-object v0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->defaultInstance:Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->initFields()V

    .line 1285
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .prologue
    const/4 v0, -0x1

    .line 98
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 321
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->memoizedIsInitialized:B

    .line 383
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->memoizedSerializedSize:I

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;Lcom/oppo/tribune/protobuf/RemindCountProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/RemindCountProto$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;-><init>(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 101
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 321
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->memoizedIsInitialized:B

    .line 383
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->memoizedSerializedSize:I

    .line 102
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numPaikenotice_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbspost_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbsfavor_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numObi_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numPaikereply_:I

    return p1
.end method

.method static synthetic access$1502(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowfeed_:I

    return p1
.end method

.method static synthetic access$1602(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowers_:I

    return p1
.end method

.method static synthetic access$1702(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowings_:I

    return p1
.end method

.method static synthetic access$1802(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numCandy_:I

    return p1
.end method

.method static synthetic access$1902(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numDays_:I

    return p1
.end method

.method static synthetic access$2002(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numLasted_:I

    return p1
.end method

.method static synthetic access$2102(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->issign_:I

    return p1
.end method

.method static synthetic access$2202(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowed_:I

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numVisited_:I

    return p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbsnotice_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->defaultInstance:Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 115
    # getter for: Lcom/oppo/tribune/protobuf/RemindCountProto;->internal_static_pb_numnotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 304
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowed_:I

    .line 305
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numVisited_:I

    .line 306
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbsnotice_:I

    .line 307
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numPaikenotice_:I

    .line 308
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbspost_:I

    .line 309
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbsfavor_:I

    .line 310
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numObi_:I

    .line 311
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numPaikereply_:I

    .line 312
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowfeed_:I

    .line 313
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowers_:I

    .line 314
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowings_:I

    .line 315
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numCandy_:I

    .line 316
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numDays_:I

    .line 317
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numLasted_:I

    .line 318
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->issign_:I

    .line 319
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 542
    # invokes: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->create()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->access$300()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    .prologue
    .line 551
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    .line 508
    .local v0, "builder":Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    # invokes: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v1

    .line 511
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
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
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    .line 520
    .local v0, "builder":Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    # invokes: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v1

    .line 523
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
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
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
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
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
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
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 481
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
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
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->defaultInstance:Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    return-object v0
.end method

.method public getIssign()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->issign_:I

    return v0
.end method

.method public getNumBbsfavor()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbsfavor_:I

    return v0
.end method

.method public getNumBbsnotice()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbsnotice_:I

    return v0
.end method

.method public getNumBbspost()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbspost_:I

    return v0
.end method

.method public getNumCandy()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numCandy_:I

    return v0
.end method

.method public getNumDays()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numDays_:I

    return v0
.end method

.method public getNumFollowed()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowed_:I

    return v0
.end method

.method public getNumFollowers()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowers_:I

    return v0
.end method

.method public getNumFollowfeed()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowfeed_:I

    return v0
.end method

.method public getNumFollowings()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowings_:I

    return v0
.end method

.method public getNumLasted()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numLasted_:I

    return v0
.end method

.method public getNumObi()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numObi_:I

    return v0
.end method

.method public getNumPaikenotice()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numPaikenotice_:I

    return v0
.end method

.method public getNumPaikereply()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numPaikereply_:I

    return v0
.end method

.method public getNumVisited()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numVisited_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 386
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->memoizedSerializedSize:I

    .line 387
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 453
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 390
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 391
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 392
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowed_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 395
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 396
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numVisited_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 399
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 400
    const/4 v2, 0x3

    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbsnotice_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 403
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 404
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numPaikenotice_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 407
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 408
    const/4 v2, 0x5

    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbspost_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 411
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 412
    const/4 v2, 0x6

    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbsfavor_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 415
    :cond_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 416
    const/4 v2, 0x7

    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numObi_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 419
    :cond_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 420
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numPaikereply_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 423
    :cond_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 424
    const/16 v2, 0x9

    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowfeed_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 427
    :cond_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 428
    const/16 v2, 0xa

    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowers_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 431
    :cond_a
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 432
    const/16 v2, 0xb

    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowings_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 435
    :cond_b
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_c

    .line 436
    const/16 v2, 0xc

    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numCandy_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 439
    :cond_c
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_d

    .line 440
    const/16 v2, 0xd

    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numDays_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 443
    :cond_d
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_e

    .line 444
    const/16 v2, 0xe

    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numLasted_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 447
    :cond_e
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_f

    .line 448
    const/16 v2, 0xf

    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->issign_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 451
    :cond_f
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 452
    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->memoizedSerializedSize:I

    move v1, v0

    .line 453
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public hasIssign()Z
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

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

.method public hasNumBbsfavor()Z
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

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

.method public hasNumBbsnotice()Z
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

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

.method public hasNumBbspost()Z
    .locals 2

    .prologue
    .line 176
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

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

.method public hasNumCandy()Z
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

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

.method public hasNumDays()Z
    .locals 2

    .prologue
    .line 272
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

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

.method public hasNumFollowed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 128
    iget v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumFollowers()Z
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

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

.method public hasNumFollowfeed()Z
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

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

.method public hasNumFollowings()Z
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

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

.method public hasNumLasted()Z
    .locals 2

    .prologue
    .line 284
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

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

.method public hasNumObi()Z
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

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

.method public hasNumPaikenotice()Z
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

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

.method public hasNumPaikereply()Z
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

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

.method public hasNumVisited()Z
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

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
    .line 119
    # getter for: Lcom/oppo/tribune/protobuf/RemindCountProto;->internal_static_pb_numnotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 324
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->memoizedIsInitialized:B

    .line 325
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 326
    if-ne v0, v1, :cond_0

    .line 329
    :goto_0
    return v1

    .line 326
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 328
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilderForType()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilderForType()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 546
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 561
    new-instance v0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/RemindCountProto$1;)V

    .line 562
    .local v0, "builder":Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->toBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->toBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 555
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->newBuilder(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

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

    .line 334
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getSerializedSize()I

    .line 335
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 336
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowed_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 338
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 339
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numVisited_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 341
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 342
    const/4 v0, 0x3

    iget v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbsnotice_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 344
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 345
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numPaikenotice_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 347
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 348
    const/4 v0, 0x5

    iget v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbspost_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 350
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 351
    const/4 v0, 0x6

    iget v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbsfavor_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 353
    :cond_5
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 354
    const/4 v0, 0x7

    iget v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numObi_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 356
    :cond_6
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 357
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numPaikereply_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 359
    :cond_7
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 360
    const/16 v0, 0x9

    iget v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowfeed_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 362
    :cond_8
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 363
    const/16 v0, 0xa

    iget v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowers_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 365
    :cond_9
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 366
    const/16 v0, 0xb

    iget v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowings_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 368
    :cond_a
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 369
    const/16 v0, 0xc

    iget v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numCandy_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 371
    :cond_b
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 372
    const/16 v0, 0xd

    iget v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numDays_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 374
    :cond_c
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    .line 375
    const/16 v0, 0xe

    iget v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numLasted_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 377
    :cond_d
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_e

    .line 378
    const/16 v0, 0xf

    iget v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->issign_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 380
    :cond_e
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 381
    return-void
.end method
