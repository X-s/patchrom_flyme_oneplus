.class public final Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ResAppNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResAppNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceApkList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    }
.end annotation


# static fields
.field public static final APKS_FIELD_NUMBER:I = 0x1

.field public static final CURPAGE_FIELD_NUMBER:I = 0x6

.field public static final ID_FIELD_NUMBER:I = 0x3

.field public static final LABEL_FIELD_NUMBER:I = 0x2

.field public static final PERPAGE_FIELD_NUMBER:I = 0x5

.field public static final TOTAL_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

.field private static final serialVersionUID:J


# instance fields
.field private apks_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private curpage_:I

.field private id_:I

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private perpage_:I

.field private total_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3888
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    .line 3889
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->initFields()V

    .line 3890
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    .prologue
    const/4 v0, -0x1

    .line 2966
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 3108
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->memoizedIsInitialized:B

    .line 3143
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->memoizedSerializedSize:I

    .line 2967
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;Lcom/oppo/tribune/protobuf/ResAppNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$1;

    .prologue
    .line 2961
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;-><init>(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 2969
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3108
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->memoizedIsInitialized:B

    .line 3143
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->memoizedSerializedSize:I

    .line 2970
    return-void
.end method

.method static synthetic access$4400()Z
    .locals 1

    .prologue
    .line 2961
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    .prologue
    .line 2961
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 2961
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2961
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .param p1, "x1"    # I

    .prologue
    .line 2961
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->id_:I

    return p1
.end method

.method static synthetic access$4902(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .param p1, "x1"    # I

    .prologue
    .line 2961
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->total_:I

    return p1
.end method

.method static synthetic access$5002(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .param p1, "x1"    # I

    .prologue
    .line 2961
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->perpage_:I

    return p1
.end method

.method static synthetic access$5102(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .param p1, "x1"    # I

    .prologue
    .line 2961
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->curpage_:I

    return p1
.end method

.method static synthetic access$5202(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .param p1, "x1"    # I

    .prologue
    .line 2961
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    return p1
.end method

.method static synthetic access$5300()Z
    .locals 1

    .prologue
    .line 2961
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 1

    .prologue
    .line 2975
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2983
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto;->internal_static_protobuf_ResourceApkList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto;->access$3900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3040
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->label_:Ljava/lang/Object;

    .line 3041
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3042
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3044
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->label_:Ljava/lang/Object;

    .line 3047
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;

    .line 3101
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->label_:Ljava/lang/Object;

    .line 3102
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->id_:I

    .line 3103
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->total_:I

    .line 3104
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->perpage_:I

    .line 3105
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->curpage_:I

    .line 3106
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1

    .prologue
    .line 3266
    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->access$4200()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    .prologue
    .line 3275
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3231
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    .line 3232
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3233
    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->access$4100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v1

    .line 3235
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3243
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    .line 3244
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3245
    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->access$4100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v1

    .line 3247
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3191
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->access$4100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3198
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->access$4100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3254
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->access$4100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3261
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->access$4100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3218
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->access$4100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3225
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->access$4100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3205
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->access$4100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3212
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->access$4100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApks(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3009
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    return-object v0
.end method

.method public getApksCount()I
    .locals 1

    .prologue
    .line 3004
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getApksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2996
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;

    return-object v0
.end method

.method public getApksOrBuilder(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkOrBuilder;

    return-object v0
.end method

.method public getApksOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3000
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;

    return-object v0
.end method

.method public getCurpage()I
    .locals 1

    .prologue
    .line 3096
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->curpage_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2961
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2961
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 1

    .prologue
    .line 2979
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 3060
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->id_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3026
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->label_:Ljava/lang/Object;

    .line 3027
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3028
    check-cast v1, Ljava/lang/String;

    .line 3035
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3030
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3031
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3032
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3033
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->label_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3035
    goto :goto_0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 3084
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->perpage_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3146
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->memoizedSerializedSize:I

    .line 3147
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 3177
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 3150
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 3151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3152
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3155
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_2

    .line 3156
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3159
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3

    .line 3160
    const/4 v3, 0x3

    iget v4, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->id_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 3163
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4

    .line 3164
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->total_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 3167
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 3168
    const/4 v3, 0x5

    iget v4, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->perpage_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 3171
    :cond_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6

    .line 3172
    const/4 v3, 0x6

    iget v4, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->curpage_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 3175
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 3176
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->memoizedSerializedSize:I

    move v2, v1

    .line 3177
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 3072
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->total_:I

    return v0
.end method

.method public hasCurpage()Z
    .locals 2

    .prologue
    .line 3092
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    .line 3056
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3022
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPerpage()Z
    .locals 2

    .prologue
    .line 3080
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTotal()Z
    .locals 2

    .prologue
    .line 3068
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2987
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto;->internal_static_protobuf_ResourceApkList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto;->access$4000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 3111
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->memoizedIsInitialized:B

    .line 3112
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 3113
    if-ne v0, v1, :cond_0

    .line 3116
    :goto_0
    return v1

    .line 3113
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3115
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2961
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2961
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2961
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1

    .prologue
    .line 3270
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3285
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResAppNetProto$1;)V

    .line 3286
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2961
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->toBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2961
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->toBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1

    .prologue
    .line 3279
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->newBuilder(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 3185
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3121
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getSerializedSize()I

    .line 3122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3123
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3125
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3126
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3128
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 3129
    const/4 v1, 0x3

    iget v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->id_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3131
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 3132
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->total_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3134
    :cond_3
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 3135
    const/4 v1, 0x5

    iget v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->perpage_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3137
    :cond_4
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 3138
    const/4 v1, 0x6

    iget v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->curpage_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3140
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3141
    return-void
.end method
