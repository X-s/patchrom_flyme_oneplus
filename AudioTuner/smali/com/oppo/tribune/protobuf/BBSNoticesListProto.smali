.class public final Lcom/oppo/tribune/protobuf/BBSNoticesListProto;
.super Ljava/lang/Object;
.source "BBSNoticesListProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;,
        Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelistOrBuilder;,
        Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;,
        Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticeOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_pb_bbsnotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_pb_bbsnotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_pb_bbsnoticelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_pb_bbsnoticelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1848
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0012pb_bbsnotice.proto\"\u0090\u0001\n\u000cpb_bbsnotice\u0012\u000b\n\u0003key\u0018\u0001 \u0002(\u0005\u0012\u000e\n\u0006avatar\u0018\u0002 \u0002(\t\u0012\u000c\n\u0004date\u0018\u0003 \u0001(\t\u0012\u000c\n\u0004note\u0018\u0004 \u0001(\t\u0012\u0010\n\u0008authorid\u0018\u0005 \u0001(\u0005\u0012\u000c\n\u0004type\u0018\u0006 \u0002(\u0005\u0012\u000b\n\u0003tid\u0018\u0007 \u0002(\u0005\u0012\u000b\n\u0003pid\u0018\u0008 \u0002(\u0005\u0012\r\n\u0005floor\u0018\t \u0002(\u0005\"X\n\u0010pb_bbsnoticelist\u0012\r\n\u0005total\u0018\u0001 \u0001(\u0005\u0012\u0012\n\nnewnotices\u0018\u0002 \u0001(\u0005\u0012!\n\nnoticelist\u0018\u0003 \u0003(\u000b2\r.pb_bbsnoticeB0\n\u0019com.oppo.tribune.protobufB\u0013BBSNoticesListProto"

    aput-object v2, v1, v3

    .line 1856
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$1;-><init>()V

    .line 1880
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1885
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
    sget-object v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnoticelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnoticelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnoticelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnoticelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1843
    sget-object v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 12
    return-void
.end method
