.class public final Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ResPhoneModelNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    }
.end annotation


# static fields
.field public static final HEIGHT_FIELD_NUMBER:I = 0x3

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final RESOLUTION_FIELD_NUMBER:I = 0x5

.field public static final WIDTH_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private height_:J

.field private id_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private resolution_:Ljava/lang/Object;

.field private width_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 721
    new-instance v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->defaultInstance:Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    .line 722
    sget-object v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->defaultInstance:Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->initFields()V

    .line 723
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    .prologue
    const/4 v0, -0x1

    .line 48
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 185
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->memoizedIsInitialized:B

    .line 217
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->memoizedSerializedSize:I

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$1;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;-><init>(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 51
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 185
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->memoizedIsInitialized:B

    .line 217
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->memoizedSerializedSize:I

    .line 52
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .param p1, "x1"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->width_:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->resolution_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .param p1, "x1"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->id_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .param p1, "x1"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->height_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->defaultInstance:Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 65
    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->internal_static_protobuf_ResourceModel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->name_:Ljava/lang/Object;

    .line 109
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 110
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 112
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->name_:Ljava/lang/Object;

    .line 115
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

.method private getResolutionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->resolution_:Ljava/lang/Object;

    .line 167
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 168
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 170
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->resolution_:Ljava/lang/Object;

    .line 173
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
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 178
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->id_:J

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->name_:Ljava/lang/Object;

    .line 180
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->height_:J

    .line 181
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->width_:J

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->resolution_:Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 1

    .prologue
    .line 336
    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->create()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->access$300()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    .prologue
    .line 345
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    .line 302
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v1

    .line 305
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    .line 314
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v1

    .line 317
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->defaultInstance:Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    return-object v0
.end method

.method public getHeight()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->height_:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->id_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->name_:Ljava/lang/Object;

    .line 95
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 96
    check-cast v1, Ljava/lang/String;

    .line 103
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 98
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 99
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 103
    goto :goto_0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 4

    .prologue
    .line 152
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->resolution_:Ljava/lang/Object;

    .line 153
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 154
    check-cast v1, Ljava/lang/String;

    .line 161
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 156
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 157
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->resolution_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 161
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 220
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->memoizedSerializedSize:I

    .line 221
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 247
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 224
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 225
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 226
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->id_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 229
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 230
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 233
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 234
    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->height_:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 237
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 238
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->width_:J

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 241
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 242
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getResolutionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 245
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 246
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->memoizedSerializedSize:I

    move v1, v0

    .line 247
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getWidth()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->width_:J

    return-wide v0
.end method

.method public hasHeight()Z
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 78
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

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

.method public hasResolution()Z
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWidth()Z
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

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
    .line 69
    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->internal_static_protobuf_ResourceModel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 188
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->memoizedIsInitialized:B

    .line 189
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 190
    if-ne v0, v1, :cond_0

    .line 193
    :goto_0
    return v1

    .line 190
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 192
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 355
    new-instance v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$1;)V

    .line 356
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->toBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->toBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 1

    .prologue
    .line 349
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilder(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

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
    .line 255
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
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getSerializedSize()I

    .line 199
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 200
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->id_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 202
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 205
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 206
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->height_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 208
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 209
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->width_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 211
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 212
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getResolutionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 214
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 215
    return-void
.end method
