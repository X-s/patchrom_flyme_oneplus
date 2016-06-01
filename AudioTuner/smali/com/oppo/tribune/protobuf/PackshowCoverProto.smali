.class public final Lcom/oppo/tribune/protobuf/PackshowCoverProto;
.super Ljava/lang/Object;
.source "PackshowCoverProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;,
        Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlicesOrBuilder;,
        Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;,
        Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuserOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_paikeSlices_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paikeSlices_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_pbuser_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_pbuser_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2510
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0011paikeSlices.proto\"\u00e2\u0001\n\u0006pbuser\u0012\u0010\n\u0008username\u0018\u0001 \u0001(\t\u0012\u000b\n\u0003uid\u0018\u0002 \u0001(\u0003\u0012\u000e\n\u0006mutual\u0018\u0003 \u0001(\u0005\u0012\u0010\n\u0008dateline\u0018\u0004 \u0001(\u0005\u0012\u0010\n\u0008followed\u0018\u0005 \u0001(\u0005\u0012\u000e\n\u0006gender\u0018\u0006 \u0001(\u0005\u0012\u000b\n\u0003age\u0018\u0007 \u0001(\u0005\u0012\u000f\n\u0007address\u0018\u0008 \u0001(\t\u0012\u0011\n\tgroupname\u0018\t \u0001(\t\u0012\u000f\n\u0007groupid\u0018\n \u0001(\u0005\u0012\u0015\n\rconstellation\u0018\u000b \u0001(\t\u0012\u000e\n\u0006avatar\u0018\u000c \u0001(\t\u0012\u000c\n\u0004fans\u0018\r \u0001(\u0005\"\u00ab\u0001\n\u000bpaikeSlices\u0012\r\n\u0005picid\u0018\u0001 \u0001(\u0003\u0012\u0017\n\u0006author\u0018\u0002 \u0001(\u000b2\u0007.pbuser\u0012\u0010\n\u0008dateline\u0018\u0003 \u0001(\t\u0012\u0010\n\u0008filepath\u0018\u0004 \u0001(\t\u0012\u000c\n\u0004hash\u0018\u0005 \u0001(\t\u0012\r\n\u0005title\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006praise\u0018\u0007 \u0001(\u0005\u0012\u0011\n\tsharetime\u0018\u0008"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, " \u0001(\u0005\u0012\u0010\n\u0008posttime\u0018\t \u0001(\u0005B/\n\u0019com.oppo.tribune.protobufB\u0012PackshowCoverProto"

    aput-object v3, v1, v2

    .line 2523
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$1;-><init>()V

    .line 2549
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 2554
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
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_pbuser_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_pbuser_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_pbuser_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_pbuser_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_paikeSlices_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_paikeSlices_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_paikeSlices_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_paikeSlices_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 2505
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 12
    return-void
.end method
