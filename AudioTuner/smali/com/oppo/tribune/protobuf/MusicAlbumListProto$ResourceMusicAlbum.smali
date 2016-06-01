.class public final Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MusicAlbumListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/MusicAlbumListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceMusicAlbum"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    }
.end annotation


# static fields
.field public static final COVERURL_FIELD_NUMBER:I = 0x6

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x5

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MUSICLIST_FIELD_NUMBER:I = 0x7

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final RELEASETIME_FIELD_NUMBER:I = 0x4

.field public static final SHARER_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private coverUrl_:Ljava/lang/Object;

.field private description_:Ljava/lang/Object;

.field private id_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private musiclist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/Object;

.field private releaseTime_:Ljava/lang/Object;

.field private sharer_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2415
    new-instance v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->defaultInstance:Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    .line 2416
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->defaultInstance:Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->initFields()V

    .line 2417
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    .prologue
    const/4 v0, -0x1

    .line 1270
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1513
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->memoizedIsInitialized:B

    .line 1551
    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->memoizedSerializedSize:I

    .line 1271
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;

    .prologue
    .line 1265
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;-><init>(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1273
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1513
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->memoizedIsInitialized:B

    .line 1551
    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->memoizedSerializedSize:I

    .line 1274
    return-void
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 1265
    sget-boolean v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .param p1, "x1"    # J

    .prologue
    .line 1265
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->id_:J

    return-wide p1
.end method

.method static synthetic access$2502(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->sharer_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->releaseTime_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->coverUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .param p1, "x1"    # I

    .prologue
    .line 1265
    iput p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

    return p1
.end method

.method static synthetic access$3200()Z
    .locals 1

    .prologue
    .line 1265
    sget-boolean v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private getCoverUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1466
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->coverUrl_:Ljava/lang/Object;

    .line 1467
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1468
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1470
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->coverUrl_:Ljava/lang/Object;

    .line 1473
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

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 1

    .prologue
    .line 1279
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->defaultInstance:Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1432
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->description_:Ljava/lang/Object;

    .line 1433
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1434
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1436
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->description_:Ljava/lang/Object;

    .line 1439
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
    .line 1287
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusicAlbum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$1700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1330
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->name_:Ljava/lang/Object;

    .line 1331
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1332
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1334
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->name_:Ljava/lang/Object;

    .line 1337
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

.method private getReleaseTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1398
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->releaseTime_:Ljava/lang/Object;

    .line 1399
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1400
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1402
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->releaseTime_:Ljava/lang/Object;

    .line 1405
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

.method private getSharerBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1364
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->sharer_:Ljava/lang/Object;

    .line 1365
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1366
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1368
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->sharer_:Ljava/lang/Object;

    .line 1371
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
    .line 1504
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->id_:J

    .line 1505
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->name_:Ljava/lang/Object;

    .line 1506
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->sharer_:Ljava/lang/Object;

    .line 1507
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->releaseTime_:Ljava/lang/Object;

    .line 1508
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->description_:Ljava/lang/Object;

    .line 1509
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->coverUrl_:Ljava/lang/Object;

    .line 1510
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;

    .line 1511
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1

    .prologue
    .line 1678
    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->create()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->access$2000()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    .prologue
    .line 1687
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1643
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    .line 1644
    .local v0, "builder":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1645
    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->access$1900(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v1

    .line 1647
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1655
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    .line 1656
    .local v0, "builder":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1657
    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->access$1900(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v1

    .line 1659
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1603
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->access$1900(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1610
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->access$1900(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1666
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->access$1900(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1673
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->access$1900(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1630
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->access$1900(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1637
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->access$1900(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1617
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->access$1900(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1624
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->access$1900(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCoverUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1452
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->coverUrl_:Ljava/lang/Object;

    .line 1453
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1454
    check-cast v1, Ljava/lang/String;

    .line 1461
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1456
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1457
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1458
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1459
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->coverUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1461
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 1

    .prologue
    .line 1283
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->defaultInstance:Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1418
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->description_:Ljava/lang/Object;

    .line 1419
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1420
    check-cast v1, Ljava/lang/String;

    .line 1427
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1422
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1423
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1424
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1425
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->description_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1427
    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1304
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->id_:J

    return-wide v0
.end method

.method public getMusiclist(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    return-object v0
.end method

.method public getMusiclistCount()I
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMusiclistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;

    return-object v0
.end method

.method public getMusiclistOrBuilder(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicOrBuilder;

    return-object v0
.end method

.method public getMusiclistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1316
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->name_:Ljava/lang/Object;

    .line 1317
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1318
    check-cast v1, Ljava/lang/String;

    .line 1325
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1320
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1321
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1322
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1323
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1325
    goto :goto_0
.end method

.method public getReleaseTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1384
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->releaseTime_:Ljava/lang/Object;

    .line 1385
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1386
    check-cast v1, Ljava/lang/String;

    .line 1393
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1388
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1389
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1390
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1391
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->releaseTime_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1393
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1554
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->memoizedSerializedSize:I

    .line 1555
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1589
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 1558
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 1559
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_1

    .line 1560
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->id_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1563
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v7, :cond_2

    .line 1564
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1567
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v8, :cond_3

    .line 1568
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getSharerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1571
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 1572
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getReleaseTimeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1575
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 1576
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1579
    :cond_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 1580
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getCoverUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1583
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 1584
    const/4 v4, 0x7

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1583
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1587
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1588
    iput v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->memoizedSerializedSize:I

    move v2, v1

    .line 1589
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_0
.end method

.method public getSharer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1350
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->sharer_:Ljava/lang/Object;

    .line 1351
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1352
    check-cast v1, Ljava/lang/String;

    .line 1359
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1354
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1355
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1356
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1357
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->sharer_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1359
    goto :goto_0
.end method

.method public hasCoverUrl()Z
    .locals 2

    .prologue
    .line 1448
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

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

.method public hasDescription()Z
    .locals 2

    .prologue
    .line 1414
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1300
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 1312
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

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

.method public hasReleaseTime()Z
    .locals 2

    .prologue
    .line 1380
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

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

.method public hasSharer()Z
    .locals 2

    .prologue
    .line 1346
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1291
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusicAlbum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$1800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1516
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->memoizedIsInitialized:B

    .line 1517
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1518
    if-ne v0, v1, :cond_0

    .line 1521
    :goto_0
    return v1

    .line 1518
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1520
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilderForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1265
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilderForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1

    .prologue
    .line 1682
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1697
    new-instance v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;)V

    .line 1698
    .local v0, "builder":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->toBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->toBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1

    .prologue
    .line 1691
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilder(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

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
    .line 1597
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

    .line 1526
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getSerializedSize()I

    .line 1527
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_0

    .line 1528
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->id_:J

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1530
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_1

    .line 1531
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1533
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v6, :cond_2

    .line 1534
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getSharerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1536
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 1537
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getReleaseTimeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1539
    :cond_3
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 1540
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1542
    :cond_4
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 1543
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getCoverUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1545
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1546
    const/4 v2, 0x7

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1545
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1548
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1549
    return-void
.end method
