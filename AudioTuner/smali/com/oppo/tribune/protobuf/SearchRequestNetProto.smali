.class public final Lcom/oppo/tribune/protobuf/SearchRequestNetProto;
.super Ljava/lang/Object;
.source "SearchRequestNetProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;,
        Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequestOrBuilder;,
        Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;,
        Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequestOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_protobuf_GetDetailRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_GetDetailRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_protobuf_GetListRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_GetListRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2825
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\rRequest.proto\u0012\u0008protobuf\"\u00b4\u0002\n\u000eGetListRequest\u0012\u000e\n\u0006userId\u0018\u0001 \u0001(\u0005\u0012\n\n\u0002os\u0018\u0002 \u0001(\u0005\u0012\u000c\n\u0004size\u0018\u0003 \u0001(\u0005\u0012\r\n\u0005start\u0018\u0004 \u0001(\u0005\u0012\u000e\n\u0006mobile\u0018\u0005 \u0001(\t\u0012\u000f\n\u0007orderBy\u0018\u0006 \u0001(\u0005\u0012\u0012\n\ncategoryId\u0018\u0007 \u0001(\u0005\u0012\u0014\n\u000cthemeVersion\u0018\u0008 \u0001(\u0005\u0012\u0010\n\u0008platform\u0018\t \u0001(\u0005\u0012\u0010\n\u0008compress\u0018\n \u0001(\u0005\u0012\u000f\n\u0007resType\u0018\u000b \u0001(\u0005\u0012\u0010\n\u0008relateId\u0018\u000c \u0001(\u0005\u0012\u000f\n\u0007keyword\u0018\r \u0001(\t\u0012\u000e\n\u0006screen\u0018\u000e \u0001(\t\u0012\u000e\n\u0006source\u0018\u000f \u0001(\u0005\u0012\u0011\n\tuserToken\u0018\u0010 \u0001(\t\u0012\u0013\n\u000brandomCount\u0018\u0011 \u0001(\u0005\"\u00dc\u0001\n\u0010GetDetailRequest\u0012\u000e\n\u0006userId\u0018\u0001 \u0001(\u0005\u0012\u0011\n\tproductId\u0018\u0002 \u0001(\u0005\u0012\u000c\n\u0004imei"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "\u0018\u0003 \u0001(\t\u0012\u0012\n\nsourceCode\u0018\u0004 \u0001(\t\u0012\u0010\n\u0008position\u0018\u0005 \u0001(\u0005\u0012\u0010\n\u0008compress\u0018\u0006 \u0001(\u0005\u0012\u000f\n\u0007resType\u0018\u0007 \u0001(\u0005\u0012\n\n\u0002os\u0018\u0008 \u0001(\u0005\u0012\u000f\n\u0007themeOs\u0018\t \u0001(\u0005\u0012\u000e\n\u0006mobile\u0018\n \u0001(\t\u0012\u0011\n\tuserToken\u0018\u000b \u0001(\t\u0012\u000e\n\u0006source\u0018\u000c \u0001(\u0005B2\n\u0019com.oppo.tribune.protobufB\u0015SearchRequestNetProto"

    aput-object v3, v1, v2

    .line 2842
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$1;-><init>()V

    .line 2870
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 2875
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
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetListRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetListRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetListRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetListRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetDetailRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetDetailRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetDetailRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetDetailRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 2820
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 12
    return-void
.end method
