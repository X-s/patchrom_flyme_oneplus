.class public final Lcom/oppo/tribune/protobuf/MusicAlbumListProto;
.super Ljava/lang/Object;
.source "MusicAlbumListProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;,
        Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumListOrBuilder;,
        Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;,
        Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;,
        Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;,
        Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_protobuf_ResourceAlbumList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_ResourceAlbumList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_protobuf_ResourceMusicAlbum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_ResourceMusicAlbum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_protobuf_ResourceMusic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_ResourceMusic_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3419
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0013ResourceMusic.proto\u0012\u0008protobuf\"\u00a4\u0001\n\rResourceMusic\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0005\u0012\u000c\n\u0004name\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006singer\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006format\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006sharer\u0018\u0005 \u0001(\t\u0012\u0013\n\u000breleaseTime\u0018\u0006 \u0001(\t\u0012\u0010\n\u0008fileSize\u0018\u0007 \u0001(\t\u0012\u000f\n\u0007fileUrl\u0018\u0008 \u0001(\t\u0012\u0011\n\tdownloads\u0018\t \u0001(\t\"\u00a6\u0001\n\u0012ResourceMusicAlbum\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0003\u0012\u000c\n\u0004name\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006sharer\u0018\u0003 \u0001(\t\u0012\u0013\n\u000breleaseTime\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0005 \u0001(\t\u0012\u0010\n\u0008coverUrl\u0018\u0006 \u0001(\t\u0012*\n\tmusiclist\u0018\u0007 \u0003(\u000b2\u0017.protobuf.ResourceMusic\"\u0090\u0001\n\u0011ResourceAlbumList\u0012\r\n\u0005label\u0018\u0001"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, " \u0001(\t\u0012\n\n\u0002id\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005total\u0018\u0003 \u0001(\u0005\u0012\u000f\n\u0007perpage\u0018\u0004 \u0001(\u0005\u0012\u000f\n\u0007curpage\u0018\u0005 \u0001(\u0005\u0012/\n\talbumlist\u0018\u0006 \u0003(\u000b2\u001c.protobuf.ResourceMusicAlbumB0\n\u0019com.oppo.tribune.protobufB\u0013MusicAlbumListProto"

    aput-object v3, v1, v2

    .line 3435
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;-><init>()V

    .line 3468
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 3473
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
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusic_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusic_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusicAlbum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusicAlbum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusicAlbum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusicAlbum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceAlbumList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceAlbumList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceAlbumList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceAlbumList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 3414
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 12
    return-void
.end method
