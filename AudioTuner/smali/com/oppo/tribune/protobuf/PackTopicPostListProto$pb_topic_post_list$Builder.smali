.class public final Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PackTopicPostListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_listOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_listOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;",
            "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;",
            "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_postOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private topicPostList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 925
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    .line 756
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->maybeForceBuilderInitialization()V

    .line 757
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 760
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 925
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    .line 761
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->maybeForceBuilderInitialization()V

    .line 762
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PackTopicPostListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$1;

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 1

    .prologue
    .line 741
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->create()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    move-result-object v0

    .line 810
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 811
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 814
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 1

    .prologue
    .line 771
    new-instance v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;-><init>()V

    return-object v0
.end method

.method private ensureTopicPostListIsMutable()V
    .locals 2

    .prologue
    .line 929
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 930
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    .line 932
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    .line 934
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 746
    # getter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto;->internal_static_pb_topic_post_list_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getTopicPostListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;",
            "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;",
            "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_postOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1129
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1130
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 765
    # getter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->getTopicPostListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 768
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllTopicPostList(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;"
        }
    .end annotation

    .prologue
    .line 1053
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1054
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->ensureTopicPostListIsMutable()V

    .line 1055
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1056
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->onChanged()V

    .line 1060
    :goto_0
    return-object p0

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTopicPostList(ILcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1041
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->ensureTopicPostListIsMutable()V

    .line 1042
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->build()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1043
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->onChanged()V

    .line 1048
    :goto_0
    return-object p0

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->build()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTopicPostList(ILcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1013
    if-nez p2, :cond_0

    .line 1014
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1016
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->ensureTopicPostListIsMutable()V

    .line 1017
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1018
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->onChanged()V

    .line 1022
    :goto_0
    return-object p0

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTopicPostList(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1028
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->ensureTopicPostListIsMutable()V

    .line 1029
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->build()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->onChanged()V

    .line 1034
    :goto_0
    return-object p0

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->build()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTopicPostList(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    .prologue
    .line 996
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 997
    if-nez p1, :cond_0

    .line 998
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1000
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->ensureTopicPostListIsMutable()V

    .line 1001
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->onChanged()V

    .line 1006
    :goto_0
    return-object p0

    .line 1004
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTopicPostListBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 2

    .prologue
    .line 1109
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->getTopicPostListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    return-object v0
.end method

.method public addTopicPostListBuilder(I)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1117
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->getTopicPostListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->build()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->build()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;
    .locals 2

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    move-result-object v0

    .line 801
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 802
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 804
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;
    .locals 4

    .prologue
    .line 818
    new-instance v1, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;-><init>(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;Lcom/oppo/tribune/protobuf/PackTopicPostListProto$1;)V

    .line 820
    .local v1, "result":Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    .line 821
    .local v0, "from_bitField0_":I
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    .line 822
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 823
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    .line 825
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    .line 827
    :cond_0
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->topicPostList_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->access$1702(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;Ljava/util/List;)Ljava/util/List;

    .line 831
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->onBuilt()V

    .line 832
    return-object v1

    .line 829
    :cond_1
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->topicPostList_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->access$1702(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->clear()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->clear()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->clear()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->clear()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 776
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 777
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    .line 778
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    .line 782
    :goto_0
    return-object p0

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearTopicPostList()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1065
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    .line 1066
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    .line 1067
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->onChanged()V

    .line 1071
    :goto_0
    return-object p0

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->clone()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->clone()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->clone()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->clone()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->clone()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 2

    .prologue
    .line 786
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->create()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

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
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->clone()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;
    .locals 1

    .prologue
    .line 795
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 790
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getTopicPostList(I)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 957
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    .line 960
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    goto :goto_0
.end method

.method public getTopicPostListBuilder(I)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1087
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->getTopicPostListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    return-object v0
.end method

.method public getTopicPostListBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1125
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->getTopicPostListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopicPostListCount()I
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 951
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getTopicPostListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;",
            ">;"
        }
    .end annotation

    .prologue
    .line 939
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 943
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTopicPostListOrBuilder(I)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_postOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_postOrBuilder;

    .line 1095
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_postOrBuilder;

    goto :goto_0
.end method

.method public getTopicPostListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_postOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 750
    # getter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto;->internal_static_pb_topic_post_list_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto;->access$1100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 880
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->getTopicPostListCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 881
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->getTopicPostList(I)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 883
    const/4 v1, 0x0

    .line 886
    :goto_1
    return v1

    .line 880
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 886
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
    .line 741
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 741
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

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
    .line 741
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

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
    .line 741
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 741
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

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
    .line 741
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 896
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 897
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 903
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 905
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 906
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->onChanged()V

    .line 907
    :goto_1
    return-object p0

    .line 899
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 900
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->onChanged()V

    goto :goto_1

    .line 912
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->newBuilder()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    .line 914
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 915
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->addTopicPostList(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    goto :goto_0

    .line 897
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 836
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    if-eqz v0, :cond_0

    .line 837
    check-cast p1, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;

    move-result-object p0

    .line 840
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    :goto_0
    return-object p0

    .line 839
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    .prologue
    const/4 v0, 0x0

    .line 846
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 876
    :goto_0
    return-object p0

    .line 849
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 850
    # getter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->topicPostList_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->access$1700(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 852
    # getter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->topicPostList_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->access$1700(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    .line 853
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    .line 858
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->onChanged()V

    .line 875
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 855
    :cond_2
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->ensureTopicPostListIsMutable()V

    .line 856
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->topicPostList_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->access$1700(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 861
    :cond_3
    # getter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->topicPostList_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->access$1700(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 862
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 863
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 864
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 865
    # getter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->topicPostList_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->access$1700(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    .line 866
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->bitField0_:I

    .line 867
    # getter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->getTopicPostListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 870
    :cond_5
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->topicPostList_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->access$1700(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeTopicPostList(I)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1076
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->ensureTopicPostListIsMutable()V

    .line 1077
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1078
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->onChanged()V

    .line 1082
    :goto_0
    return-object p0

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setTopicPostList(ILcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 984
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->ensureTopicPostListIsMutable()V

    .line 985
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->build()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 986
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->onChanged()V

    .line 991
    :goto_0
    return-object p0

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->build()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setTopicPostList(ILcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 968
    if-nez p2, :cond_0

    .line 969
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 971
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->ensureTopicPostListIsMutable()V

    .line 972
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->onChanged()V

    .line 977
    :goto_0
    return-object p0

    .line 975
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list$Builder;->topicPostListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
