.class public final Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ResPhoneModelNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModelList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    }
.end annotation


# static fields
.field public static final MODELLIST_FIELD_NUMBER:I = 0x1

.field public static final TOTAL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private modellist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;",
            ">;"
        }
    .end annotation
.end field

.field private total_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1409
    new-instance v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->defaultInstance:Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    .line 1410
    sget-object v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->defaultInstance:Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->initFields()V

    .line 1411
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    .prologue
    const/4 v0, -0x1

    .line 754
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 822
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->memoizedIsInitialized:B

    .line 845
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->memoizedSerializedSize:I

    .line 755
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$1;

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;-><init>(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 757
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 822
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->memoizedIsInitialized:B

    .line 845
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->memoizedSerializedSize:I

    .line 758
    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 750
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .param p1, "x1"    # I

    .prologue
    .line 750
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->total_:I

    return p1
.end method

.method static synthetic access$2202(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .param p1, "x1"    # I

    .prologue
    .line 750
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->bitField0_:I

    return p1
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 750
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 1

    .prologue
    .line 763
    sget-object v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->defaultInstance:Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 771
    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->internal_static_protobuf_ModelList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 818
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;

    .line 819
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->total_:I

    .line 820
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1

    .prologue
    .line 952
    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->create()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->access$1600()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    .prologue
    .line 961
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 917
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    .line 918
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->access$1500(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v1

    .line 921
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 929
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    .line 930
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->access$1500(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v1

    .line 933
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 877
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->access$1500(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 884
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->access$1500(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 940
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->access$1500(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 947
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->access$1500(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 904
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->access$1500(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 911
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->access$1500(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 891
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->access$1500(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 898
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->access$1500(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 1

    .prologue
    .line 767
    sget-object v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->defaultInstance:Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    return-object v0
.end method

.method public getModellist(I)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 797
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    return-object v0
.end method

.method public getModellistCount()I
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getModellistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;

    return-object v0
.end method

.method public getModellistOrBuilder(I)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModelOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 802
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModelOrBuilder;

    return-object v0
.end method

.method public getModellistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModelOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 848
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->memoizedSerializedSize:I

    .line 849
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 863
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
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 854
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;

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
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_2

    .line 858
    const/4 v3, 0x2

    iget v4, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->total_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 861
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 862
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->memoizedSerializedSize:I

    move v2, v1

    .line 863
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->total_:I

    return v0
.end method

.method public hasTotal()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 810
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->bitField0_:I

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
    .line 775
    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->internal_static_protobuf_ModelList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 825
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->memoizedIsInitialized:B

    .line 826
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 827
    if-ne v0, v1, :cond_0

    .line 830
    :goto_0
    return v1

    .line 827
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 829
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 750
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1

    .prologue
    .line 956
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 971
    new-instance v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$1;)V

    .line 972
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->toBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->toBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1

    .prologue
    .line 965
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->newBuilder(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

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
    .line 871
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
    const/4 v2, 0x1

    .line 835
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->getSerializedSize()I

    .line 836
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 839
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 840
    const/4 v1, 0x2

    iget v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->total_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 842
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 843
    return-void
.end method
