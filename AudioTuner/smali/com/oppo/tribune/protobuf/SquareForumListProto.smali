.class public final Lcom/oppo/tribune/protobuf/SquareForumListProto;
.super Ljava/lang/Object;
.source "SquareForumListProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;,
        Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlistOrBuilder;,
        Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;,
        Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_com_oppo_tribune_protobuf_pb_forum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_oppo_tribune_protobuf_pb_forum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_oppo_tribune_protobuf_pb_forumlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_oppo_tribune_protobuf_pb_forumlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2082
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0012pb_forumlist.proto\u0012\u0019com.oppo.tribune.protobuf\"\u00ad\u0001\n\u0008pb_forum\u0012\n\n\u0002id\u0018\u0001 \u0002(\u0005\u0012\r\n\u0005title\u0018\u0002 \u0002(\t\u0012\u000b\n\u0003rid\u0018\u0003 \u0001(\u0003\u0012\u000c\n\u0004desc\u0018\u0004 \u0001(\t\u0012\u000c\n\u0004type\u0018\u0005 \u0001(\u0005\u0012\r\n\u0005topic\u0018\u0006 \u0001(\t\u0012\u000f\n\u0007topicid\u0018\u0007 \u0001(\u0005\u0012\u000e\n\u0006ispost\u0018\u0008 \u0001(\u0008\u0012\u000b\n\u0003pic\u0018\t \u0001(\t\u0012\u0010\n\u0008position\u0018\n \u0001(\u0005\u0012\u000e\n\u0006mobile\u0018\u000b \u0001(\t\"t\n\u000cpb_forumlist\u00126\n\tforumlist\u0018\u0001 \u0003(\u000b2#.com.oppo.tribune.protobuf.pb_forum\u0012\u000c\n\u0004page\u0018\u0002 \u0001(\u0005\u0012\u000f\n\u0007perpage\u0018\u0003 \u0001(\u0005\u0012\r\n\u0005total\u0018\u0004 \u0001(\u0005B1\n\u0019com.oppo.tribune.protobufB\u0014SquareForumListProto"

    aput-object v2, v1, v3

    .line 2092
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$1;-><init>()V

    .line 2116
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 2121
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
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forumlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forumlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forumlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forumlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SquareForumListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 2077
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareForumListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 12
    return-void
.end method
