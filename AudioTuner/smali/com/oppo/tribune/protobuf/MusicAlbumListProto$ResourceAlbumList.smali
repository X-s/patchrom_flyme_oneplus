.class public final Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MusicAlbumListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/MusicAlbumListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceAlbumList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    }
.end annotation


# static fields
.field public static final ALBUMLIST_FIELD_NUMBER:I = 0x6

.field public static final CURPAGE_FIELD_NUMBER:I = 0x5

.field public static final ID_FIELD_NUMBER:I = 0x2

.field public static final LABEL_FIELD_NUMBER:I = 0x1

.field public static final PERPAGE_FIELD_NUMBER:I = 0x4

.field public static final TOTAL_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

.field private static final serialVersionUID:J


# instance fields
.field private albumlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;",
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
    .line 3399
    new-instance v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->defaultInstance:Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    .line 3400
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->defaultInstance:Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->initFields()V

    .line 3401
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    .prologue
    const/4 v0, -0x1

    .line 2469
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 2611
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->memoizedIsInitialized:B

    .line 2646
    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->memoizedSerializedSize:I

    .line 2470
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;

    .prologue
    .line 2464
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;-><init>(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 2472
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2611
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->memoizedIsInitialized:B

    .line 2646
    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->memoizedSerializedSize:I

    .line 2473
    return-void
.end method

.method static synthetic access$3800()Z
    .locals 1

    .prologue
    .line 2464
    sget-boolean v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2464
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .param p1, "x1"    # I

    .prologue
    .line 2464
    iput p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->id_:I

    return p1
.end method

.method static synthetic access$4202(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .param p1, "x1"    # I

    .prologue
    .line 2464
    iput p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->total_:I

    return p1
.end method

.method static synthetic access$4302(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .param p1, "x1"    # I

    .prologue
    .line 2464
    iput p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->perpage_:I

    return p1
.end method

.method static synthetic access$4402(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .param p1, "x1"    # I

    .prologue
    .line 2464
    iput p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->curpage_:I

    return p1
.end method

.method static synthetic access$4500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 2464
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .param p1, "x1"    # I

    .prologue
    .line 2464
    iput p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

    return p1
.end method

.method static synthetic access$4700()Z
    .locals 1

    .prologue
    .line 2464
    sget-boolean v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 1

    .prologue
    .line 2478
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->defaultInstance:Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2486
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceAlbumList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$3300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2517
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->label_:Ljava/lang/Object;

    .line 2518
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2519
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2521
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->label_:Ljava/lang/Object;

    .line 2524
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

    .line 2603
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->label_:Ljava/lang/Object;

    .line 2604
    iput v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->id_:I

    .line 2605
    iput v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->total_:I

    .line 2606
    iput v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->perpage_:I

    .line 2607
    iput v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->curpage_:I

    .line 2608
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;

    .line 2609
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1

    .prologue
    .line 2769
    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->create()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->access$3600()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    .prologue
    .line 2778
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2734
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    .line 2735
    .local v0, "builder":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2736
    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->access$3500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v1

    .line 2738
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2746
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    .line 2747
    .local v0, "builder":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2748
    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->access$3500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v1

    .line 2750
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2694
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->access$3500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2701
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->access$3500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2757
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->access$3500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2764
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->access$3500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2721
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->access$3500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2728
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->access$3500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2708
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->access$3500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2715
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->access$3500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumlist(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    return-object v0
.end method

.method public getAlbumlistCount()I
    .locals 1

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;

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
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;

    return-object v0
.end method

.method public getAlbumlistOrBuilder(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;

    return-object v0
.end method

.method public getAlbumlistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2585
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;

    return-object v0
.end method

.method public getCurpage()I
    .locals 1

    .prologue
    .line 2573
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->curpage_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2464
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2464
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 1

    .prologue
    .line 2482
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->defaultInstance:Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 2537
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->id_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2503
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->label_:Ljava/lang/Object;

    .line 2504
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2505
    check-cast v1, Ljava/lang/String;

    .line 2512
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2507
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2508
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2509
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2510
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->label_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2512
    goto :goto_0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 2561
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->perpage_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2649
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->memoizedSerializedSize:I

    .line 2650
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 2680
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 2653
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 2654
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 2655
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2658
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 2659
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->id_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 2662
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 2663
    const/4 v3, 0x3

    iget v4, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->total_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 2666
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 2667
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->perpage_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 2670
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 2671
    const/4 v3, 0x5

    iget v4, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->curpage_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 2674
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 2675
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2674
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2678
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 2679
    iput v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->memoizedSerializedSize:I

    move v2, v1

    .line 2680
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 2549
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->total_:I

    return v0
.end method

.method public hasCurpage()Z
    .locals 2

    .prologue
    .line 2569
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

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
    .line 2533
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

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

    .line 2499
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

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
    .line 2557
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

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
    .line 2545
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

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
    .line 2490
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceAlbumList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$3400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2614
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->memoizedIsInitialized:B

    .line 2615
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2616
    if-ne v0, v1, :cond_0

    .line 2619
    :goto_0
    return v1

    .line 2616
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2618
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2464
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilderForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2464
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2464
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilderForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1

    .prologue
    .line 2773
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2788
    new-instance v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;)V

    .line 2789
    .local v0, "builder":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2464
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->toBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2464
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->toBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1

    .prologue
    .line 2782
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->newBuilder(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

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
    .line 2688
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

    .line 2624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getSerializedSize()I

    .line 2625
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 2626
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2628
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 2629
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->id_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2631
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 2632
    const/4 v1, 0x3

    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->total_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2634
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 2635
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->perpage_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2637
    :cond_3
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 2638
    const/4 v1, 0x5

    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->curpage_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2640
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2641
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2640
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2643
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2644
    return-void
.end method
