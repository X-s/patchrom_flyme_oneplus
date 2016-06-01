.class public final Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ServiceNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ServiceNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceNet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    }
.end annotation


# static fields
.field public static final AREA_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

.field private static final serialVersionUID:J


# instance fields
.field private area_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;",
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
    .line 2385
    new-instance v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->defaultInstance:Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    .line 2386
    sget-object v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->defaultInstance:Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->initFields()V

    .line 2387
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    .prologue
    const/4 v0, -0x1

    .line 1797
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1851
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->memoizedIsInitialized:B

    .line 1871
    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->memoizedSerializedSize:I

    .line 1798
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;Lcom/oppo/tribune/protobuf/ServiceNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$1;

    .prologue
    .line 1793
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;-><init>(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1800
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1851
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->memoizedIsInitialized:B

    .line 1871
    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->memoizedSerializedSize:I

    .line 1801
    return-void
.end method

.method static synthetic access$3100()Z
    .locals 1

    .prologue
    .line 1793
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3400()Z
    .locals 1

    .prologue
    .line 1793
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 1

    .prologue
    .line 1806
    sget-object v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->defaultInstance:Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1814
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto;->internal_static_protobuf_ServiceNet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1848
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;

    .line 1849
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 1

    .prologue
    .line 1974
    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->create()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->access$2900()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    .prologue
    .line 1983
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1939
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    .line 1940
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1941
    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->access$2800(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v1

    .line 1943
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1951
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    .line 1952
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1953
    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->access$2800(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v1

    .line 1955
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1899
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->access$2800(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1906
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->access$2800(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1962
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->access$2800(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1969
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->access$2800(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1926
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->access$2800(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1933
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->access$2800(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1913
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->access$2800(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1920
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;->access$2800(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArea(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    return-object v0
.end method

.method public getAreaCount()I
    .locals 1

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAreaList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;

    return-object v0
.end method

.method public getAreaOrBuilder(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetAreaOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetAreaOrBuilder;

    return-object v0
.end method

.method public getAreaOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetAreaOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;
    .locals 1

    .prologue
    .line 1810
    sget-object v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->defaultInstance:Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1874
    iget v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->memoizedSerializedSize:I

    .line 1875
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1885
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 1878
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 1879
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1880
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1879
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1883
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1884
    iput v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->memoizedSerializedSize:I

    move v2, v1

    .line 1885
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1818
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto;->internal_static_protobuf_ServiceNet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto;->access$2700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1854
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->memoizedIsInitialized:B

    .line 1855
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1856
    if-ne v0, v1, :cond_0

    .line 1859
    :goto_0
    return v1

    .line 1856
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1858
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilderForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1793
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilderForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 1

    .prologue
    .line 1978
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1993
    new-instance v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ServiceNetProto$1;)V

    .line 1994
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->toBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->toBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;
    .locals 1

    .prologue
    .line 1987
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->newBuilder(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet$Builder;

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
    .line 1893
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
    .line 1864
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->getSerializedSize()I

    .line 1865
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1866
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->area_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1865
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1868
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1869
    return-void
.end method
