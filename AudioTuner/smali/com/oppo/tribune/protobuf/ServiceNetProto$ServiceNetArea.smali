.class public final Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ServiceNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetAreaOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ServiceNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceNetArea"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    }
.end annotation


# static fields
.field public static final AREANAME_FIELD_NUMBER:I = 0x1

.field public static final STREET_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

.field private static final serialVersionUID:J


# instance fields
.field private areaName_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private street_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1769
    new-instance v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->defaultInstance:Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    .line 1770
    sget-object v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->defaultInstance:Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->initFields()V

    .line 1771
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    .prologue
    const/4 v0, -0x1

    .line 1078
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1168
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->memoizedIsInitialized:B

    .line 1191
    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->memoizedSerializedSize:I

    .line 1079
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;Lcom/oppo/tribune/protobuf/ServiceNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$1;

    .prologue
    .line 1073
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;-><init>(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1081
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1168
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->memoizedIsInitialized:B

    .line 1191
    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->memoizedSerializedSize:I

    .line 1082
    return-void
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 1073
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->areaName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .param p1, "x1"    # I

    .prologue
    .line 1073
    iput p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->bitField0_:I

    return p1
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 1073
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private getAreaNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->areaName_:Ljava/lang/Object;

    .line 1127
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1128
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1130
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->areaName_:Ljava/lang/Object;

    .line 1133
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 1

    .prologue
    .line 1087
    sget-object v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->defaultInstance:Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1095
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto;->internal_static_protobuf_ServiceNetArea_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto;->access$1500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1164
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->areaName_:Ljava/lang/Object;

    .line 1165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;

    .line 1166
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1

    .prologue
    .line 1298
    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->create()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->access$1800()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    .prologue
    .line 1307
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1263
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    .line 1264
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1265
    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->access$1700(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v1

    .line 1267
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1275
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    .line 1276
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1277
    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->access$1700(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v1

    .line 1279
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1223
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->access$1700(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1230
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->access$1700(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1286
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->access$1700(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1293
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->access$1700(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1250
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->access$1700(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1257
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->access$1700(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1237
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->access$1700(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1244
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->access$1700(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1112
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->areaName_:Ljava/lang/Object;

    .line 1113
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1114
    check-cast v1, Ljava/lang/String;

    .line 1121
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1116
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1117
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1118
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1119
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->areaName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1121
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 1

    .prologue
    .line 1091
    sget-object v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->defaultInstance:Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1194
    iget v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->memoizedSerializedSize:I

    .line 1195
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1209
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 1198
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 1199
    iget v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 1200
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getAreaNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1203
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1204
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1207
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1208
    iput v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->memoizedSerializedSize:I

    move v2, v1

    .line 1209
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getStreet(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    return-object v0
.end method

.method public getStreetCount()I
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStreetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;

    return-object v0
.end method

.method public getStreetOrBuilder(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreetOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreetOrBuilder;

    return-object v0
.end method

.method public getStreetOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreetOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;

    return-object v0
.end method

.method public hasAreaName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1108
    iget v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->bitField0_:I

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
    .line 1099
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto;->internal_static_protobuf_ServiceNetArea_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto;->access$1600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1171
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->memoizedIsInitialized:B

    .line 1172
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1173
    if-ne v0, v1, :cond_0

    .line 1176
    :goto_0
    return v1

    .line 1173
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1175
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilderForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1073
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilderForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1

    .prologue
    .line 1302
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1317
    new-instance v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ServiceNetProto$1;)V

    .line 1318
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->toBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->toBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1

    .prologue
    .line 1311
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->newBuilder(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

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
    .line 1217
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

    .line 1181
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getSerializedSize()I

    .line 1182
    iget v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 1183
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getAreaNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1185
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1186
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1188
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1189
    return-void
.end method
