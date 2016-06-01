.class public final Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ResAppAlbumNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceApk"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    }
.end annotation


# static fields
.field public static final APKTYPE_FIELD_NUMBER:I = 0xf

.field public static final AUTHOR_FIELD_NUMBER:I = 0x7

.field public static final CID_FIELD_NUMBER:I = 0x16

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x6

.field public static final DOWNLOADS_FIELD_NUMBER:I = 0xa

.field public static final EXT_FIELD_NUMBER:I = 0x13

.field public static final FILESIZE_FIELD_NUMBER:I = 0x9

.field public static final FILEURL_FIELD_NUMBER:I = 0xc

.field public static final GAMEDATASIZE_FIELD_NUMBER:I = 0x15

.field public static final GAMEDATAURL_FIELD_NUMBER:I = 0x14

.field public static final ICON_FIELD_NUMBER:I = 0xd

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final NEARMEID_FIELD_NUMBER:I = 0x12

.field public static final PACKAGE_FIELD_NUMBER:I = 0x3

.field public static final POOR_FIELD_NUMBER:I = 0x11

.field public static final PRAISE_FIELD_NUMBER:I = 0x10

.field public static final RELEASETIME_FIELD_NUMBER:I = 0x8

.field public static final SHOTPIC_FIELD_NUMBER:I = 0xe

.field public static final VERSIONNAME_FIELD_NUMBER:I = 0x4

.field public static final VERSIONNUMBER_FIELD_NUMBER:I = 0x5

.field public static final VIEWS_FIELD_NUMBER:I = 0xb

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

.field private static final serialVersionUID:J


# instance fields
.field private apkType_:Ljava/lang/Object;

.field private author_:Ljava/lang/Object;

.field private bitField0_:I

.field private cid_:I

.field private description_:Ljava/lang/Object;

.field private downloads_:Ljava/lang/Object;

.field private ext_:Ljava/lang/Object;

.field private filesize_:Ljava/lang/Object;

.field private fileurl_:Ljava/lang/Object;

.field private gamedatasize_:Ljava/lang/Object;

.field private gamedataurl_:Ljava/lang/Object;

.field private icon_:Ljava/lang/Object;

.field private id_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private nearmeId_:J

.field private package_:Ljava/lang/Object;

.field private poor_:I

.field private praise_:I

.field private releaseTime_:J

.field private shotPic_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;",
            ">;"
        }
    .end annotation
.end field

.field private versionName_:Ljava/lang/Object;

.field private versionNumber_:Ljava/lang/Object;

