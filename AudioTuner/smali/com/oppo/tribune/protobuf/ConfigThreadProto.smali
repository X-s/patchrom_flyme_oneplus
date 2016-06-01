.class public final Lcom/oppo/tribune/protobuf/ConfigThreadProto;
.super Ljava/lang/Object;
.source "ConfigThreadProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;,
        Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_configOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_protobuf_pb_config_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_pb_config_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2285
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u000fpb_config.proto\u0012\u0008protobuf\u001a\u000cpb_url.proto\"\u00df\u0003\n\tpb_config\u0012\u0011\n\tconfig_id\u0018\u0014 \u0002(\u0003\u0012\u000f\n\u0007user_id\u0018\u0015 \u0002(\u0003\u0012\u0011\n\tuser_name\u0018\u0016 \u0002(\t\u0012\u0013\n\u000bconfig_name\u0018\u0017 \u0002(\t\u0012\u0015\n\rconfig_params\u0018\u0018 \u0002(\t\u0012\u0014\n\u000cconfig_intro\u0018\u0019 \u0002(\t\u0012\u0012\n\nshare_time\u0018\u001a \u0002(\u0005\u0012\u0010\n\u0008like_num\u0018\u001b \u0002(\u0005\u0012\u0013\n\u000bcategory_id\u0018\u001c \u0002(\u0005\u0012\u0014\n\u000cdownload_num\u0018\u001d \u0002(\u0005\u0012\u000b\n\u0003tid\u0018\u0001 \u0001(\u0003\u0012\u000b\n\u0003fid\u0018\u0002 \u0001(\u0003\u0012\u000f\n\u0007subject\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007summary\u0018\u0004 \u0001(\t\u0012\u0010\n\u0008dateline\u0018\u0005 \u0001(\u0003\u0012\u001f\n\u0005image\u0018\u0006 \u0003(\u000b2\u0010.protobuf.pb_url\u0012\u000f\n\u0007replies\u0018\u0007 \u0001(\u0003\u0012\r\n\u0005views\u0018\u0008 \u0001(\u0003"

    aput-object v2, v1, v4

    const-string v2, "\u0012\u0012\n\nattachment\u0018\t \u0001(\u0003\u0012\u000e\n\u0006author\u0018\n \u0001(\t\u0012\u0010\n\u0008authorid\u0018\u000b \u0001(\u0003\u0012\u000f\n\u0007groupid\u0018\u000c \u0001(\u0003\u0012\u0013\n\u000bisfollowing\u0018\r \u0001(\u0005\u0012\r\n\u0005likes\u0018\u000e \u0001(\u0003\u0012\u000e\n\u0006islike\u0018\u000f \u0001(\u0005B.\n\u0019com.oppo.tribune.protobufB\u0011ConfigThreadProto"

    aput-object v2, v1, v3

    .line 2302
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$1;-><init>()V

    .line 2318
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/oppo/tribune/protobuf/PbUrlProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 2323
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto;->internal_static_protobuf_pb_config_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto;->internal_static_protobuf_pb_config_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto;->internal_static_protobuf_pb_config_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto;->internal_static_protobuf_pb_config_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 2280
    sget-object v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
