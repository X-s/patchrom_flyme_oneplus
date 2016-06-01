.class public final Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ResAppAlbumNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceApkAlbumList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    }
.end annotation


# static fields
.field public static final ALBUMLIST_FIELD_NUMBER:I = 0x6

.field public static final CURPAGE_FIELD_NUMBER:I = 0x5

.field public static final ID_FIELD_NUMBER:I = 0x2

.field public static final LABEL_FIELD_NUMBER:I = 0x1

.field public static final PERPAGE_FIELD_NUMBER:I = 0x4

.field public static final TOTAL_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

.field private static final serialVersionUID:J


# instance fields
.field private albumlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;",
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
    .line 5432
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    .line 5433
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->initFields()V

    .line 5434
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    .prologue
    const/4 v0, -0x1

    .line 4502
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 4644
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->memoizedIsInitialized:B

    .line 4679
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->memoizedSerializedSize:I

    .line 4503
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;

    .prologue
    .line 4497
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;-><init>(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 4505
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4644
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->memoizedIsInitialized:B

    .line 4679
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->memoizedSerializedSize:I

    .line 4506
    return-void
.end method

.method static synthetic access$6400()Z
    .locals 1

    .prologue
    .line 4497
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 4497
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6702(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .param p1, "x1"    # I

    .prologue
    .line 4497
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->id_:I

    return p1
.end method

.method static synthetic access$6802(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .param p1, "x1"    # I

    .prologue
    .line 4497
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->total_:I

    return p1
.end method

.method static synthetic access$6902(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .param p1, "x1"    # I

    .prologue
    .line 4497
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->perpage_:I

    return p1
.end method

.method static synthetic access$7002(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .param p1, "x1"    # I

    .prologue
    .line 4497
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->curpage_:I

    return p1
.end method

.method static synthetic access$7100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    .prologue
    .line 4497
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 4497
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7202(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .param p1, "x1"    # I

    .prologue
    .line 4497
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

    return p1
.end method

.method static synthetic access$7300()Z
    .locals 1

    .prologue
    .line 4497
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 1

    .prologue
    .line 4511
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4519
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbumList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$5900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4550
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->label_:Ljava/lang/Object;

    .line 4551
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4552
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4554
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->label_:Ljava/lang/Object;

    .line 4557
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

    .line 4636
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->label_:Ljava/lang/Object;

    .line 4637
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->id_:I

    .line 4638
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->total_:I

    .line 4639
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->perpage_:I

    .line 4640
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->curpage_:I

    .line 4641
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;

    .line 4642
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1

    .prologue
    .line 4802
    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->access$6200()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    .prologue
    .line 4811
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4767
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    .line 4768
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4769
    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->access$6100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v1

    .line 4771
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4779
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    .line 4780
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4781
    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->access$6100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v1

    .line 4783
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4727
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->access$6100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4734
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->access$6100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4790
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->access$6100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4797
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->access$6100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4754
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->access$6100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4761
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->access$6100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4741
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->access$6100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4748
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->access$6100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumlist(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4627
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    return-object v0
.end method

.method public getAlbumlistCount()I
    .locals 1

    .prologue
    .line 4622
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlbumlistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4614
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;

    return-object v0
.end method

.method public getAlbumlistOrBuilder(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4632
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumOrBuilder;

    return-object v0
.end method

.method public getAlbumlistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4618
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;

    return-object v0
.end method

.method public getCurpage()I
    .locals 1

    .prologue
    .line 4606
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->curpage_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4497
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4497
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 1

    .prologue
    .line 4515
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 4570
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->id_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4536
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->label_:Ljava/lang/Object;

    .line 4537
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4538
    check-cast v1, Ljava/lang/String;

    .line 4545
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 4540
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4541
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4542
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4543
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->label_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4545
    goto :goto_0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 4594
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->perpage_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 4682
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->memoizedSerializedSize:I

    .line 4683
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 4713
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 4686
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 4687
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 4688
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4691
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 4692
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->id_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 4695
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 4696
    const/4 v3, 0x3

    iget v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->total_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 4699
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 4700
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->perpage_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 4703
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 4704
    const/4 v3, 0x5

    iget v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->curpage_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 4707
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 4708
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4707
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4711
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 4712
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->memoizedSerializedSize:I

    move v2, v1

    .line 4713
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 4582
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->total_:I

    return v0
.end method

.method public hasCurpage()Z
    .locals 2

    .prologue
    .line 4602
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

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
    .line 4566
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

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

    .line 4532
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

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
    .line 4590
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

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
    .line 4578
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

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
    .line 4523
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbumList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$6000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 4647
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->memoizedIsInitialized:B

    .line 4648
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 4649
    if-ne v0, v1, :cond_0

    .line 4652
    :goto_0
    return v1

    .line 4649
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 4651
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4497
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 4497
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4497
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1

    .prologue
    .line 4806
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 4821
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;)V

    .line 4822
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4497
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->toBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4497
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->toBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1

    .prologue
    .line 4815
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->newBuilder(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

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
    .line 4721
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

    .line 4657
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getSerializedSize()I

    .line 4658
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 4659
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4661
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 4662
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->id_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4664
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 4665
    const/4 v1, 0x3

    iget v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->total_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4667
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 4668
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->perpage_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4670
    :cond_3
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 4671
    const/4 v1, 0x5

    iget v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->curpage_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4673
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 4674
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4673
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4676
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4677
    return-void
.end method
