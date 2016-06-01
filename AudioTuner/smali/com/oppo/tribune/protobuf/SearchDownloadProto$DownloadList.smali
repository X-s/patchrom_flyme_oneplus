.class public final Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SearchDownloadProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchDownloadProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

.field private static final serialVersionUID:J


# instance fields
.field private download_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1739
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    .line 1740
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->initFields()V

    .line 1741
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    .prologue
    const/4 v0, -0x1

    .line 1148
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1202
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->memoizedIsInitialized:B

    .line 1222
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->memoizedSerializedSize:I

    .line 1149
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;

    .prologue
    .line 1143
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;-><init>(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1151
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1202
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->memoizedIsInitialized:B

    .line 1222
    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->memoizedSerializedSize:I

    .line 1152
    return-void
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 1143
    sget-boolean v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 1143
    sget-boolean v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 1

    .prologue
    .line 1157
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1165
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$1800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;

    .line 1200
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 1

    .prologue
    .line 1325
    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->create()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->access$2100()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    .prologue
    .line 1334
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1290
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    .line 1291
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1292
    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->access$2000(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v1

    .line 1294
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1302
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    .line 1303
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1304
    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->access$2000(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v1

    .line 1306
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1250
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->access$2000(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1257
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->access$2000(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1313
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->access$2000(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1320
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->access$2000(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1277
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->access$2000(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1284
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->access$2000(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1264
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->access$2000(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1271
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->access$2000(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 1

    .prologue
    .line 1161
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->defaultInstance:Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    return-object v0
.end method

.method public getDownload(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    return-object v0
.end method

.method public getDownloadCount()I
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDownloadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadOrBuilder(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItemOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItemOrBuilder;

    return-object v0
.end method

.method public getDownloadOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1225
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->memoizedSerializedSize:I

    .line 1226
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1236
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 1229
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 1230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1231
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1234
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1235
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->memoizedSerializedSize:I

    move v2, v1

    .line 1236
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1169
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$1900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1205
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->memoizedIsInitialized:B

    .line 1206
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1207
    if-ne v0, v1, :cond_0

    .line 1210
    :goto_0
    return v1

    .line 1207
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1209
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilderForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1143
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilderForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 1

    .prologue
    .line 1329
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1344
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;)V

    .line 1345
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->toBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->toBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 1

    .prologue
    .line 1338
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->newBuilder(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

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
    .line 1244
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->getSerializedSize()I

    .line 1216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1217
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1219
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1220
    return-void
.end method