.field private views_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3184
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    .line 3185
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->initFields()V

    .line 3186
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .prologue
    const/4 v0, -0x1

    .line 766
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1424
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->memoizedIsInitialized:B

    .line 1507
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->memoizedSerializedSize:I

    .line 767
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;

    .prologue
    .line 761
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;-><init>(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 769
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1424
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->memoizedIsInitialized:B

    .line 1507
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->memoizedSerializedSize:I

    .line 770
    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 761
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # J

    .prologue
    .line 761
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->id_:J

    return-wide p1
.end method

.method static synthetic access$1902(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->package_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->versionName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->versionNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->author_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # J

    .prologue
    .line 761
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->releaseTime_:J

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->filesize_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->downloads_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->views_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->fileurl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->icon_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->apkType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # I

    .prologue
    .line 761
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->praise_:I

    return p1
.end method

.method static synthetic access$3402(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # I

    .prologue
    .line 761
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->poor_:I

    return p1
.end method

.method static synthetic access$3502(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # J

    .prologue
    .line 761
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->nearmeId_:J

    return-wide p1
.end method

.method static synthetic access$3602(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->ext_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->gamedataurl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->gamedatasize_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # I

    .prologue
    .line 761
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->cid_:I

    return p1
.end method

.method static synthetic access$4002(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .param p1, "x1"    # I

    .prologue
    .line 761
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    return p1
.end method

.method static synthetic access$4100()Z
    .locals 1

    .prologue
    .line 761
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private getApkTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1238
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->apkType_:Ljava/lang/Object;

    .line 1239
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1240
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1242
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->apkType_:Ljava/lang/Object;

    .line 1245
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

.method private getAuthorBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 996
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->author_:Ljava/lang/Object;

    .line 997
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 998
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1000
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->author_:Ljava/lang/Object;

    .line 1003
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

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 1

    .prologue
    .line 775
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 962
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->description_:Ljava/lang/Object;

    .line 963
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 964
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 966
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->description_:Ljava/lang/Object;

    .line 969
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
    .line 783
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApk_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDownloadsBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->downloads_:Ljava/lang/Object;

    .line 1077
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1078
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1080
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->downloads_:Ljava/lang/Object;

    .line 1083
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

.method private getExtBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1308
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->ext_:Ljava/lang/Object;

    .line 1309
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1310
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1312
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->ext_:Ljava/lang/Object;

    .line 1315
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

.method private getFilesizeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->filesize_:Ljava/lang/Object;

    .line 1043
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1044
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1046
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->filesize_:Ljava/lang/Object;

    .line 1049
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

.method private getFileurlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1144
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->fileurl_:Ljava/lang/Object;

    .line 1145
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1146
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1148
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->fileurl_:Ljava/lang/Object;

    .line 1151
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

.method private getGamedatasizeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1376
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->gamedatasize_:Ljava/lang/Object;

    .line 1377
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1378
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1380
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->gamedatasize_:Ljava/lang/Object;

    .line 1383
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

.method private getGamedataurlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1342
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->gamedataurl_:Ljava/lang/Object;

    .line 1343
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1344
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1346
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->gamedataurl_:Ljava/lang/Object;

    .line 1349
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

.method private getIconBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->icon_:Ljava/lang/Object;

    .line 1179
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1180
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1182
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->icon_:Ljava/lang/Object;

    .line 1185
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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 826
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->name_:Ljava/lang/Object;

    .line 827
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 828
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 830
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->name_:Ljava/lang/Object;

    .line 833
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

.method private getPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 860
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->package_:Ljava/lang/Object;

    .line 861
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 862
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 864
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->package_:Ljava/lang/Object;

    .line 867
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

.method private getVersionNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 894
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->versionName_:Ljava/lang/Object;

    .line 895
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 896
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 898
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->versionName_:Ljava/lang/Object;

    .line 901
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

.method private getVersionNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 928
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->versionNumber_:Ljava/lang/Object;

    .line 929
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 930
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 932
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->versionNumber_:Ljava/lang/Object;

    .line 935
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

.method private getViewsBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->views_:Ljava/lang/Object;

    .line 1111
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1112
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1114
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->views_:Ljava/lang/Object;

    .line 1117
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

    .line 1400
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->id_:J

    .line 1401
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->name_:Ljava/lang/Object;

    .line 1402
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->package_:Ljava/lang/Object;

    .line 1403
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->versionName_:Ljava/lang/Object;

    .line 1404
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->versionNumber_:Ljava/lang/Object;

    .line 1405
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->description_:Ljava/lang/Object;

    .line 1406
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->author_:Ljava/lang/Object;

    .line 1407
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->releaseTime_:J

    .line 1408
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->filesize_:Ljava/lang/Object;

    .line 1409
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->downloads_:Ljava/lang/Object;

    .line 1410
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->views_:Ljava/lang/Object;

    .line 1411
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->fileurl_:Ljava/lang/Object;

    .line 1412
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->icon_:Ljava/lang/Object;

    .line 1413
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    .line 1414
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->apkType_:Ljava/lang/Object;

    .line 1415
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->praise_:I

    .line 1416
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->poor_:I

    .line 1417
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->nearmeId_:J

    .line 1418
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->ext_:Ljava/lang/Object;

    .line 1419
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->gamedataurl_:Ljava/lang/Object;

    .line 1420
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->gamedatasize_:Ljava/lang/Object;

    .line 1421
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->cid_:I

    .line 1422
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 1694
    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->access$1400()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    .prologue
    .line 1703
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1659
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    .line 1660
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1661
    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v1

    .line 1663
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1671
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    .line 1672
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1673
    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v1

    .line 1675
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1619
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1626
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1682
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1689
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1646
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1653
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1633
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1640
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApkType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1224
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->apkType_:Ljava/lang/Object;

    .line 1225
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1226
    check-cast v1, Ljava/lang/String;

    .line 1233
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1228
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1229
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1230
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1231
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->apkType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1233
    goto :goto_0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 4

    .prologue
    .line 982
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->author_:Ljava/lang/Object;

    .line 983
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 984
    check-cast v1, Ljava/lang/String;

    .line 991
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 986
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 987
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 988
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 989
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->author_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 991
    goto :goto_0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 1396
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->cid_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 1

    .prologue
    .line 779
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 948
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->description_:Ljava/lang/Object;

    .line 949
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 950
    check-cast v1, Ljava/lang/String;

    .line 957
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 952
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 953
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 954
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 955
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->description_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 957
    goto :goto_0
.end method

.method public getDownloads()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->downloads_:Ljava/lang/Object;

    .line 1063
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1064
    check-cast v1, Ljava/lang/String;

    .line 1071
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1066
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1067
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1068
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1069
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->downloads_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1071
    goto :goto_0
.end method

.method public getExt()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1294
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->ext_:Ljava/lang/Object;

    .line 1295
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1296
    check-cast v1, Ljava/lang/String;

    .line 1303
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1298
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1299
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1300
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1301
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->ext_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1303
    goto :goto_0
.end method

.method public getFilesize()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1028
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->filesize_:Ljava/lang/Object;

    .line 1029
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1030
    check-cast v1, Ljava/lang/String;

    .line 1037
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1032
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1033
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1034
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1035
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->filesize_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1037
    goto :goto_0
.end method

.method public getFileurl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->fileurl_:Ljava/lang/Object;

    .line 1131
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1132
    check-cast v1, Ljava/lang/String;

    .line 1139
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1134
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1135
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1136
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1137
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->fileurl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1139
    goto :goto_0
.end method

.method public getGamedatasize()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1362
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->gamedatasize_:Ljava/lang/Object;

    .line 1363
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1364
    check-cast v1, Ljava/lang/String;

    .line 1371
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1366
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1367
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1368
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1369
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->gamedatasize_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1371
    goto :goto_0
.end method

.method public getGamedataurl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1328
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->gamedataurl_:Ljava/lang/Object;

    .line 1329
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1330
    check-cast v1, Ljava/lang/String;

    .line 1337
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1332
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1333
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1334
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1335
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->gamedataurl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1337
    goto :goto_0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->icon_:Ljava/lang/Object;

    .line 1165
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1166
    check-cast v1, Ljava/lang/String;

    .line 1173
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1168
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1169
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1170
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1171
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->icon_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1173
    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 800
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->id_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 812
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->name_:Ljava/lang/Object;

    .line 813
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 814
    check-cast v1, Ljava/lang/String;

    .line 821
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 816
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 817
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 818
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 819
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 821
    goto :goto_0
.end method

.method public getNearmeId()J
    .locals 2

    .prologue
    .line 1282
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->nearmeId_:J

    return-wide v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 846
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->package_:Ljava/lang/Object;

    .line 847
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 848
    check-cast v1, Ljava/lang/String;

    .line 855
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 850
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 851
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 852
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 853
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->package_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 855
    goto :goto_0
.end method

.method public getPoor()I
    .locals 1

    .prologue
    .line 1270
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->poor_:I

    return v0
.end method

.method public getPraise()I
    .locals 1

    .prologue
    .line 1258
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->praise_:I

    return v0
.end method

.method public getReleaseTime()J
    .locals 2

    .prologue
    .line 1016
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->releaseTime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 11

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1510
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->memoizedSerializedSize:I

    .line 1511
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1605
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 1514
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 1515
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_1

    .line 1516
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->id_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1519
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v7, :cond_2

    .line 1520
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1523
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v8, :cond_3

    .line 1524
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1527
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v9, :cond_4

    .line 1528
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getVersionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1531
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-ne v3, v10, :cond_5

    .line 1532
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getVersionNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1535
    :cond_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 1536
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1539
    :cond_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7

    .line 1540
    const/4 v3, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getAuthorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1543
    :cond_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8

    .line 1544
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->releaseTime_:J

    invoke-static {v9, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1547
    :cond_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_9

    .line 1548
    const/16 v3, 0x9

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getFilesizeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1551
    :cond_9
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_a

    .line 1552
    const/16 v3, 0xa

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDownloadsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1555
    :cond_a
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_b

    .line 1556
    const/16 v3, 0xb

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getViewsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1559
    :cond_b
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_c

    .line 1560
    const/16 v3, 0xc

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getFileurlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1563
    :cond_c
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_d

    .line 1564
    const/16 v3, 0xd

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getIconBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1567
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_e

    .line 1568
    const/16 v4, 0xe

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1567
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1571
    :cond_e
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_f

    .line 1572
    const/16 v3, 0xf

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getApkTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1575
    :cond_f
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_10

    .line 1576
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->praise_:I

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1579
    :cond_10
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    const v4, 0x8000

    and-int/2addr v3, v4

    const v4, 0x8000

    if-ne v3, v4, :cond_11

    .line 1580
    const/16 v3, 0x11

    iget v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->poor_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1583
    :cond_11
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    const/high16 v4, 0x10000

    if-ne v3, v4, :cond_12

    .line 1584
    const/16 v3, 0x12

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->nearmeId_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1587
    :cond_12
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    const/high16 v4, 0x20000

    if-ne v3, v4, :cond_13

    .line 1588
    const/16 v3, 0x13

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getExtBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1591
    :cond_13
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_14

    .line 1592
    const/16 v3, 0x14

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getGamedataurlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1595
    :cond_14
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_15

    .line 1596
    const/16 v3, 0x15

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getGamedatasizeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1599
    :cond_15
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_16

    .line 1600
    const/16 v3, 0x16

    iget v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->cid_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1603
    :cond_16
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1604
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->memoizedSerializedSize:I

    move v2, v1

    .line 1605
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_0
.end method

.method public getShotPic(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    return-object v0
.end method

.method public getShotPicCount()I
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getShotPicList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    return-object v0
.end method

.method public getShotPicOrBuilder(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPicOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPicOrBuilder;

    return-object v0
.end method

.method public getShotPicOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPicOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 880
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->versionName_:Ljava/lang/Object;

    .line 881
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 882
    check-cast v1, Ljava/lang/String;

    .line 889
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 884
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 885
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 886
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 887
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->versionName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 889
    goto :goto_0
.end method

.method public getVersionNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 914
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->versionNumber_:Ljava/lang/Object;

    .line 915
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 916
    check-cast v1, Ljava/lang/String;

    .line 923
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 918
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 919
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 920
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 921
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->versionNumber_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 923
    goto :goto_0
.end method

.method public getViews()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1096
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->views_:Ljava/lang/Object;

    .line 1097
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1098
    check-cast v1, Ljava/lang/String;

    .line 1105
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1100
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1101
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1102
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1103
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->views_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1105
    goto :goto_0
.end method

.method public hasApkType()Z
    .locals 2

    .prologue
    .line 1220
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

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

.method public hasAuthor()Z
    .locals 2

    .prologue
    .line 978
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

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

.method public hasCid()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100000

    .line 1392
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 944
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

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

.method public hasDownloads()Z
    .locals 2

    .prologue
    .line 1058
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

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

.method public hasExt()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 1290
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFilesize()Z
    .locals 2

    .prologue
    .line 1024
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

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

.method public hasFileurl()Z
    .locals 2

    .prologue
    .line 1126
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

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

.method public hasGamedatasize()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 1358
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGamedataurl()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000

    .line 1324
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIcon()Z
    .locals 2

    .prologue
    .line 1160
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 796
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

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
    .line 808
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

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

.method public hasNearmeId()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 1278
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackage()Z
    .locals 2

    .prologue
    .line 842
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

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

.method public hasPoor()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 1266
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPraise()Z
    .locals 2

    .prologue
    .line 1254
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

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

.method public hasReleaseTime()Z
    .locals 2

    .prologue
    .line 1012
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

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

.method public hasVersionName()Z
    .locals 2

    .prologue
    .line 876
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

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

.method public hasVersionNumber()Z
    .locals 2

    .prologue
    .line 910
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

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

.method public hasViews()Z
    .locals 2

    .prologue
    .line 1092
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 787
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApk_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1427
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->memoizedIsInitialized:B

    .line 1428
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1429
    if-ne v0, v1, :cond_0

    .line 1432
    :goto_0
    return v1

    .line 1429
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1431
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 761
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 1698
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1713
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;)V

    .line 1714
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->toBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->toBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 1707
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilder(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

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
    .line 1613
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
    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1437
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getSerializedSize()I

    .line 1438
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_0

    .line 1439
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->id_:J

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1441
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_1

    .line 1442
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1444
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v6, :cond_2

    .line 1445
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1447
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v7, :cond_3

    .line 1448
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getVersionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1450
    :cond_3
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v8, :cond_4

    .line 1451
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getVersionNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1453
    :cond_4
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 1454
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1456
    :cond_5
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 1457
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getAuthorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1459
    :cond_6
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 1460
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->releaseTime_:J

    invoke-virtual {p1, v7, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1462
    :cond_7
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    .line 1463
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getFilesizeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1465
    :cond_8
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_9

    .line 1466
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDownloadsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1468
    :cond_9
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_a

    .line 1469
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getViewsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1471
    :cond_a
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_b

    .line 1472
    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getFileurlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1474
    :cond_b
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_c

    .line 1475
    const/16 v1, 0xd

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getIconBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1477
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 1478
    const/16 v2, 0xe

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1480
    :cond_d
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 1481
    const/16 v1, 0xf

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getApkTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1483
    :cond_e
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 1484
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->praise_:I

    invoke-virtual {p1, v8, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1486
    :cond_f
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_10

    .line 1487
    const/16 v1, 0x11

    iget v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->poor_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1489
    :cond_10
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_11

    .line 1490
    const/16 v1, 0x12

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->nearmeId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1492
    :cond_11
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_12

    .line 1493
    const/16 v1, 0x13

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getExtBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1495
    :cond_12
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_13

    .line 1496
    const/16 v1, 0x14

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getGamedataurlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1498
    :cond_13
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    const/high16 v2, 0x80000

    if-ne v1, v2, :cond_14

    .line 1499
    const/16 v1, 0x15

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getGamedatasizeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1501
    :cond_14
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    const/high16 v2, 0x100000

    if-ne v1, v2, :cond_15

    .line 1502
    const/16 v1, 0x16

    iget v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->cid_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1504
    :cond_15
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1505
    return-void
.end method
