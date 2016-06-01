.class public final Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PackNoticesListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackNoticesListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_paikenoticelist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    }
.end annotation


# static fields
.field public static final NOTICELIST_FIELD_NUMBER:I = 0x1

.field public static final PAGE_FIELD_NUMBER:I = 0x3

.field public static final PERPAGE_FIELD_NUMBER:I = 0x4

.field public static final TOTAL_FIELD_NUMBER:I = 0x5

.field public static final USERLIST_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private noticelist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;",
            ">;"
        }
    .end annotation
.end field

.field private page_:I

.field private perpage_:I

.field private total_:I

.field private userlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2037
    new-instance v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->defaultInstance:Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    .line 2038
    sget-object v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->defaultInstance:Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->initFields()V

    .line 2039
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    .prologue
    const/4 v0, -0x1

    .line 961
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1082
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->memoizedIsInitialized:B

    .line 1120
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->memoizedSerializedSize:I

    .line 962
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;Lcom/oppo/tribune/protobuf/PackNoticesListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$1;

    .prologue
    .line 956
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;-><init>(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 964
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1082
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->memoizedIsInitialized:B

    .line 1120
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->memoizedSerializedSize:I

    .line 965
    return-void
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 956
    sget-boolean v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    .prologue
    .line 956
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 956
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    .prologue
    .line 956
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 956
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .param p1, "x1"    # I

    .prologue
    .line 956
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->page_:I

    return p1
.end method

.method static synthetic access$2502(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .param p1, "x1"    # I

    .prologue
    .line 956
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->perpage_:I

    return p1
.end method

.method static synthetic access$2602(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .param p1, "x1"    # I

    .prologue
    .line 956
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->total_:I

    return p1
.end method

.method static synthetic access$2702(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .param p1, "x1"    # I

    .prologue
    .line 956
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->bitField0_:I

    return p1
.end method

.method static synthetic access$2800()Z
    .locals 1

    .prologue
    .line 956
    sget-boolean v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2900()Z
    .locals 1

    .prologue
    .line 956
    sget-boolean v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 1

    .prologue
    .line 970
    sget-object v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->defaultInstance:Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 978
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenoticelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->access$1500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1075
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;

    .line 1076
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;

    .line 1077
    iput v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->page_:I

    .line 1078
    iput v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->perpage_:I

    .line 1079
    iput v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->total_:I

    .line 1080
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1

    .prologue
    .line 1239
    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->create()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->access$1800()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    .prologue
    .line 1248
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1204
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    .line 1205
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1206
    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->access$1700(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v1

    .line 1208
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1216
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    .line 1217
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1218
    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->access$1700(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v1

    .line 1220
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1164
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->access$1700(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1171
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->access$1700(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1227
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->access$1700(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1234
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->access$1700(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1191
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->access$1700(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1198
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->access$1700(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1178
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->access$1700(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1185
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->access$1700(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 1

    .prologue
    .line 974
    sget-object v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->defaultInstance:Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    return-object v0
.end method

.method public getNoticelist(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    return-object v0
.end method

.method public getNoticelistCount()I
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNoticelistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 991
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;

    return-object v0
.end method

.method public getNoticelistOrBuilder(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticeOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticeOrBuilder;

    return-object v0
.end method

.method public getNoticelistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 995
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 1047
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->page_:I

    return v0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 1059
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->perpage_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1123
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->memoizedSerializedSize:I

    .line 1124
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1150
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 1127
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 1128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1129
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1132
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1133
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1132
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1136
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_3

    .line 1137
    const/4 v3, 0x3

    iget v4, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->page_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1140
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_4

    .line 1141
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->perpage_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1144
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_5

    .line 1145
    const/4 v3, 0x5

    iget v4, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->total_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1148
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1149
    iput v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->memoizedSerializedSize:I

    move v2, v1

    .line 1150
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 1071
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->total_:I

    return v0
.end method

.method public getUserlist(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    return-object v0
.end method

.method public getUserlistCount()I
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUserlistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;

    return-object v0
.end method

.method public getUserlistOrBuilder(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;

    return-object v0
.end method

.method public getUserlistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;

    return-object v0
.end method

.method public hasPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1043
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->bitField0_:I

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
    .line 1055
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->bitField0_:I

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
    .line 1067
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->bitField0_:I

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
    .line 982
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenoticelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->access$1600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1085
    iget-byte v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->memoizedIsInitialized:B

    .line 1086
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 1087
    if-ne v1, v2, :cond_0

    .line 1096
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 1087
    goto :goto_0

    .line 1089
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->getNoticelistCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1090
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->getNoticelist(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1091
    iput-byte v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->memoizedIsInitialized:B

    move v2, v3

    .line 1092
    goto :goto_0

    .line 1089
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1095
    :cond_3
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilderForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 956
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilderForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1

    .prologue
    .line 1243
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1258
    new-instance v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PackNoticesListProto$1;)V

    .line 1259
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->toBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->toBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1

    .prologue
    .line 1252
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->newBuilder(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

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
    .line 1158
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

    .line 1101
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->getSerializedSize()I

    .line 1102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1103
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1105
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1106
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1108
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2

    .line 1109
    const/4 v1, 0x3

    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->page_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1111
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_3

    .line 1112
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->perpage_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1114
    :cond_3
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_4

    .line 1115
    const/4 v1, 0x5

    iget v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->total_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1117
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1118
    return-void
.end method
