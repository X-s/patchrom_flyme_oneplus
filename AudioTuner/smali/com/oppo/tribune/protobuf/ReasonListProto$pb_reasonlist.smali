.class public final Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ReasonListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ReasonListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_reasonlist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    }
.end annotation


# static fields
.field public static final REASONLIST_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private reasonlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1135
    new-instance v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->defaultInstance:Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    .line 1136
    sget-object v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->defaultInstance:Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->initFields()V

    .line 1137
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    .prologue
    const/4 v0, -0x1

    .line 533
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 587
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->memoizedIsInitialized:B

    .line 613
    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->memoizedSerializedSize:I

    .line 534
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;Lcom/oppo/tribune/protobuf/ReasonListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ReasonListProto$1;

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;-><init>(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 536
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 587
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->memoizedIsInitialized:B

    .line 613
    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->memoizedSerializedSize:I

    .line 537
    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 528
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 528
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 1

    .prologue
    .line 542
    sget-object v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->defaultInstance:Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 550
    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reasonlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 584
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;

    .line 585
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 1

    .prologue
    .line 716
    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->create()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->access$1300()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    .prologue
    .line 725
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    .line 682
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->access$1200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v1

    .line 685
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    .line 694
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->access$1200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v1

    .line 697
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->access$1200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->access$1200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->access$1200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->access$1200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->access$1200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->access$1200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 655
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->access$1200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->access$1200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 1

    .prologue
    .line 546
    sget-object v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->defaultInstance:Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    return-object v0
.end method

.method public getReasonlist(I)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 575
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    return-object v0
.end method

.method public getReasonlistCount()I
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReasonlistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;

    return-object v0
.end method

.method public getReasonlistOrBuilder(I)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 580
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonOrBuilder;

    return-object v0
.end method

.method public getReasonlistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 616
    iget v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->memoizedSerializedSize:I

    .line 617
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 627
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 620
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 621
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 622
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 625
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 626
    iput v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->memoizedSerializedSize:I

    move v2, v1

    .line 627
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 554
    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reasonlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto;->access$1100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 590
    iget-byte v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->memoizedIsInitialized:B

    .line 591
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 592
    if-ne v1, v2, :cond_0

    .line 601
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 592
    goto :goto_0

    .line 594
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->getReasonlistCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 595
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->getReasonlist(I)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 596
    iput-byte v3, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->memoizedIsInitialized:B

    move v2, v3

    .line 597
    goto :goto_0

    .line 594
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 600
    :cond_3
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilderForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilderForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 1

    .prologue
    .line 720
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 735
    new-instance v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ReasonListProto$1;)V

    .line 736
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->toBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->toBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 1

    .prologue
    .line 729
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->newBuilder(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

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
    .line 635
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
    .line 606
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->getSerializedSize()I

    .line 607
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 608
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 611
    return-void
.end method
