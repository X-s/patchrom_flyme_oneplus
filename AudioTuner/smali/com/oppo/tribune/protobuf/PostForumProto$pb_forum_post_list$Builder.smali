.class public final Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PostForumProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_listOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_listOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;",
            "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;",
            "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_postOrBuilder;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 993
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    .line 994
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->maybeForceBuilderInitialization()V

    .line 995
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 998
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    .line 999
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->maybeForceBuilderInitialization()V

    .line 1000
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PostForumProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PostForumProto$1;

    .prologue
    .line 979
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 1

    .prologue
    .line 979
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->create()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    .line 1048
    .local v0, "result":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1049
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1052
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 1

    .prologue
    .line 1009
    new-instance v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;-><init>()V

    return-object v0
.end method

.method private ensureForumPostListIsMutable()V
    .locals 2

    .prologue
    .line 1167
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1168
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    .line 1170
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    .line 1172
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 984
    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto;->internal_static_protobuf_pb_forum_post_list_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getForumPostListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;",
            "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;",
            "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_postOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1363
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1364
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1364
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1003
    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->getForumPostListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1006
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllForumPostList(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;"
        }
    .end annotation

    .prologue
    .line 1289
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1290
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->ensureForumPostListIsMutable()V

    .line 1291
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1292
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->onChanged()V

    .line 1296
    :goto_0
    return-object p0

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addForumPostList(ILcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1277
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->ensureForumPostListIsMutable()V

    .line 1278
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->build()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1279
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->onChanged()V

    .line 1284
    :goto_0
    return-object p0

    .line 1281
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->build()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addForumPostList(ILcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1249
    if-nez p2, :cond_0

    .line 1250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1252
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->ensureForumPostListIsMutable()V

    .line 1253
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1254
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->onChanged()V

    .line 1258
    :goto_0
    return-object p0

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addForumPostList(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1264
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->ensureForumPostListIsMutable()V

    .line 1265
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->build()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1266
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->onChanged()V

    .line 1270
    :goto_0
    return-object p0

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->build()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addForumPostList(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1234
    if-nez p1, :cond_0

    .line 1235
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1237
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->ensureForumPostListIsMutable()V

    .line 1238
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1239
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->onChanged()V

    .line 1243
    :goto_0
    return-object p0

    .line 1241
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addForumPostListBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 2

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->getForumPostListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    return-object v0
.end method

.method public addForumPostListBuilder(I)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1352
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->getForumPostListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->build()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->build()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 2

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    .line 1039
    .local v0, "result":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1040
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1042
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 4

    .prologue
    .line 1056
    new-instance v1, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;-><init>(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;Lcom/oppo/tribune/protobuf/PostForumProto$1;)V

    .line 1058
    .local v1, "result":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    .line 1059
    .local v0, "from_bitField0_":I
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    .line 1060
    iget v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1061
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    .line 1063
    iget v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    .line 1065
    :cond_0
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->access$2002(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;Ljava/util/List;)Ljava/util/List;

    .line 1069
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->onBuilt()V

    .line 1070
    return-object v1

    .line 1067
    :cond_1
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->access$2002(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->clear()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->clear()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->clear()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->clear()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 1

    .prologue
    .line 1013
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1014
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1015
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    .line 1016
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    .line 1020
    :goto_0
    return-object p0

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearForumPostList()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1301
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    .line 1302
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    .line 1303
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->onChanged()V

    .line 1307
    :goto_0
    return-object p0

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->clone()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->clone()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->clone()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->clone()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->clone()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 2

    .prologue
    .line 1024
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->create()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->clone()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;
    .locals 1

    .prologue
    .line 1033
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1028
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getForumPostList(I)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    .line 1198
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    goto :goto_0
.end method

.method public getForumPostListBuilder(I)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1323
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->getForumPostListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    return-object v0
.end method

.method public getForumPostListBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1359
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->getForumPostListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForumPostListCount()I
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1189
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
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
    .line 1177
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1181
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getForumPostListOrBuilder(I)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_postOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_postOrBuilder;

    .line 1331
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_postOrBuilder;

    goto :goto_0
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
    .line 1336
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1339
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 988
    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto;->internal_static_protobuf_pb_forum_post_list_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto;->access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 1118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->getForumPostListCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1119
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->getForumPostList(I)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1121
    const/4 v1, 0x0

    .line 1124
    :goto_1
    return v1

    .line 1118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1124
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 979
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 979
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1134
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1135
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1141
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1143
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1144
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->onChanged()V

    .line 1145
    :goto_1
    return-object p0

    .line 1137
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->onChanged()V

    goto :goto_1

    .line 1150
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;->newBuilder()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    move-result-object v0

    .line 1152
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1153
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->addForumPostList(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    goto :goto_0

    .line 1135
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1074
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    if-eqz v0, :cond_0

    .line 1075
    check-cast p1, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    move-result-object p0

    .line 1078
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    :goto_0
    return-object p0

    .line 1077
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    .prologue
    const/4 v0, 0x0

    .line 1084
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1114
    :goto_0
    return-object p0

    .line 1087
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 1088
    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->access$2000(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1090
    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->access$2000(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    .line 1091
    iget v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    .line 1096
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->onChanged()V

    .line 1113
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1093
    :cond_2
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->ensureForumPostListIsMutable()V

    .line 1094
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->access$2000(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1099
    :cond_3
    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->access$2000(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1100
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1101
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1102
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1103
    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->access$2000(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    .line 1104
    iget v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->bitField0_:I

    .line 1105
    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->getForumPostListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1108
    :cond_5
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->forumPostList_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;->access$2000(Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeForumPostList(I)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1312
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->ensureForumPostListIsMutable()V

    .line 1313
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1314
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->onChanged()V

    .line 1318
    :goto_0
    return-object p0

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setForumPostList(ILcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1221
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->ensureForumPostListIsMutable()V

    .line 1222
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->build()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1223
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->onChanged()V

    .line 1228
    :goto_0
    return-object p0

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;->build()Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setForumPostList(ILcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1205
    if-nez p2, :cond_0

    .line 1206
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1208
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->ensureForumPostListIsMutable()V

    .line 1209
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1210
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->onChanged()V

    .line 1214
    :goto_0
    return-object p0

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;->forumPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
