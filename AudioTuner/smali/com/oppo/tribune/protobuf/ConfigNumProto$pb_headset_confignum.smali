.class public final Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ConfigNumProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ConfigNumProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_headset_confignum"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    }
.end annotation


# static fields
.field public static final BRAND_ID_FIELD_NUMBER:I = 0x1

.field public static final EACH_TYPE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private brandId_:J

.field private eachType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;",
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
    .line 1352
    new-instance v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    .line 1353
    sget-object v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->initFields()V

    .line 1354
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    .prologue
    const/4 v0, -0x1

    .line 683
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 751
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->memoizedIsInitialized:B

    .line 784
    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->memoizedSerializedSize:I

    .line 684
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;Lcom/oppo/tribune/protobuf/ConfigNumProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$1;

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;-><init>(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 686
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 751
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->memoizedIsInitialized:B

    .line 784
    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->memoizedSerializedSize:I

    .line 687
    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 678
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .param p1, "x1"    # J

    .prologue
    .line 678
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->brandId_:J

    return-wide p1
.end method

.method static synthetic access$2000(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .param p1, "x1"    # I

    .prologue
    .line 678
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->bitField0_:I

    return p1
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 678
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 1

    .prologue
    .line 692
    sget-object v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 700
    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto;->internal_static_protobuf_pb_headset_confignum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 747
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->brandId_:J

    .line 748
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;

    .line 749
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 1

    .prologue
    .line 891
    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->create()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->access$1500()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    .prologue
    .line 900
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    .line 857
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->access$1400(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v1

    .line 860
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 868
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    .line 869
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 870
    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->access$1400(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v1

    .line 872
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 816
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->access$1400(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 823
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->access$1400(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 879
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->access$1400(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->access$1400(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 843
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->access$1400(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->access$1400(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 830
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->access$1400(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 837
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->access$1400(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBrandId()J
    .locals 2

    .prologue
    .line 717
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->brandId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 1

    .prologue
    .line 696
    sget-object v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->defaultInstance:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    return-object v0
.end method

.method public getEachType(I)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 738
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    return-object v0
.end method

.method public getEachTypeCount()I
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEachTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;",
            ">;"
        }
    .end annotation

    .prologue
    .line 725
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;

    return-object v0
.end method

.method public getEachTypeOrBuilder(I)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_numOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 743
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_numOrBuilder;

    return-object v0
.end method

.method public getEachTypeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_numOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 787
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->memoizedSerializedSize:I

    .line 788
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 802
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 791
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 792
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_1

    .line 793
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->brandId_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 796
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 797
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 800
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 801
    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->memoizedSerializedSize:I

    move v2, v1

    .line 802
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public hasBrandId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 713
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->bitField0_:I

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
    .line 704
    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto;->internal_static_protobuf_pb_headset_confignum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto;->access$1300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 754
    iget-byte v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->memoizedIsInitialized:B

    .line 755
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 756
    if-ne v1, v2, :cond_0

    .line 769
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 756
    goto :goto_0

    .line 758
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->hasBrandId()Z

    move-result v4

    if-nez v4, :cond_2

    .line 759
    iput-byte v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->memoizedIsInitialized:B

    move v2, v3

    .line 760
    goto :goto_0

    .line 762
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->getEachTypeCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 763
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->getEachType(I)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 764
    iput-byte v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->memoizedIsInitialized:B

    move v2, v3

    .line 765
    goto :goto_0

    .line 762
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 768
    :cond_4
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilderForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 678
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilderForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 1

    .prologue
    .line 895
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 910
    new-instance v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ConfigNumProto$1;)V

    .line 911
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->toBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->toBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 1

    .prologue
    .line 904
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->newBuilder(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

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
    .line 810
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
    const/4 v4, 0x1

    .line 774
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->getSerializedSize()I

    .line 775
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_0

    .line 776
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->brandId_:J

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 778
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 779
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 778
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 782
    return-void
.end method
