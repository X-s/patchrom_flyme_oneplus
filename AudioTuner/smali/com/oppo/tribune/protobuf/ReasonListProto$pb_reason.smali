.class public final Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ReasonListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ReasonListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_reason"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final REASON_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private reason_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 504
    new-instance v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->defaultInstance:Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    .line 505
    sget-object v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->defaultInstance:Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->initFields()V

    .line 506
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    .prologue
    const/4 v0, -0x1

    .line 32
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 108
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->memoizedIsInitialized:B

    .line 139
    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->memoizedSerializedSize:I

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;Lcom/oppo/tribune/protobuf/ReasonListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ReasonListProto$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;-><init>(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 108
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->memoizedIsInitialized:B

    .line 139
    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->memoizedSerializedSize:I

    .line 36
    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->id_:I

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->reason_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->defaultInstance:Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 49
    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reason_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->reason_:Ljava/lang/Object;

    .line 93
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 94
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 96
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->reason_:Ljava/lang/Object;

    .line 99
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

.method private initFields()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->id_:I

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->reason_:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 1

    .prologue
    .line 246
    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->create()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->access$300()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    .prologue
    .line 255
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    .line 212
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->access$200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v1

    .line 215
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    .line 224
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->access$200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v1

    .line 227
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->access$200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->access$200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->access$200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->access$200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->access$200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->access$200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->access$200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->access$200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->defaultInstance:Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->id_:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->reason_:Ljava/lang/Object;

    .line 79
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 80
    check-cast v1, Ljava/lang/String;

    .line 87
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 82
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 83
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->reason_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 87
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 142
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->memoizedSerializedSize:I

    .line 143
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 157
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 146
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 147
    iget v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 148
    iget v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->id_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 151
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 152
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getReasonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 156
    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->memoizedSerializedSize:I

    move v1, v0

    .line 157
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 62
    iget v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReason()Z
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 53
    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reason_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->memoizedIsInitialized:B

    .line 112
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 113
    if-ne v0, v1, :cond_0

    .line 124
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 113
    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->hasId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 116
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->memoizedIsInitialized:B

    move v1, v2

    .line 117
    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->hasReason()Z

    move-result v3

    if-nez v3, :cond_3

    .line 120
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->memoizedIsInitialized:B

    move v1, v2

    .line 121
    goto :goto_0

    .line 123
    :cond_3
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilderForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilderForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 265
    new-instance v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ReasonListProto$1;)V

    .line 266
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->toBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->toBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 1

    .prologue
    .line 259
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilder(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

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
    .line 165
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 129
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getSerializedSize()I

    .line 130
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->id_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 133
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getReasonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 137
    return-void
.end method
