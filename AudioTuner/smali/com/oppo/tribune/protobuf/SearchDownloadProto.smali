.class public final Lcom/oppo/tribune/protobuf/SearchDownloadProto;
.super Ljava/lang/Object;
.source "SearchDownloadProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;,
        Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequestOrBuilder;,
        Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;,
        Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadListOrBuilder;,
        Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;,
        Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItemOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_protobuf_DownloadItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_DownloadItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_protobuf_DownloadList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_DownloadList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_protobuf_DownloadRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_DownloadRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2966
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u000eDownload.proto\u0012\u0008protobuf\"\u00ae\u0001\n\u000cDownloadItem\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0003\u0012\u000c\n\u0004type\u0018\u0002 \u0001(\u0005\u0012\u000e\n\u0006status\u0018\u0003 \u0001(\u0005\u0012\u000b\n\u0003key\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007fileUrl\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006subUrl\u0018\u0006 \u0001(\t\u0012\u0013\n\u000bversionCode\u0018\u0007 \u0001(\u0005\u0012\u000e\n\u0006remark\u0018\u0008 \u0001(\t\u0012\u000f\n\u0007p2sOpen\u0018\t \u0001(\u0005\u0012\u0010\n\u0008masterId\u0018\n \u0001(\u0003\"8\n\u000cDownloadList\u0012(\n\u0008download\u0018\u0001 \u0003(\u000b2\u0016.protobuf.DownloadItem\"\u00b1\u0001\n\u000fDownloadRequest\u0012\u000e\n\u0006userId\u0018\u0001 \u0001(\u0005\u0012\u000c\n\u0004imei\u0018\u0002 \u0001(\t\u0012\u0012\n\nsourceCode\u0018\u0003 \u0001(\t\u0012\u0012\n\nproductIds\u0018\u0004 \u0003(\u0003\u0012\u0011\n\tpositions\u0018\u0005 \u0003(\u0005\u0012\u0011\n\tuserAgent\u0018\u0006 \u0001(\t\u0012\u0011\n\tuserTok"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "en\u0018\u0007 \u0001(\t\u0012\u000e\n\u0006source\u0018\u0008 \u0001(\u0005\u0012\u000f\n\u0007keyword\u0018\t \u0001(\tB0\n\u0019com.oppo.tribune.protobufB\u0013SearchDownloadProto"

    aput-object v3, v1, v2

    .line 2980
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;-><init>()V

    .line 3012
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 3017
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
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 2961
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 12
    return-void
.end method
