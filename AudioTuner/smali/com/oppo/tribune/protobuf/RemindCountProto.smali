.class public final Lcom/oppo/tribune/protobuf/RemindCountProto;
.super Ljava/lang/Object;
.source "RemindCountProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;,
        Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnoticeOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_pb_numnotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_pb_numnotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1299
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0012pb_numnotice.proto\"\u00cd\u0002\n\u000cpb_numnotice\u0012\u0014\n\u000cnum_followed\u0018\u0001 \u0001(\u0005\u0012\u0013\n\u000bnum_visited\u0018\u0002 \u0001(\u0005\u0012\u0015\n\rnum_bbsnotice\u0018\u0003 \u0001(\u0005\u0012\u0017\n\u000fnum_paikenotice\u0018\u0004 \u0001(\u0005\u0012\u0013\n\u000bnum_bbspost\u0018\u0005 \u0001(\u0005\u0012\u0014\n\u000cnum_bbsfavor\u0018\u0006 \u0001(\u0005\u0012\u000f\n\u0007num_obi\u0018\u0007 \u0001(\u0005\u0012\u0016\n\u000enum_paikereply\u0018\u0008 \u0001(\u0005\u0012\u0016\n\u000enum_followfeed\u0018\t \u0001(\u0005\u0012\u0015\n\rnum_followers\u0018\n \u0001(\u0005\u0012\u0016\n\u000enum_followings\u0018\u000b \u0001(\u0005\u0012\u0011\n\tnum_candy\u0018\u000c \u0001(\u0005\u0012\u0010\n\u0008num_days\u0018\r \u0001(\u0005\u0012\u0012\n\nnum_lasted\u0018\u000e \u0001(\u0005\u0012\u000e\n\u0006issign\u0018\u000f \u0001(\u0005B-\n\u0019com.oppo.tribune.protobufB\u0010RemindCountPr"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "oto"

    aput-object v3, v1, v2

    .line 1310
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/RemindCountProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$1;-><init>()V

    .line 1329
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1334
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
    sget-object v0, Lcom/oppo/tribune/protobuf/RemindCountProto;->internal_static_pb_numnotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/RemindCountProto;->internal_static_pb_numnotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/RemindCountProto;->internal_static_pb_numnotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/RemindCountProto;->internal_static_pb_numnotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/RemindCountProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1294
    sget-object v0, Lcom/oppo/tribune/protobuf/RemindCountProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 12
    return-void
.end method
