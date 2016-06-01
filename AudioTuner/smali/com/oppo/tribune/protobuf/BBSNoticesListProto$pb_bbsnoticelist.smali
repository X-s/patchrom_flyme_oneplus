.class public final Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "BBSNoticesListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/BBSNoticesListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_bbsnoticelist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    }
.end annotation


# static fields
.field public static final NEWNOTICES_FIELD_NUMBER:I = 0x2

.field public static final NOTICELIST_FIELD_NUMBER:I = 0x3

.field public static final TOTAL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private newnotices_:I

.field private noticelist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;",
            ">;"
        }
    .end annotation
.end field

.field private total_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1830
    new-instance v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->defaultInstance:Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    .line 1831
    sget-object v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->defaultInstance:Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->initFields()V

    .line 1832
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    .prologue
    const/4 v0, -0x1

    .line 1103
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1184
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->memoizedIsInitialized:B

    .line 1216
    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->memoizedSerializedSize:I

    .line 1104
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;Lcom/oppo/tribune/protobuf/BBSNoticesListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$1;

    .prologue
    .line 1098
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;-><init>(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1106
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1184
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->memoizedIsInitialized:B

    .line 1216
    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->memoizedSerializedSize:I

    .line 1107
    return-void
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 1098
    sget-boolean v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .param p1, "x1"    # I

    .prologue
    .line 1098
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->total_:I

    return p1
.end method

.method static synthetic access$2502(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .param p1, "x1"    # I

    .prologue
    .line 1098
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newnotices_:I

    return p1
.end method

.method static synthetic access$2600(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .param p1, "x1"    # I

    .prologue
    .line 1098
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->bitField0_:I

    return p1
.end method

.method static synthetic access$2800()Z
    .locals 1

    .prologue
    .line 1098
    sget-boolean v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 1

    .prologue
    .line 1112
    sget-object v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->defaultInstance:Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1120
    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnoticelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->access$1700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1179
    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->total_:I

    .line 1180
    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newnotices_:I

    .line 1181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;

    .line 1182
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1

    .prologue
    .line 1327
    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->create()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->access$2000()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    .prologue
    .line 1336
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1292
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    .line 1293
    .local v0, "builder":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1294
    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->access$1900(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v1

    .line 1296
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1304
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    .line 1305
    .local v0, "builder":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1306
    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->access$1900(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v1

    .line 1308
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1252
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->access$1900(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1259
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->access$1900(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1315
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->access$1900(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1322
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->access$1900(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1279
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->access$1900(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1286
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->access$1900(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1266
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->access$1900(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1273
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->access$1900(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 1

    .prologue
    .line 1116
    sget-object v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->defaultInstance:Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    return-object v0
.end method

.method public getNewnotices()I
    .locals 1

    .prologue
    .line 1149
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newnotices_:I

    return v0
.end method

.method public getNoticelist(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    return-object v0
.end method

.method public getNoticelistCount()I
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;

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
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;

    return-object v0
.end method

.method public getNoticelistOrBuilder(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticeOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticeOrBuilder;

    return-object v0
.end method

.method public getNoticelistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1219
    iget v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->memoizedSerializedSize:I

    .line 1220
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1238
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 1223
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 1224
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 1225
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->total_:I

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1228
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 1229
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newnotices_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1232
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1233
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1232
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1236
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1237
    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->memoizedSerializedSize:I

    move v2, v1

    .line 1238
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 1137
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->total_:I

    return v0
.end method

.method public hasNewnotices()Z
    .locals 2

    .prologue
    .line 1145
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->bitField0_:I

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
    const/4 v0, 0x1

    .line 1133
    iget v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1124
    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnoticelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->access$1800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1187
    iget-byte v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->memoizedIsInitialized:B

    .line 1188
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 1189
    if-ne v1, v2, :cond_0

    .line 1198
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 1189
    goto :goto_0

    .line 1191
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->getNoticelistCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1192
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->getNoticelist(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1193
    iput-byte v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->memoizedIsInitialized:B

    move v2, v3

    .line 1194
    goto :goto_0

    .line 1191
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1197
    :cond_3
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilderForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1098
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilderForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1

    .prologue
    .line 1331
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1346
    new-instance v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/BBSNoticesListProto$1;)V

    .line 1347
    .local v0, "builder":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->toBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->toBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1

    .prologue
    .line 1340
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newBuilder(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

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
    .line 1246
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1203
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->getSerializedSize()I

    .line 1204
    iget v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 1205
    iget v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->total_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1207
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 1208
    iget v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newnotices_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1210
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1211
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1213
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1214
    return-void
.end method
