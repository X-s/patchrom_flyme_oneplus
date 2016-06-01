.class public final Lcom/oppo/tribune/protobuf/PackNoticesListProto;
.super Ljava/lang/Object;
.source "PackNoticesListProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;,
        Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelistOrBuilder;,
        Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;,
        Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticeOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_pb_paikenotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_pb_paikenotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_pb_paikenoticelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_pb_paikenoticelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2055
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\n\u0014pb_paikenotice.proto\u001a\rpb_user.proto\"t\n\u000epb_paikenotice\u0012\u000b\n\u0003uid\u0018\u0001 \u0002(\u0003\u0012\u000c\n\u0004type\u0018\u0002 \u0002(\u0005\u0012\u000b\n\u0003msg\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008dateline\u0018\u0004 \u0002(\u0005\u0012\u000b\n\u0003num\u0018\u0005 \u0002(\u0005\u0012\u000e\n\u0006status\u0018\u0006 \u0002(\u0005\u0012\u000b\n\u0003ext\u0018\u0007 \u0002(\t\"\u0083\u0001\n\u0012pb_paikenoticelist\u0012#\n\nnoticelist\u0018\u0001 \u0003(\u000b2\u000f.pb_paikenotice\u0012\u001a\n\u0008userlist\u0018\u0002 \u0003(\u000b2\u0008.pb_user\u0012\u000c\n\u0004page\u0018\u0003 \u0001(\u0005\u0012\u000f\n\u0007perpage\u0018\u0004 \u0001(\u0005\u0012\r\n\u0005total\u0018\u0005 \u0001(\u0005B1\n\u0019com.oppo.tribune.protobufB\u0014PackNoticesListProto"

    aput-object v2, v1, v4

    .line 2064
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$1;-><init>()V

    .line 2087
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 2092
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
    sget-object v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenoticelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenoticelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenoticelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenoticelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 2050
    sget-object v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 12
    return-void
.end method
