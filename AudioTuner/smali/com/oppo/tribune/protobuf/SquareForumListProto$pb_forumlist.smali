.class public final Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SquareForumListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SquareForumListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_forumlist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    }
.end annotation


# static fields
.field public static final FORUMLIST_FIELD_NUMBER:I = 0x1

.field public static final PAGE_FIELD_NUMBER:I = 0x2

.field public static final PERPAGE_FIELD_NUMBER:I = 0x3

.field public static final TOTAL_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private forumlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private page_:I

.field private perpage_:I

.field private total_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2064
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->defaultInstance:Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    .line 2065
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->defaultInstance:Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->initFields()V

    .line 2066
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    .prologue
    const/4 v0, -0x1

    .line 1281
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1375
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->memoizedIsInitialized:B

    .line 1410
    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->memoizedSerializedSize:I

    .line 1282
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;Lcom/oppo/tribune/protobuf/SquareForumListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$1;

    .prologue
    .line 1276
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;-><init>(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1284
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1375
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->memoizedIsInitialized:B

    .line 1410
    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->memoizedSerializedSize:I

    .line 1285
    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 1276
    sget-boolean v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .param p1, "x1"    # I

    .prologue
    .line 1276
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->page_:I

    return p1
.end method

.method static synthetic access$2802(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .param p1, "x1"    # I

    .prologue
    .line 1276
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->perpage_:I

    return p1
.end method

.method static synthetic access$2902(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .param p1, "x1"    # I

    .prologue
    .line 1276
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->total_:I

    return p1
.end method

.method static synthetic access$3002(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .param p1, "x1"    # I

    .prologue
    .line 1276
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->bitField0_:I

    return p1
.end method

.method static synthetic access$3100()Z
    .locals 1

    .prologue
    .line 1276
    sget-boolean v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 1

    .prologue
    .line 1290
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->defaultInstance:Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1298
    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forumlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->access$1900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1369
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;

    .line 1370
    iput v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->page_:I

    .line 1371
    iput v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->perpage_:I

    .line 1372
    iput v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->total_:I

    .line 1373
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1

    .prologue
    .line 1525
    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->create()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->access$2200()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    .prologue
    .line 1534
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1490
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    .line 1491
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1492
    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->access$2100(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v1

    .line 1494
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1502
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    .line 1503
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1504
    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->access$2100(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v1

    .line 1506
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1450
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->access$2100(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1457
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->access$2100(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1513
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->access$2100(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1520
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->access$2100(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1477
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->access$2100(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1484
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->access$2100(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1464
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->access$2100(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1471
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->access$2100(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 1

    .prologue
    .line 1294
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->defaultInstance:Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    return-object v0
.end method

.method public getForumlist(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    return-object v0
.end method

.method public getForumlistCount()I
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getForumlistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;

    return-object v0
.end method

.method public getForumlistOrBuilder(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumOrBuilder;

    return-object v0
.end method

.method public getForumlistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 1341
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->page_:I

    return v0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 1353
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->perpage_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1413
    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->memoizedSerializedSize:I

    .line 1414
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1436
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 1417
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 1418
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1419
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1418
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1422
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_2

    .line 1423
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->page_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1426
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3

    .line 1427
    const/4 v3, 0x3

    iget v4, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->perpage_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1430
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4

    .line 1431
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->total_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1434
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1435
    iput v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->memoizedSerializedSize:I

    move v2, v1

    .line 1436
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 1365
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->total_:I

    return v0
.end method

.method public hasPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1337
    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->bitField0_:I

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
    .line 1349
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->bitField0_:I

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

.method public hasTotal()Z
    .locals 2

    .prologue
    .line 1361
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->bitField0_:I

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
    .line 1302
    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forumlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->access$2000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1378
    iget-byte v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->memoizedIsInitialized:B

    .line 1379
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 1380
    if-ne v1, v2, :cond_0

    .line 1389
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 1380
    goto :goto_0

    .line 1382
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->getForumlistCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1383
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->getForumlist(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1384
    iput-byte v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->memoizedIsInitialized:B

    move v2, v3

    .line 1385
    goto :goto_0

    .line 1382
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1388
    :cond_3
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilderForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1276
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilderForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1

    .prologue
    .line 1529
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1544
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SquareForumListProto$1;)V

    .line 1545
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->toBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->toBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1

    .prologue
    .line 1538
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->newBuilder(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

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
    .line 1444
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

    .line 1394
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->getSerializedSize()I

    .line 1395
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1396
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1398
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1399
    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->page_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1401
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1402
    const/4 v1, 0x3

    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->perpage_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1404
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 1405
    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->total_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1407
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1408
    return-void
.end method
