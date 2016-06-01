.class public final Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PostForumProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_listOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PostForumProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_forum_post_list"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    }
.end annotation


# static fields
.field public static final FORUM_POST_LIST_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

.field private static final serialVersionUID:J


# instance fields
.field private forumPostList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;",
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
    .line 1377
    new-instance v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->defaultInstance:Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    .line 1378
    sget-object v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->defaultInstance:Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->initFields()V

    .line 1379
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    .prologue
    const/4 v0, -0x1

    .line 773
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 827
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->memoizedIsInitialized:B

    .line 853
    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->memoizedSerializedSize:I

    .line 774
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;Lcom/oppo/tribune/protobuf/PostForumProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PostForumProto$1;

    .prologue
    .line 768
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;-><init>(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 776
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 827
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->memoizedIsInitialized:B

    .line 853
    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->memoizedSerializedSize:I

    .line 777
    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 768
    sget-boolean v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 768
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 768
    sget-boolean v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 1

    .prologue
    .line 782
    sget-object v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->defaultInstance:Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 790
    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto;->internal_static_protobuf_pb_forum_post_list_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 824
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;

    .line 825
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 1

    .prologue
    .line 956
    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->create()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->access$1600()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    .prologue
    .line 965
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 921
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    .line 922
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v1

    .line 925
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 933
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    .line 934
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 935
    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v1

    .line 937
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 881
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 888
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 944
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 908
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 915
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 895
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 902
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->access$1500(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 1

    .prologue
    .line 786
    sget-object v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->defaultInstance:Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    return-object v0
.end method

.method public getForumPostList(I)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 815
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    return-object v0
.end method

.method public getForumPostListCount()I
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getForumPostListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;",
            ">;"
        }
    .end annotation

    .prologue
    .line 802
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;

    return-object v0
.end method

.method public getForumPostListOrBuilder(I)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_postOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 820
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_postOrBuilder;

    return-object v0
.end method

.method public getForumPostListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_postOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 856
    iget v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->memoizedSerializedSize:I

    .line 857
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 867
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 860
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 861
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 862
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 865
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 866
    iput v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->memoizedSerializedSize:I

    move v2, v1

    .line 867
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 794
    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto;->internal_static_protobuf_pb_forum_post_list_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto;->access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 830
    iget-byte v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->memoizedIsInitialized:B

    .line 831
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 832
    if-ne v1, v2, :cond_0

    .line 841
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 832
    goto :goto_0

    .line 834
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->getForumPostListCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 835
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->getForumPostList(I)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 836
    iput-byte v3, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->memoizedIsInitialized:B

    move v2, v3

    .line 837
    goto :goto_0

    .line 834
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 840
    :cond_3
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilderForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 768
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilderForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 1

    .prologue
    .line 960
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 975
    new-instance v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PostForumProto$1;)V

    .line 976
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->toBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->toBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 1

    .prologue
    .line 969
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->newBuilder(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

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
    .line 875
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
    .line 846
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->getSerializedSize()I

    .line 847
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 848
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 850
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 851
    return-void
.end method
