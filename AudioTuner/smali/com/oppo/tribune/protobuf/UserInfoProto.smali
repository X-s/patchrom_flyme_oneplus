.class public final Lcom/oppo/tribune/protobuf/UserInfoProto;
.super Ljava/lang/Object;
.source "UserInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;,
        Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_protobuf_pb_user_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_pb_user_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3142
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\rpb_user.proto\u0012\u0008protobuf\"\u00d6\u0004\n\u0007pb_user\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0003\u0012\u000e\n\u0006status\u0018\u0002 \u0001(\u0005\u0012\u0010\n\u0008username\u0018\u0003 \u0001(\t\u0012\u0010\n\u0008nickname\u0018\u0004 \u0001(\t\u0012\u0010\n\u0008realname\u0018\u0005 \u0001(\t\u0012\u0010\n\u0008followed\u0018\u0006 \u0001(\u0005\u0012\u0011\n\tfollowing\u0018\u0007 \u0001(\u0005\u0012\u0010\n\u0008follower\u0018\u0008 \u0001(\u0005\u0012\u000f\n\u0007credits\u0018\t \u0001(\u0005\u0012\u000e\n\u0006gender\u0018\n \u0001(\u0005\u0012\u000b\n\u0003age\u0018\u000b \u0001(\u0005\u0012\u0011\n\tbirthyear\u0018\u000c \u0001(\u0005\u0012\u0012\n\nbirthmonth\u0018\r \u0001(\u0005\u0012\u0010\n\u0008birthday\u0018\u000e \u0001(\u0005\u0012\u000f\n\u0007headurl\u0018\u000f \u0001(\t\u0012\u0015\n\rconstellation\u0018\u0010 \u0001(\t\u0012\u000e\n\u0006zodiac\u0018\u0011 \u0001(\t\u0012\u0010\n\u0008telphone\u0018\u0012 \u0001(\t\u0012\u000e\n\u0006mobile\u0018\u0013 \u0001(\t\u0012\u000e\n\u0006height\u0018\u0014 \u0001(\t\u0012\u000e\n\u0006weight\u0018\u0015 \u0001(\t\u0012"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "\u0011\n\tbloodtype\u0018\u0016 \u0001(\t\u0012\u000c\n\u0004city\u0018\u0017 \u0001(\t\u0012\u000f\n\u0007address\u0018\u0018 \u0001(\t\u0012\r\n\u0005level\u0018\u0019 \u0001(\u0005\u0012\u0011\n\tlevelname\u0018\u001a \u0001(\t\u0012\u000f\n\u0007regtime\u0018\u001b \u0001(\u0005\u0012\u0010\n\u0008dateline\u0018\u001c \u0001(\u0005\u0012\u000f\n\u0007bg_type\u0018\u001d \u0001(\u0005\u0012\u0012\n\nbackground\u0018\u001e \u0001(\t\u0012\u000c\n\u0004mood\u0018\u001f \u0001(\t\u0012\u0011\n\tshare_num\u0018) \u0001(\u0005\u0012\u0011\n\tliked_num\u0018* \u0001(\u0005\u0012\u0011\n\tlikes_num\u0018+ \u0001(\u0005B*\n\u0019com.oppo.tribune.protobufB\rUserInfoProto"

    aput-object v3, v1, v2

    .line 3160
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/UserInfoProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$1;-><init>()V

    .line 3183
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 3188
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
    sget-object v0, Lcom/oppo/tribune/protobuf/UserInfoProto;->internal_static_protobuf_pb_user_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/UserInfoProto;->internal_static_protobuf_pb_user_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/UserInfoProto;->internal_static_protobuf_pb_user_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/UserInfoProto;->internal_static_protobuf_pb_user_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/UserInfoProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 3137
    sget-object v0, Lcom/oppo/tribune/protobuf/UserInfoProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 12
    return-void
.end method
