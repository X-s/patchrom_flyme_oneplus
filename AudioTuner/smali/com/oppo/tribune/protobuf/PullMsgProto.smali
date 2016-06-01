.class public final Lcom/oppo/tribune/protobuf/PullMsgProto;
.super Ljava/lang/Object;
.source "PullMsgProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsg;,
        Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgOrBuilder;,
        Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_protobuf_PullMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_PullMsg_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 979
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\rPullMsg.proto\u0012\u0008protobuf\"{\n\u0007PullMsg\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0003\u0012&\n\u0007resType\u0018\u0002 \u0001(\u000e2\u0015.protobuf.PullMsgType\u0012\r\n\u0005title\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007summary\u0018\u0004 \u0001(\t\u0012\r\n\u0005image\u0018\u0005 \u0001(\t\u0012\r\n\u0005extra\u0018\u0006 \u0001(\t*\u0095\u0001\n\u000bPullMsgType\u0012\u000e\n\nHOT_THREAD\u0010\u0001\u0012\u0011\n\rOFFICIAL_NEWS\u0010\u0002\u0012\u000c\n\u0008HOT_GAME\u0010\u0003\u0012\u000b\n\u0007HOT_APP\u0010\u0004\u0012\r\n\tHOT_THEME\u0010\u0005\u0012\r\n\tHOT_MUSIC\u0010\u0006\u0012\u000b\n\u0007WEB_URL\u0010\u0007\u0012\r\n\tALBUM_APP\u0010\u0008\u0012\u000e\n\nALBUM_GAME\u0010\tB)\n\u0019com.oppo.tribune.protobufB\u000cPullMsgProto"

    aput-object v2, v1, v3

    .line 988
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/PullMsgProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$1;-><init>()V

    .line 1003
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1008
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
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto;->internal_static_protobuf_PullMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/PullMsgProto;->internal_static_protobuf_PullMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto;->internal_static_protobuf_PullMsg_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/PullMsgProto;->internal_static_protobuf_PullMsg_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/PullMsgProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 974
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 12
    return-void
.end method
