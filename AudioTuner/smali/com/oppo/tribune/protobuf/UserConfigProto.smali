.class public final Lcom/oppo/tribune/protobuf/UserConfigProto;
.super Ljava/lang/Object;
.source "UserConfigProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;,
        Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_configOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_protobuf_pb_user_config_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_pb_user_config_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1038
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0014pb_user_config.proto\u0012\u0008protobuf\"\u00c7\u0001\n\u000epb_user_config\u0012\u000f\n\u0007user_id\u0018\u0001 \u0002(\u0003\u0012\u0011\n\tconfig_id\u0018\u0002 \u0002(\u0003\u0012\u0015\n\rref_config_id\u0018\u0003 \u0002(\t\u0012\u0013\n\u000bconfig_name\u0018\u0004 \u0002(\t\u0012\u0015\n\rconfig_params\u0018\u0005 \u0002(\t\u0012\u0014\n\u000cconfig_intro\u0018\u0006 \u0002(\t\u0012\u0013\n\u000bupdate_time\u0018\u0007 \u0002(\u0005\u0012\u0013\n\u000bcategory_id\u0018\u0008 \u0002(\u0005\u0012\u000e\n\u0006status\u0018\t \u0002(\u0005B,\n\u0019com.oppo.tribune.protobufB\u000fUserConfigProto"

    aput-object v2, v1, v3

    .line 1047
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/UserConfigProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$1;-><init>()V

    .line 1063
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1067
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
    sget-object v0, Lcom/oppo/tribune/protobuf/UserConfigProto;->internal_static_protobuf_pb_user_config_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/UserConfigProto;->internal_static_protobuf_pb_user_config_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/UserConfigProto;->internal_static_protobuf_pb_user_config_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/UserConfigProto;->internal_static_protobuf_pb_user_config_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/UserConfigProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1033
    sget-object v0, Lcom/oppo/tribune/protobuf/UserConfigProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
