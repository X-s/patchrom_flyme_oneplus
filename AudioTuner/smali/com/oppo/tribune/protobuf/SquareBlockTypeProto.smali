.class public final Lcom/oppo/tribune/protobuf/SquareBlockTypeProto;
.super Ljava/lang/Object;
.source "SquareBlockTypeProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0011block_types.proto\u0012\u0008protobuf*\u00bc\u0002\n\u000bblock_types\u0012\u000f\n\u000bGAME_DETAIL\u0010\u0001\u0012\u0015\n\u0011GAME_ALBUM_DETAIL\u0010\u0002\u0012\u0013\n\u000fGAME_ALBUM_LIST\u0010\u0003\u0012\u000e\n\nAPP_DETAIL\u0010\u0004\u0012\u0014\n\u0010APP_ALBUM_DETAIL\u0010\u0005\u0012\u0012\n\u000eAPP_ALBUM_LIST\u0010\u0006\u0012\u0016\n\u0012MUSIC_ALBUM_DETAIL\u0010\u0007\u0012\u0014\n\u0010MUSIC_ALBUM_LIST\u0010\u0008\u0012\u0010\n\u000cTHEME_DETAIL\u0010\t\u0012\u000e\n\nTHEME_LIST\u0010\n\u0012\u000c\n\u0008NEWTHEME\u0010\u000b\u0012\u0011\n\rNEWTHEME_LIST\u0010\u000c\u0012\n\n\u0006FORUMS\u0010\r\u0012\n\n\u0006THREAD\u0010\u000e\u0012\u000f\n\u000bPAIKE_THEME\u0010\u000f\u0012\r\n\tPAIKE_PIC\u0010\u0010\u0012\r\n\tOUTER_URL\u0010\u0011B1\n\u0019com.oppo.tribune.protobufB\u0014SquareBlockTypeProto"

    aput-object v2, v1, v3

    .line 151
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$1;-><init>()V

    .line 158
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 163
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

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 12
    return-void
.end method
