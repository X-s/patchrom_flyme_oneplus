.class public final Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SquareForumListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlistOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private forumlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;",
            ">;"
        }
    .end annotation
.end field

.field private page_:I

.field private perpage_:I

.field private total_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1562
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1775
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    .line 1563
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->maybeForceBuilderInitialization()V

    .line 1564
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1567
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1775
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    .line 1568
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->maybeForceBuilderInitialization()V

    .line 1569
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SquareForumListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$1;

    .prologue
    .line 1548
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1548
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->create()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    .line 1623
    .local v0, "result":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1624
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1627
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1

    .prologue
    .line 1578
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;-><init>()V

    return-object v0
.end method

.method private ensureForumlistIsMutable()V
    .locals 2

    .prologue
    .line 1779
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1780
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    .line 1782
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 1784
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1553
    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forumlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->access$1900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getForumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1975
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1976
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1980
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    .line 1982
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1976
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1572
    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->access$2400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->getForumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1575
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllForumlist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;"
        }
    .end annotation

    .prologue
    .line 1902
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1903
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->ensureForumlistIsMutable()V

    .line 1904
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1905
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 1909
    :goto_0
    return-object p0

    .line 1907
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addForumlist(ILcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1890
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->ensureForumlistIsMutable()V

    .line 1891
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->build()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1892
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 1897
    :goto_0
    return-object p0

    .line 1894
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->build()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addForumlist(ILcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1862
    if-nez p2, :cond_0

    .line 1863
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1865
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->ensureForumlistIsMutable()V

    .line 1866
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1867
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 1871
    :goto_0
    return-object p0

    .line 1869
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addForumlist(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1877
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->ensureForumlistIsMutable()V

    .line 1878
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->build()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1879
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 1883
    :goto_0
    return-object p0

    .line 1881
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->build()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addForumlist(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1846
    if-nez p1, :cond_0

    .line 1847
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1849
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->ensureForumlistIsMutable()V

    .line 1850
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 1855
    :goto_0
    return-object p0

    .line 1853
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addForumlistBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 2

    .prologue
    .line 1957
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->getForumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    return-object v0
.end method

.method public addForumlistBuilder(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1964
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->getForumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->build()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->build()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 2

    .prologue
    .line 1613
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    .line 1614
    .local v0, "result":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1615
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1617
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 5

    .prologue
    .line 1631
    new-instance v1, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;-><init>(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;Lcom/oppo/tribune/protobuf/SquareForumListProto$1;)V

    .line 1633
    .local v1, "result":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 1634
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1635
    .local v2, "to_bitField0_":I
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_4

    .line 1636
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1637
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    .line 1639
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 1641
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->access$2602(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;Ljava/util/List;)Ljava/util/List;

    .line 1645
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1646
    or-int/lit8 v2, v2, 0x1

    .line 1648
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->page_:I

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->page_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->access$2702(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;I)I

    .line 1649
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1650
    or-int/lit8 v2, v2, 0x2

    .line 1652
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->perpage_:I

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->perpage_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->access$2802(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;I)I

    .line 1653
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1654
    or-int/lit8 v2, v2, 0x4

    .line 1656
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->total_:I

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->total_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->access$2902(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;I)I

    .line 1657
    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->access$3002(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;I)I

    .line 1658
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onBuilt()V

    .line 1659
    return-object v1

    .line 1643
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->access$2602(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1582
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1583
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1584
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    .line 1585
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 1589
    :goto_0
    iput v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->page_:I

    .line 1590
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 1591
    iput v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->perpage_:I

    .line 1592
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 1593
    iput v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->total_:I

    .line 1594
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 1595
    return-object p0

    .line 1587
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearForumlist()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1914
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    .line 1915
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 1916
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 1920
    :goto_0
    return-object p0

    .line 1918
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPage()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1

    .prologue
    .line 2004
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 2005
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->page_:I

    .line 2006
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 2007
    return-object p0
.end method

.method public clearPerpage()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1

    .prologue
    .line 2029
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 2030
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->perpage_:I

    .line 2031
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 2032
    return-object p0
.end method

.method public clearTotal()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1

    .prologue
    .line 2054
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 2055
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->total_:I

    .line 2056
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 2057
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 2

    .prologue
    .line 1599
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->create()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

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
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;
    .locals 1

    .prologue
    .line 1608
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1603
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getForumlist(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    .line 1809
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    goto :goto_0
.end method

.method public getForumlistBuilder(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1936
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->getForumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    return-object v0
.end method

.method public getForumlistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1971
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->getForumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForumlistCount()I
    .locals 1

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1800
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getForumlistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1792
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getForumlistOrBuilder(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumOrBuilder;

    .line 1944
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumOrBuilder;

    goto :goto_0
.end method

.method public getForumlistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1952
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 1993
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->page_:I

    return v0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 2018
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->perpage_:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 2043
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->total_:I

    return v0
.end method

.method public hasPage()Z
    .locals 2

    .prologue
    .line 1989
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

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
    .line 2014
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

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
    .line 2039
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

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
    .line 1557
    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forumlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->access$2000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 1715
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->getForumlistCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1716
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->getForumlist(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1718
    const/4 v1, 0x0

    .line 1721
    :goto_1
    return v1

    .line 1715
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1721
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
    .line 1548
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1548
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

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
    .line 1548
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

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
    .line 1548
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1548
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

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
    .line 1548
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1728
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1731
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1732
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1738
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1740
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 1742
    :goto_1
    return-object p0

    .line 1734
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1735
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    goto :goto_1

    .line 1747
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;->newBuilder()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    move-result-object v0

    .line 1749
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1750
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->addForumlist(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    goto :goto_0

    .line 1754
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 1755
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->page_:I

    goto :goto_0

    .line 1759
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 1760
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->perpage_:I

    goto :goto_0

    .line 1764
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 1765
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->total_:I

    goto :goto_0

    .line 1732
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

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1663
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    if-eqz v0, :cond_0

    .line 1664
    check-cast p1, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    move-result-object p0

    .line 1667
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    :goto_0
    return-object p0

    .line 1666
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    .prologue
    const/4 v0, 0x0

    .line 1673
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1711
    :goto_0
    return-object p0

    .line 1676
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_6

    .line 1677
    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->access$2600(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1678
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1679
    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->access$2600(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    .line 1680
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 1685
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 1701
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->hasPage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1702
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->getPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->setPage(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    .line 1704
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->hasPerpage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1705
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->getPerpage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->setPerpage(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    .line 1707
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->hasTotal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1708
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->getTotal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->setTotal(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    .line 1710
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1682
    :cond_5
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->ensureForumlistIsMutable()V

    .line 1683
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->access$2600(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1688
    :cond_6
    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->access$2600(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1689
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1690
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1691
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1692
    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->access$2600(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    .line 1693
    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 1694
    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->access$3100()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->getForumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1697
    :cond_8
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->forumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;->access$2600(Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeForumlist(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1925
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->ensureForumlistIsMutable()V

    .line 1926
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1927
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 1931
    :goto_0
    return-object p0

    .line 1929
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setForumlist(ILcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1833
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->ensureForumlistIsMutable()V

    .line 1834
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->build()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1835
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 1840
    :goto_0
    return-object p0

    .line 1837
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;->build()Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setForumlist(ILcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1817
    if-nez p2, :cond_0

    .line 1818
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1820
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->ensureForumlistIsMutable()V

    .line 1821
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1822
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 1826
    :goto_0
    return-object p0

    .line 1824
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->forumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPage(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1997
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 1998
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->page_:I

    .line 1999
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 2000
    return-object p0
.end method

.method public setPerpage(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2022
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 2023
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->perpage_:I

    .line 2024
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 2025
    return-object p0
.end method

.method public setTotal(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2047
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->bitField0_:I

    .line 2048
    iput p1, p0, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->total_:I

    .line 2049
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;->onChanged()V

    .line 2050
    return-object p0
.end method
