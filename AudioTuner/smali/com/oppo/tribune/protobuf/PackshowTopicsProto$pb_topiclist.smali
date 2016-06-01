.class public final Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PackshowTopicsProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackshowTopicsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_topiclist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    }
.end annotation


# static fields
.field public static final PAGE_FIELD_NUMBER:I = 0x2

.field public static final PERPAGE_FIELD_NUMBER:I = 0x3

.field public static final TOPICLIST_FIELD_NUMBER:I = 0x1

.field public static final TOTAL_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private page_:I

.field private perpage_:I

.field private topiclist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;",
            ">;"
        }
    .end annotation
.end field

.field private total_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1638
    new-instance v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    .line 1639
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->initFields()V

    .line 1640
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    .prologue
    const/4 v0, -0x1

    .line 857
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 951
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->memoizedIsInitialized:B

    .line 986
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->memoizedSerializedSize:I

    .line 858
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;Lcom/oppo/tribune/protobuf/PackshowTopicsProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$1;

    .prologue
    .line 852
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;-><init>(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 860
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 951
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->memoizedIsInitialized:B

    .line 986
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->memoizedSerializedSize:I

    .line 861
    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 852
    sget-boolean v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    .prologue
    .line 852
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 852
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .param p1, "x1"    # I

    .prologue
    .line 852
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->page_:I

    return p1
.end method

.method static synthetic access$2202(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .param p1, "x1"    # I

    .prologue
    .line 852
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->perpage_:I

    return p1
.end method

.method static synthetic access$2302(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .param p1, "x1"    # I

    .prologue
    .line 852
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->total_:I

    return p1
.end method

.method static synthetic access$2402(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .param p1, "x1"    # I

    .prologue
    .line 852
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->bitField0_:I

    return p1
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 852
    sget-boolean v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 1

    .prologue
    .line 866
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 874
    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->internal_static_pb_topiclist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 945
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;

    .line 946
    iput v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->page_:I

    .line 947
    iput v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->perpage_:I

    .line 948
    iput v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->total_:I

    .line 949
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1

    .prologue
    .line 1101
    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->create()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->access$1600()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    .prologue
    .line 1110
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1066
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    .line 1067
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1068
    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v1

    .line 1070
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1078
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    .line 1079
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1080
    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v1

    .line 1082
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1026
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1033
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1089
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1096
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1060
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1040
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1047
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 1

    .prologue
    .line 870
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->page_:I

    return v0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 929
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->perpage_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 989
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->memoizedSerializedSize:I

    .line 990
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1012
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 993
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 994
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 995
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 994
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 998
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_2

    .line 999
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->page_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1002
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3

    .line 1003
    const/4 v3, 0x3

    iget v4, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->perpage_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1006
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4

    .line 1007
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->total_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1010
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1011
    iput v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->memoizedSerializedSize:I

    move v2, v1

    .line 1012
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getTopiclist(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 900
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    return-object v0
.end method

.method public getTopiclistCount()I
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTopiclistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 887
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;

    return-object v0
.end method

.method public getTopiclistOrBuilder(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topicOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 905
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topicOrBuilder;

    return-object v0
.end method

.method public getTopiclistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topicOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 891
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->total_:I

    return v0
.end method

.method public hasPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 913
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->bitField0_:I

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
    .line 925
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->bitField0_:I

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
    .line 937
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->bitField0_:I

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
    .line 878
    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->internal_static_pb_topiclist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 954
    iget-byte v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->memoizedIsInitialized:B

    .line 955
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 956
    if-ne v1, v2, :cond_0

    .line 965
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 956
    goto :goto_0

    .line 958
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getTopiclistCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 959
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getTopiclist(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 960
    iput-byte v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->memoizedIsInitialized:B

    move v2, v3

    .line 961
    goto :goto_0

    .line 958
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 964
    :cond_3
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilderForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 852
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilderForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1

    .prologue
    .line 1105
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1120
    new-instance v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PackshowTopicsProto$1;)V

    .line 1121
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->toBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->toBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1

    .prologue
    .line 1114
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->newBuilder(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

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
    .line 1020
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

    .line 970
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getSerializedSize()I

    .line 971
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 971
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 974
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 975
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->page_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 977
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 978
    const/4 v1, 0x3

    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->perpage_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 980
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 981
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->total_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 983
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 984
    return-void
.end method
