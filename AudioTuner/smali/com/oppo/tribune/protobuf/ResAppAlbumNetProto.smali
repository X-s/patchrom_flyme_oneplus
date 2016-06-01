.class public final Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;
.super Ljava/lang/Object;
.source "ResAppAlbumNetProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;,
        Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumListOrBuilder;,
        Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;,
        Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumOrBuilder;,
        Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;,
        Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkOrBuilder;,
        Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;,
        Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPicOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_protobuf_ResourceApkAlbumList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_ResourceApkAlbumList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_protobuf_ResourceApkAlbum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_ResourceApkAlbum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_protobuf_ResourceApkShotPic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_ResourceApkShotPic_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_protobuf_ResourceApk_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_ResourceApk_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5454
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0016ResourceApkAlbum.proto\u0012\u0008protobuf\"@\n\u0012ResourceApkShotPic\u0012\r\n\u0005small\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006middle\u0018\u0002 \u0001(\t\u0012\u000b\n\u0003big\u0018\u0003 \u0001(\t\"\u00a6\u0003\n\u000bResourceApk\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0003\u0012\u000c\n\u0004name\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007package\u0018\u0003 \u0001(\t\u0012\u0013\n\u000bversionName\u0018\u0004 \u0001(\t\u0012\u0015\n\rversionNumber\u0018\u0005 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006author\u0018\u0007 \u0001(\t\u0012\u0013\n\u000breleaseTime\u0018\u0008 \u0001(\u0003\u0012\u0010\n\u0008filesize\u0018\t \u0001(\t\u0012\u0011\n\tdownloads\u0018\n \u0001(\t\u0012\r\n\u0005views\u0018\u000b \u0001(\t\u0012\u000f\n\u0007fileurl\u0018\u000c \u0001(\t\u0012\u000c\n\u0004icon\u0018\r \u0001(\t\u0012-\n\u0007shotPic\u0018\u000e \u0003(\u000b2\u001c.protobuf.ResourceApkShotPic\u0012\u000f\n\u0007apkTy"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "pe\u0018\u000f \u0001(\t\u0012\u000e\n\u0006praise\u0018\u0010 \u0001(\u0005\u0012\u000c\n\u0004poor\u0018\u0011 \u0001(\u0005\u0012\u0010\n\u0008nearmeId\u0018\u0012 \u0001(\u0003\u0012\u000b\n\u0003ext\u0018\u0013 \u0001(\t\u0012\u0013\n\u000bgamedataurl\u0018\u0014 \u0001(\t\u0012\u0014\n\u000cgamedatasize\u0018\u0015 \u0001(\t\u0012\u000b\n\u0003cid\u0018\u0016 \u0001(\u0005\"\u00a4\u0001\n\u0010ResourceApkAlbum\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0003\u0012\u000c\n\u0004name\u0018\u0002 \u0001(\t\u0012\r\n\u0005title\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006author\u0018\u0004 \u0001(\t\u0012\r\n\u0005mcimg\u0018\u0005 \u0001(\t\u0012\u0013\n\u000breleasetime\u0018\u0006 \u0001(\u0003\u0012#\n\u0004apks\u0018\u0007 \u0003(\u000b2\u0015.protobuf.ResourceApk\u0012\u000e\n\u0006detail\u0018\u0008 \u0001(\t\"\u0091\u0001\n\u0014ResourceApkAlbumList\u0012\r\n\u0005label\u0018\u0001 \u0001(\t\u0012\n\n\u0002id\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005total\u0018\u0003 \u0001(\u0005\u0012\u000f\n\u0007perpage\u0018\u0004 \u0001(\u0005\u0012\u000f\n\u0007curpage\u0018\u0005 \u0001(\u0005\u0012-\n\talb"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "umlist\u0018\u0006 \u0003(\u000b2\u001a.protobuf.ResourceApkAlbumB0\n\u0019com.oppo.tribune.protobufB\u0013ResAppAlbumNetProto"

    aput-object v3, v1, v2

    .line 5478
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;-><init>()V

    .line 5522
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 5527
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkShotPic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkShotPic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkShotPic_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkShotPic_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApk_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApk_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApk_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApk_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbumList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbumList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$6000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbumList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbumList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$7402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 5449
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 12
    return-void
.end method
