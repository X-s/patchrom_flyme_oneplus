.class public final Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ToplineGalleryProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ToplineGalleryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_adlist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    }
.end annotation


# static fields
.field public static final ADLIST_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

.field private static final serialVersionUID:J


# instance fields
.field private adlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;",
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
    .line 1463
    new-instance v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->defaultInstance:Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    .line 1464
    sget-object v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->defaultInstance:Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->initFields()V

    .line 1465
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    .prologue
    const/4 v0, -0x1

    .line 865
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 919
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->memoizedIsInitialized:B

    .line 945
    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->memoizedSerializedSize:I

    .line 866
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;Lcom/oppo/tribune/protobuf/ToplineGalleryProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$1;

    .prologue
    .line 861
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;-><init>(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 868
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 919
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->memoizedIsInitialized:B

    .line 945
    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->memoizedSerializedSize:I

    .line 869
    return-void
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 861
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    .prologue
    .line 861
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 861
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 861
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 1

    .prologue
    .line 874
    sget-object v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->defaultInstance:Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 882
    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->internal_static_protobuf_pb_adlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->access$1400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 916
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;

    .line 917
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 1

    .prologue
    .line 1048
    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->create()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->access$1700()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    .prologue
    .line 1057
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1013
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    .line 1014
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1015
    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->access$1600(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v1

    .line 1017
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1025
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    .line 1026
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->access$1600(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v1

    .line 1029
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 973
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->access$1600(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 980
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->access$1600(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1036
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->access$1600(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1043
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->access$1600(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1000
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->access$1600(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1007
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->access$1600(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 987
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->access$1600(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 994
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->access$1600(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAdlist(I)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 907
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    return-object v0
.end method

.method public getAdlistCount()I
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAdlistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 894
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;

    return-object v0
.end method

.method public getAdlistOrBuilder(I)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 912
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adOrBuilder;

    return-object v0
.end method

.method public getAdlistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 898
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 1

    .prologue
    .line 878
    sget-object v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->defaultInstance:Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 948
    iget v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->memoizedSerializedSize:I

    .line 949
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 959
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 952
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 953
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 954
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 953
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 957
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 958
    iput v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->memoizedSerializedSize:I

    move v2, v1

    .line 959
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 886
    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->internal_static_protobuf_pb_adlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->access$1500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 922
    iget-byte v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->memoizedIsInitialized:B

    .line 923
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 924
    if-ne v1, v2, :cond_0

    .line 933
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 924
    goto :goto_0

    .line 926
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->getAdlistCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 927
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->getAdlist(I)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 928
    iput-byte v3, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->memoizedIsInitialized:B

    move v2, v3

    .line 929
    goto :goto_0

    .line 926
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 932
    :cond_3
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilderForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 861
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilderForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 1

    .prologue
    .line 1052
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1067
    new-instance v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ToplineGalleryProto$1;)V

    .line 1068
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->toBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->toBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 1

    .prologue
    .line 1061
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->newBuilder(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

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
    .line 967
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
    .line 938
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->getSerializedSize()I

    .line 939
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 940
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 939
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 942
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 943
    return-void
.end method
