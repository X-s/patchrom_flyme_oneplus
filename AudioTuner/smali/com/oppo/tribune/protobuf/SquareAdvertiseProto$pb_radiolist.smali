.class public final Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SquareAdvertiseProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SquareAdvertiseProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_radiolist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    }
.end annotation


# static fields
.field public static final RADIOLIST_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private radiolist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1368
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->defaultInstance:Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    .line 1369
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->defaultInstance:Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->initFields()V

    .line 1370
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    .prologue
    const/4 v0, -0x1

    .line 765
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 819
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->memoizedIsInitialized:B

    .line 845
    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->memoizedSerializedSize:I

    .line 766
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$1;

    .prologue
    .line 760
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;-><init>(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 768
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 819
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->memoizedIsInitialized:B

    .line 845
    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->memoizedSerializedSize:I

    .line 769
    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 760
    sget-boolean v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 760
    sget-boolean v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 1

    .prologue
    .line 774
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->defaultInstance:Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 782
    # getter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto;->internal_static_protobuf_pb_radiolist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 816
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;

    .line 817
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 1

    .prologue
    .line 948
    # invokes: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->create()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->access$1600()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    .prologue
    .line 957
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    .line 914
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    # invokes: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v1

    .line 917
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 925
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    .line 926
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    # invokes: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v1

    .line 929
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 873
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 880
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 936
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 943
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 900
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 907
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 887
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 894
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->access$1500(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 1

    .prologue
    .line 778
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->defaultInstance:Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    return-object v0
.end method

.method public getRadiolist(I)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 807
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    return-object v0
.end method

.method public getRadiolistCount()I
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRadiolistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;

    return-object v0
.end method

.method public getRadiolistOrBuilder(I)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radioOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 812
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radioOrBuilder;

    return-object v0
.end method

.method public getRadiolistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radioOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 848
    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->memoizedSerializedSize:I

    .line 849
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 859
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 852
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 853
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 854
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 853
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 857
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 858
    iput v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->memoizedSerializedSize:I

    move v2, v1

    .line 859
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 786
    # getter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto;->internal_static_protobuf_pb_radiolist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto;->access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 822
    iget-byte v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->memoizedIsInitialized:B

    .line 823
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 824
    if-ne v1, v2, :cond_0

    .line 833
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 824
    goto :goto_0

    .line 826
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->getRadiolistCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 827
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->getRadiolist(I)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 828
    iput-byte v3, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->memoizedIsInitialized:B

    move v2, v3

    .line 829
    goto :goto_0

    .line 826
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 832
    :cond_3
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilderForType()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 760
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilderForType()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 1

    .prologue
    .line 952
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 967
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$1;)V

    .line 968
    .local v0, "builder":Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->toBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->toBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 1

    .prologue
    .line 961
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->newBuilder(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

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
    .line 867
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
    .line 838
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->getSerializedSize()I

    .line 839
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 840
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 839
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 842
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 843
    return-void
.end method
