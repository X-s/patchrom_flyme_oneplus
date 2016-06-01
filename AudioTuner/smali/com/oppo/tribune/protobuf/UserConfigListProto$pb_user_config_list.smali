.class public final Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
.super Lcom/google/protobuf/GeneratedMessage;
.source "UserConfigListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_listOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/UserConfigListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_user_config_list"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    }
.end annotation


# static fields
.field public static final CONFIGLIST_FIELD_NUMBER:I = 0x1

.field public static final PAGE_FIELD_NUMBER:I = 0x2

.field public static final PERPAGE_FIELD_NUMBER:I = 0x3

.field public static final TOTAL_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private configlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private page_:I

.field private perpage_:I

.field private total_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 741
    new-instance v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->defaultInstance:Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    .line 742
    sget-object v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->defaultInstance:Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->initFields()V

    .line 743
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    .prologue
    const/4 v0, -0x1

    .line 41
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 122
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->memoizedIsInitialized:B

    .line 155
    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->memoizedSerializedSize:I

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;Lcom/oppo/tribune/protobuf/UserConfigListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/UserConfigListProto$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;-><init>(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 122
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->memoizedIsInitialized:B

    .line 155
    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->memoizedSerializedSize:I

    .line 43
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->total_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->bitField0_:I

    return p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->page_:I

    return p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->perpage_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->defaultInstance:Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 56
    # getter for: Lcom/oppo/tribune/protobuf/UserConfigListProto;->internal_static_protobuf_pb_user_config_list_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;

    .line 118
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->page_:I

    .line 119
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->perpage_:I

    .line 120
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->total_:I

    .line 121
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1

    .prologue
    .line 256
    # invokes: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->create()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->access$300()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    .prologue
    .line 259
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    .line 226
    .local v0, "builder":Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    # invokes: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v1

    .line 229
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    .line 237
    .local v0, "builder":Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    # invokes: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v1

    .line 240
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfiglist(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    return-object v0
.end method

.method public getConfiglistCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getConfiglistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;

    return-object v0
.end method

.method public getConfiglistOrBuilder(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_configOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_configOrBuilder;

    return-object v0
.end method

.method public getConfiglistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_configOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->defaultInstance:Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->page_:I

    return v0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->perpage_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 157
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->memoizedSerializedSize:I

    .line 158
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 179
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 160
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 162
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_2

    .line 166
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->page_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 169
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3

    .line 170
    const/4 v3, 0x3

    iget v4, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->perpage_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 173
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4

    .line 174
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->total_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 177
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 178
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->memoizedSerializedSize:I

    move v2, v1

    .line 179
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->total_:I

    return v0
.end method

.method public hasPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 90
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPerpage()Z
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->bitField0_:I

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

.method public hasTotal()Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 61
    # getter for: Lcom/oppo/tribune/protobuf/UserConfigListProto;->internal_static_protobuf_pb_user_config_list_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 124
    iget-byte v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->memoizedIsInitialized:B

    .line 125
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 134
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 125
    goto :goto_0

    .line 127
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->getConfiglistCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 128
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->getConfiglist(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 129
    iput-byte v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->memoizedIsInitialized:B

    move v2, v3

    .line 130
    goto :goto_0

    .line 127
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_3
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilderForType()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilderForType()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 266
    new-instance v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/UserConfigListProto$1;)V

    .line 267
    .local v0, "builder":Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->toBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->toBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1

    .prologue
    .line 261
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->newBuilder(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

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
    .line 186
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

    .line 139
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->getSerializedSize()I

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 144
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->page_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 146
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 147
    const/4 v1, 0x3

    iget v2, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->perpage_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 149
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 150
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->total_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 152
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 153
    return-void
.end method
