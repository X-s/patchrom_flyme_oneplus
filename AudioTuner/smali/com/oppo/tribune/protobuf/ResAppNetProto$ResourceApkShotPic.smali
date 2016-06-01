.class public final Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ResAppNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPicOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResAppNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceApkShotPic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    }
.end annotation


# static fields
.field public static final BIG_FIELD_NUMBER:I = 0x3

.field public static final MIDDLE_FIELD_NUMBER:I = 0x2

.field public static final SMALL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

.field private static final serialVersionUID:J


# instance fields
.field private big_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private middle_:Ljava/lang/Object;

.field private small_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 632
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    .line 633
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->initFields()V

    .line 634
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 171
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->memoizedIsInitialized:B

    .line 197
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->memoizedSerializedSize:I

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;Lcom/oppo/tribune/protobuf/ResAppNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;-><init>(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 171
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->memoizedIsInitialized:B

    .line 197
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->memoizedSerializedSize:I

    .line 42
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->small_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->middle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->big_:Ljava/lang/Object;

    return-object p1
.end method

.method private getBigBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->big_:Ljava/lang/Object;

    .line 155
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 156
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 158
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->big_:Ljava/lang/Object;

    .line 161
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

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 55
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto;->internal_static_protobuf_ResourceApkShotPic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getMiddleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->middle_:Ljava/lang/Object;

    .line 121
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 122
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 124
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->middle_:Ljava/lang/Object;

    .line 127
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

.method private getSmallBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->small_:Ljava/lang/Object;

    .line 87
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 88
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 90
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->small_:Ljava/lang/Object;

    .line 93
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
    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->small_:Ljava/lang/Object;

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->middle_:Ljava/lang/Object;

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->big_:Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1

    .prologue
    .line 308
    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->access$300()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    .prologue
    .line 317
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    .line 274
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v1

    .line 277
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    .line 286
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v1

    .line 289
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->access$200(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBig()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->big_:Ljava/lang/Object;

    .line 141
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 142
    check-cast v1, Ljava/lang/String;

    .line 149
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 144
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 145
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->big_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 149
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    return-object v0
.end method

.method public getMiddle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->middle_:Ljava/lang/Object;

    .line 107
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 108
    check-cast v1, Ljava/lang/String;

    .line 115
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 110
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 111
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->middle_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 115
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 200
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->memoizedSerializedSize:I

    .line 201
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 219
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 204
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 205
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 206
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getSmallBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 209
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 210
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getMiddleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 213
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 214
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getBigBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 217
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 218
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->memoizedSerializedSize:I

    move v1, v0

    .line 219
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getSmall()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->small_:Ljava/lang/Object;

    .line 73
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 74
    check-cast v1, Ljava/lang/String;

    .line 81
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 76
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 77
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->small_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 81
    goto :goto_0
.end method

.method public hasBig()Z
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->bitField0_:I

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

.method public hasMiddle()Z
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->bitField0_:I

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

.method public hasSmall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 68
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->bitField0_:I

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
    .line 59
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto;->internal_static_protobuf_ResourceApkShotPic_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 174
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->memoizedIsInitialized:B

    .line 175
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 176
    if-ne v0, v1, :cond_0

    .line 179
    :goto_0
    return v1

    .line 176
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 178
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 327
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResAppNetProto$1;)V

    .line 328
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->toBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->toBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1

    .prologue
    .line 321
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilder(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

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
    .line 227
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

    .line 184
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getSerializedSize()I

    .line 185
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getSmallBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 188
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getMiddleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 191
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 192
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getBigBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 195
    return-void
.end method
