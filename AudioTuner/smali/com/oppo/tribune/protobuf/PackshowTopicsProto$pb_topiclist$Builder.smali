.class public final Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PackshowTopicsProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclistOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private page_:I

.field private perpage_:I

.field private topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topicOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private topiclist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;",
            ">;"
        }
    .end annotation
.end field

.field private total_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1138
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1351
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    .line 1139
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->maybeForceBuilderInitialization()V

    .line 1140
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1143
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1351
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    .line 1144
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->maybeForceBuilderInitialization()V

    .line 1145
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PackshowTopicsProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$1;

    .prologue
    .line 1124
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1

    .prologue
    .line 1124
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->create()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1198
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    .line 1199
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1200
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1203
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1

    .prologue
    .line 1154
    new-instance v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;-><init>()V

    return-object v0
.end method

.method private ensureTopiclistIsMutable()V
    .locals 2

    .prologue
    .line 1355
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1356
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    .line 1358
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1360
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1129
    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->internal_static_pb_topiclist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getTopiclistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topicOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1549
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1550
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    .line 1556
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1550
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1148
    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->getTopiclistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1151
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllTopiclist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;"
        }
    .end annotation

    .prologue
    .line 1476
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1477
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->ensureTopiclistIsMutable()V

    .line 1478
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1479
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1483
    :goto_0
    return-object p0

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTopiclist(ILcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1464
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->ensureTopiclistIsMutable()V

    .line 1465
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1466
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1471
    :goto_0
    return-object p0

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTopiclist(ILcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1436
    if-nez p2, :cond_0

    .line 1437
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1439
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->ensureTopiclistIsMutable()V

    .line 1440
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1441
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1445
    :goto_0
    return-object p0

    .line 1443
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTopiclist(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1451
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->ensureTopiclistIsMutable()V

    .line 1452
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1453
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1457
    :goto_0
    return-object p0

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTopiclist(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1421
    if-nez p1, :cond_0

    .line 1422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1424
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->ensureTopiclistIsMutable()V

    .line 1425
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1426
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1430
    :goto_0
    return-object p0

    .line 1428
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTopiclistBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 2

    .prologue
    .line 1531
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->getTopiclistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    return-object v0
.end method

.method public addTopiclistBuilder(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1538
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->getTopiclistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 2

    .prologue
    .line 1189
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    .line 1190
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1191
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1193
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 5

    .prologue
    .line 1207
    new-instance v1, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;-><init>(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;Lcom/oppo/tribune/protobuf/PackshowTopicsProto$1;)V

    .line 1209
    .local v1, "result":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1210
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1211
    .local v2, "to_bitField0_":I
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_4

    .line 1212
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1213
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    .line 1215
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1217
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->access$2002(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;Ljava/util/List;)Ljava/util/List;

    .line 1221
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1222
    or-int/lit8 v2, v2, 0x1

    .line 1224
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->page_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->page_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->access$2102(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;I)I

    .line 1225
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1226
    or-int/lit8 v2, v2, 0x2

    .line 1228
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->perpage_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->perpage_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->access$2202(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;I)I

    .line 1229
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1230
    or-int/lit8 v2, v2, 0x4

    .line 1232
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->total_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->total_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->access$2302(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;I)I

    .line 1233
    # setter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->access$2402(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;I)I

    .line 1234
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onBuilt()V

    .line 1235
    return-object v1

    .line 1219
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->access$2002(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1158
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1159
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1160
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    .line 1161
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1165
    :goto_0
    iput v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->page_:I

    .line 1166
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1167
    iput v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->perpage_:I

    .line 1168
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1169
    iput v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->total_:I

    .line 1170
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1171
    return-object p0

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPage()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1

    .prologue
    .line 1578
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1579
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->page_:I

    .line 1580
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1581
    return-object p0
.end method

.method public clearPerpage()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1

    .prologue
    .line 1603
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1604
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->perpage_:I

    .line 1605
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1606
    return-object p0
.end method

.method public clearTopiclist()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1488
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    .line 1489
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1490
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1494
    :goto_0
    return-object p0

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearTotal()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1

    .prologue
    .line 1628
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1629
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->total_:I

    .line 1630
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1631
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 2

    .prologue
    .line 1175
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->create()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

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
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .locals 1

    .prologue
    .line 1184
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1179
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 1567
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->page_:I

    return v0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 1592
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->perpage_:I

    return v0
.end method

.method public getTopiclist(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    .line 1385
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    goto :goto_0
.end method

.method public getTopiclistBuilder(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1510
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->getTopiclistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    return-object v0
.end method

.method public getTopiclistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1545
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->getTopiclistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopiclistCount()I
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1376
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getTopiclistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1368
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTopiclistOrBuilder(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topicOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topicOrBuilder;

    .line 1518
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topicOrBuilder;

    goto :goto_0
.end method

.method public getTopiclistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topicOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1526
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 1617
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->total_:I

    return v0
.end method

.method public hasPage()Z
    .locals 2

    .prologue
    .line 1563
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

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

.method public hasPerpage()Z
    .locals 2

    .prologue
    .line 1588
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

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

.method public hasTotal()Z
    .locals 2

    .prologue
    .line 1613
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

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
    .line 1133
    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->internal_static_pb_topiclist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto;->access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 1291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->getTopiclistCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1292
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->getTopiclist(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1294
    const/4 v1, 0x0

    .line 1297
    :goto_1
    return v1

    .line 1291
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1297
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
    .line 1124
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1124
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

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
    .line 1124
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

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
    .line 1124
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1124
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

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
    .line 1124
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1307
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1308
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1314
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1316
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1317
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1318
    :goto_1
    return-object p0

    .line 1310
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    goto :goto_1

    .line 1323
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    move-result-object v0

    .line 1325
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1326
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->addTopiclist(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    goto :goto_0

    .line 1330
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1331
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->page_:I

    goto :goto_0

    .line 1335
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1336
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->perpage_:I

    goto :goto_0

    .line 1340
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1341
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->total_:I

    goto :goto_0

    .line 1308
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1239
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    if-eqz v0, :cond_0

    .line 1240
    check-cast p1, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    move-result-object p0

    .line 1243
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    :goto_0
    return-object p0

    .line 1242
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    .prologue
    const/4 v0, 0x0

    .line 1249
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1287
    :goto_0
    return-object p0

    .line 1252
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_6

    .line 1253
    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->access$2000(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1255
    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->access$2000(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    .line 1256
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1261
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1277
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->hasPage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1278
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->setPage(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    .line 1280
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->hasPerpage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1281
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getPerpage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->setPerpage(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    .line 1283
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->hasTotal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1284
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getTotal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->setTotal(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;

    .line 1286
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1258
    :cond_5
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->ensureTopiclistIsMutable()V

    .line 1259
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->access$2000(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1264
    :cond_6
    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->access$2000(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1265
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1266
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1267
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1268
    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->access$2000(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    .line 1269
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1270
    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->access$2500()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->getTopiclistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1273
    :cond_8
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->topiclist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->access$2000(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeTopiclist(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1499
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->ensureTopiclistIsMutable()V

    .line 1500
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1501
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1505
    :goto_0
    return-object p0

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setPage(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1571
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1572
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->page_:I

    .line 1573
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1574
    return-object p0
.end method

.method public setPerpage(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1596
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1597
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->perpage_:I

    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1599
    return-object p0
.end method

.method public setTopiclist(ILcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1408
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->ensureTopiclistIsMutable()V

    .line 1409
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1415
    :goto_0
    return-object p0

    .line 1412
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setTopiclist(ILcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1392
    if-nez p2, :cond_0

    .line 1393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1395
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->ensureTopiclistIsMutable()V

    .line 1396
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1397
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1401
    :goto_0
    return-object p0

    .line 1399
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->topiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setTotal(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1621
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->bitField0_:I

    .line 1622
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->total_:I

    .line 1623
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist$Builder;->onChanged()V

    .line 1624
    return-object p0
.end method
