.class public final Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ResAppNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResAppNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceApk"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    }
.end annotation


# static fields
.field public static final APKTYPE_FIELD_NUMBER:I = 0xf

.field public static final AUTHOR_FIELD_NUMBER:I = 0x7

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x6

.field public static final DOWNLOADS_FIELD_NUMBER:I = 0xa

.field public static final EXT_FIELD_NUMBER:I = 0x13

.field public static final FILESIZE_FIELD_NUMBER:I = 0x9

.field public static final FILEURL_FIELD_NUMBER:I = 0xc

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

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

.field private static final serialVersionUID:J


# instance fields
.field private apkType_:Ljava/lang/Object;

.field private author_:Ljava/lang/Object;

.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private downloads_:Ljava/lang/Object;

.field private ext_:Ljava/lang/Object;

.field private filesize_:Ljava/lang/Object;

.field private fileurl_:Ljava/lang/Object;

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
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;",
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
    .line 2913
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    .line 2914
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->initFields()V

    .line 2915
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .prologue
    const/4 v0, -0x1

    .line 751
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1326
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->memoizedIsInitialized:B

    .line 1400
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->memoizedSerializedSize:I

    .line 752
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;Lcom/oppo/tribune/protobuf/ResAppNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$1;

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;-><init>(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 754
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1326
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->memoizedIsInitialized:B

    .line 1400
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->memoizedSerializedSize:I

    .line 755
    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 746
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # J

    .prologue
    .line 746
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->id_:J

    return-wide p1
.end method

.method static synthetic access$1902(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->package_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->versionName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->versionNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->author_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # J

    .prologue
    .line 746
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->releaseTime_:J

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->filesize_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->downloads_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->views_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->fileurl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->icon_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    .prologue
    .line 746
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->apkType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # I

    .prologue
    .line 746
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->praise_:I

    return p1
.end method

.method static synthetic access$3402(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # I

    .prologue
    .line 746
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->poor_:I

    return p1
.end method

.method static synthetic access$3502(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # J

    .prologue
    .line 746
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->nearmeId_:J

    return-wide p1
.end method

.method static synthetic access$3602(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->ext_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .param p1, "x1"    # I

    .prologue
    .line 746
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    return p1
.end method

.method static synthetic access$3800()Z
    .locals 1

    .prologue
    .line 746
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private getApkTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1223
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->apkType_:Ljava/lang/Object;

    .line 1224
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1225
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1227
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->apkType_:Ljava/lang/Object;

    .line 1230
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
    .line 981
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->author_:Ljava/lang/Object;

    .line 982
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 983
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 985
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->author_:Ljava/lang/Object;

    .line 988
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

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 1

    .prologue
    .line 760
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 947
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->description_:Ljava/lang/Object;

    .line 948
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 949
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 951
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->description_:Ljava/lang/Object;

    .line 954
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
    .line 768
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto;->internal_static_protobuf_ResourceApk_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDownloadsBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->downloads_:Ljava/lang/Object;

    .line 1062
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1063
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1065
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->downloads_:Ljava/lang/Object;

    .line 1068
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
    .line 1293
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->ext_:Ljava/lang/Object;

    .line 1294
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1295
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1297
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->ext_:Ljava/lang/Object;

    .line 1300
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
    .line 1027
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->filesize_:Ljava/lang/Object;

    .line 1028
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1029
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1031
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->filesize_:Ljava/lang/Object;

    .line 1034
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
    .line 1129
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->fileurl_:Ljava/lang/Object;

    .line 1130
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1131
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1133
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->fileurl_:Ljava/lang/Object;

    .line 1136
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
    .line 1163
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->icon_:Ljava/lang/Object;

    .line 1164
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1165
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1167
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->icon_:Ljava/lang/Object;

    .line 1170
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
    .line 811
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->name_:Ljava/lang/Object;

    .line 812
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 813
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 815
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->name_:Ljava/lang/Object;

    .line 818
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
    .line 845
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->package_:Ljava/lang/Object;

    .line 846
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 847
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 849
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->package_:Ljava/lang/Object;

    .line 852
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
    .line 879
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->versionName_:Ljava/lang/Object;

    .line 880
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 881
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 883
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->versionName_:Ljava/lang/Object;

    .line 886
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
    .line 913
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->versionNumber_:Ljava/lang/Object;

    .line 914
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 915
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 917
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->versionNumber_:Ljava/lang/Object;

    .line 920
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
    .line 1095
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->views_:Ljava/lang/Object;

    .line 1096
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1097
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1099
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->views_:Ljava/lang/Object;

    .line 1102
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

    .line 1305
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->id_:J

    .line 1306
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->name_:Ljava/lang/Object;

    .line 1307
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->package_:Ljava/lang/Object;

    .line 1308
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->versionName_:Ljava/lang/Object;

    .line 1309
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->versionNumber_:Ljava/lang/Object;

    .line 1310
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->description_:Ljava/lang/Object;

    .line 1311
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->author_:Ljava/lang/Object;

    .line 1312
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->releaseTime_:J

    .line 1313
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->filesize_:Ljava/lang/Object;

    .line 1314
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->downloads_:Ljava/lang/Object;

    .line 1315
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->views_:Ljava/lang/Object;

    .line 1316
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->fileurl_:Ljava/lang/Object;

    .line 1317
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->icon_:Ljava/lang/Object;

    .line 1318
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    .line 1319
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->apkType_:Ljava/lang/Object;

    .line 1320
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->praise_:I

    .line 1321
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->poor_:I

    .line 1322
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->nearmeId_:J

    .line 1323
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->ext_:Ljava/lang/Object;

    .line 1324
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 1575
    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->access$1400()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    .prologue
    .line 1584
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1540
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    .line 1541
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1542
    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v1

    .line 1544
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1552
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    .line 1553
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1554
    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v1

    .line 1556
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1500
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1507
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1563
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1570
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1527
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1534
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1514
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1521
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->access$1300(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApkType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1209
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->apkType_:Ljava/lang/Object;

    .line 1210
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1211
    check-cast v1, Ljava/lang/String;

    .line 1218
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1213
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1214
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1215
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1216
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->apkType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1218
    goto :goto_0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 4

    .prologue
    .line 967
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->author_:Ljava/lang/Object;

    .line 968
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 969
    check-cast v1, Ljava/lang/String;

    .line 976
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 971
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 972
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 973
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 974
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->author_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 976
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 1

    .prologue
    .line 764
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 933
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->description_:Ljava/lang/Object;

    .line 934
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 935
    check-cast v1, Ljava/lang/String;

    .line 942
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 937
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 938
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 939
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 940
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->description_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 942
    goto :goto_0
.end method

.method public getDownloads()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->downloads_:Ljava/lang/Object;

    .line 1048
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1049
    check-cast v1, Ljava/lang/String;

    .line 1056
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1051
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1052
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1053
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1054
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->downloads_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1056
    goto :goto_0
.end method

.method public getExt()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1279
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->ext_:Ljava/lang/Object;

    .line 1280
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1281
    check-cast v1, Ljava/lang/String;

    .line 1288
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1283
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1284
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1285
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1286
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->ext_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1288
    goto :goto_0
.end method

.method public getFilesize()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1013
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->filesize_:Ljava/lang/Object;

    .line 1014
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1015
    check-cast v1, Ljava/lang/String;

    .line 1022
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1017
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1018
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1019
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1020
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->filesize_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1022
    goto :goto_0
.end method

.method public getFileurl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1115
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->fileurl_:Ljava/lang/Object;

    .line 1116
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1117
    check-cast v1, Ljava/lang/String;

    .line 1124
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1119
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1120
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1121
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1122
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->fileurl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1124
    goto :goto_0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1149
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->icon_:Ljava/lang/Object;

    .line 1150
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1151
    check-cast v1, Ljava/lang/String;

    .line 1158
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1153
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1154
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1155
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1156
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->icon_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1158
    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 785
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->id_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 797
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->name_:Ljava/lang/Object;

    .line 798
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 799
    check-cast v1, Ljava/lang/String;

    .line 806
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 801
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 802
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 804
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 806
    goto :goto_0
.end method

.method public getNearmeId()J
    .locals 2

    .prologue
    .line 1267
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->nearmeId_:J

    return-wide v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 831
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->package_:Ljava/lang/Object;

    .line 832
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 833
    check-cast v1, Ljava/lang/String;

    .line 840
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 835
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 836
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 837
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 838
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->package_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 840
    goto :goto_0
.end method

.method public getPoor()I
    .locals 1

    .prologue
    .line 1255
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->poor_:I

    return v0
.end method

.method public getPraise()I
    .locals 1

    .prologue
    .line 1243
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->praise_:I

    return v0
.end method

.method public getReleaseTime()J
    .locals 2

    .prologue
    .line 1001
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->releaseTime_:J

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

    .line 1403
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->memoizedSerializedSize:I

    .line 1404
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1486
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 1407
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 1408
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_1

    .line 1409
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->id_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1412
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v7, :cond_2

    .line 1413
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1416
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v8, :cond_3

    .line 1417
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1420
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v9, :cond_4

    .line 1421
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getVersionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1424
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-ne v3, v10, :cond_5

    .line 1425
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getVersionNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1428
    :cond_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 1429
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1432
    :cond_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7

    .line 1433
    const/4 v3, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getAuthorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1436
    :cond_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8

    .line 1437
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->releaseTime_:J

    invoke-static {v9, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1440
    :cond_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_9

    .line 1441
    const/16 v3, 0x9

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getFilesizeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1444
    :cond_9
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_a

    .line 1445
    const/16 v3, 0xa

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDownloadsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1448
    :cond_a
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_b

    .line 1449
    const/16 v3, 0xb

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getViewsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1452
    :cond_b
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_c

    .line 1453
    const/16 v3, 0xc

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getFileurlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1456
    :cond_c
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_d

    .line 1457
    const/16 v3, 0xd

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getIconBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1460
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_e

    .line 1461
    const/16 v4, 0xe

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1460
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1464
    :cond_e
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_f

    .line 1465
    const/16 v3, 0xf

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getApkTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1468
    :cond_f
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_10

    .line 1469
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->praise_:I

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1472
    :cond_10
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    const v4, 0x8000

    and-int/2addr v3, v4

    const v4, 0x8000

    if-ne v3, v4, :cond_11

    .line 1473
    const/16 v3, 0x11

    iget v4, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->poor_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1476
    :cond_11
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    const/high16 v4, 0x10000

    if-ne v3, v4, :cond_12

    .line 1477
    const/16 v3, 0x12

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->nearmeId_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1480
    :cond_12
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    const/high16 v4, 0x20000

    if-ne v3, v4, :cond_13

    .line 1481
    const/16 v3, 0x13

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getExtBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1484
    :cond_13
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1485
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->memoizedSerializedSize:I

    move v2, v1

    .line 1486
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_0
.end method

.method public getShotPic(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    return-object v0
.end method

.method public getShotPicCount()I
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;

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
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    return-object v0
.end method

.method public getShotPicOrBuilder(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPicOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPicOrBuilder;

    return-object v0
.end method

.method public getShotPicOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPicOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 865
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->versionName_:Ljava/lang/Object;

    .line 866
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 867
    check-cast v1, Ljava/lang/String;

    .line 874
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 869
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 870
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 871
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 872
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->versionName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 874
    goto :goto_0
.end method

.method public getVersionNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 899
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->versionNumber_:Ljava/lang/Object;

    .line 900
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 901
    check-cast v1, Ljava/lang/String;

    .line 908
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 903
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 904
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 906
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->versionNumber_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 908
    goto :goto_0
.end method

.method public getViews()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->views_:Ljava/lang/Object;

    .line 1082
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1083
    check-cast v1, Ljava/lang/String;

    .line 1090
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1085
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1086
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1087
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1088
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->views_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1090
    goto :goto_0
.end method

.method public hasApkType()Z
    .locals 2

    .prologue
    .line 1205
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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
    .line 963
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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

.method public hasDescription()Z
    .locals 2

    .prologue
    .line 929
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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
    .line 1043
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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

    .line 1275
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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
    .line 1009
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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
    .line 1111
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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

.method public hasIcon()Z
    .locals 2

    .prologue
    .line 1145
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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

    .line 781
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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
    .line 793
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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

    .line 1263
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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
    .line 827
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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

    .line 1251
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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
    .line 1239
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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
    .line 997
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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
    .line 861
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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
    .line 895
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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
    .line 1077
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

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
    .line 772
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto;->internal_static_protobuf_ResourceApk_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto;->access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1329
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->memoizedIsInitialized:B

    .line 1330
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1331
    if-ne v0, v1, :cond_0

    .line 1334
    :goto_0
    return v1

    .line 1331
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1333
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 746
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 1579
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1594
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResAppNetProto$1;)V

    .line 1595
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->toBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->toBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 1588
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilder(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

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
    .line 1494
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

    .line 1339
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getSerializedSize()I

    .line 1340
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_0

    .line 1341
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->id_:J

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1343
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_1

    .line 1344
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1346
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v6, :cond_2

    .line 1347
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1349
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v7, :cond_3

    .line 1350
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getVersionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1352
    :cond_3
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v8, :cond_4

    .line 1353
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getVersionNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1355
    :cond_4
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 1356
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1358
    :cond_5
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 1359
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getAuthorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1361
    :cond_6
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 1362
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->releaseTime_:J

    invoke-virtual {p1, v7, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1364
    :cond_7
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    .line 1365
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getFilesizeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1367
    :cond_8
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_9

    .line 1368
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDownloadsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1370
    :cond_9
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_a

    .line 1371
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getViewsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1373
    :cond_a
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_b

    .line 1374
    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getFileurlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1376
    :cond_b
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_c

    .line 1377
    const/16 v1, 0xd

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getIconBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1379
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 1380
    const/16 v2, 0xe

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1382
    :cond_d
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 1383
    const/16 v1, 0xf

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getApkTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1385
    :cond_e
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 1386
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->praise_:I

    invoke-virtual {p1, v8, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1388
    :cond_f
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_10

    .line 1389
    const/16 v1, 0x11

    iget v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->poor_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1391
    :cond_10
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_11

    .line 1392
    const/16 v1, 0x12

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->nearmeId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1394
    :cond_11
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_12

    .line 1395
    const/16 v1, 0x13

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getExtBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1397
    :cond_12
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1398
    return-void
.end method
