.class public final Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ConfigThreadListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlistOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;",
            "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;",
            "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_configOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private configlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;",
            ">;"
        }
    .end annotation
.end field

.field private fid_:J

.field private forumThreadcount_:J

.field private name_:Ljava/lang/Object;

.field private page_:I

.field private perpage_:I

.field private picurl_:Ljava/lang/Object;

.field private total_:I

.field private tpp_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 713
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    .line 1025
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->name_:Ljava/lang/Object;

    .line 1061
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->picurl_:Ljava/lang/Object;

    .line 438
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->maybeForceBuilderInitialization()V

    .line 439
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 713
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    .line 1025
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->name_:Ljava/lang/Object;

    .line 1061
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->picurl_:Ljava/lang/Object;

    .line 443
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->maybeForceBuilderInitialization()V

    .line 444
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ConfigThreadListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$1;

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1

    .prologue
    .line 423
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->create()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    .line 505
    .local v0, "result":Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 509
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1

    .prologue
    .line 451
    new-instance v0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;-><init>()V

    return-object v0
.end method

.method private ensureConfiglistIsMutable()V
    .locals 2

    .prologue
    .line 716
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    .line 718
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 720
    :cond_0
    return-void
.end method

.method private getConfiglistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;",
            "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;",
            "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_configOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 886
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 887
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 887
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 428
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->internal_static_protobuf_pb_type_configlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 446
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->getConfiglistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 449
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllConfiglist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 823
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->ensureConfiglistIsMutable()V

    .line 824
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 829
    :goto_0
    return-object p0

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addConfiglist(ILcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 812
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->ensureConfiglistIsMutable()V

    .line 813
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 814
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 818
    :goto_0
    return-object p0

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addConfiglist(ILcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 787
    if-nez p2, :cond_0

    .line 788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 790
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->ensureConfiglistIsMutable()V

    .line 791
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 796
    :goto_0
    return-object p0

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addConfiglist(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .prologue
    .line 800
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 801
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->ensureConfiglistIsMutable()V

    .line 802
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 807
    :goto_0
    return-object p0

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addConfiglist(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    .prologue
    .line 772
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 773
    if-nez p1, :cond_0

    .line 774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 776
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->ensureConfiglistIsMutable()V

    .line 777
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 782
    :goto_0
    return-object p0

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addConfiglistBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->getConfiglistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    return-object v0
.end method

.method public addConfiglistBuilder(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->getConfiglistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    .line 496
    .local v0, "result":Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 499
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 6

    .prologue
    .line 513
    new-instance v1, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;-><init>(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;Lcom/oppo/tribune/protobuf/ConfigThreadListProto$1;)V

    .line 514
    .local v1, "result":Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 515
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 516
    .local v2, "to_bitField0_":I
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_9

    .line 517
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 518
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    .line 519
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 521
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$702(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;Ljava/util/List;)Ljava/util/List;

    .line 525
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 526
    or-int/lit8 v2, v2, 0x1

    .line 528
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->page_:I

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->page_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$802(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;I)I

    .line 529
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 530
    or-int/lit8 v2, v2, 0x2

    .line 532
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->perpage_:I

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->perpage_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$902(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;I)I

    .line 533
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 534
    or-int/lit8 v2, v2, 0x4

    .line 536
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->total_:I

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->total_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$1002(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;I)I

    .line 537
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 538
    or-int/lit8 v2, v2, 0x8

    .line 540
    :cond_4
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->fid_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->fid_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$1102(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;J)J

    .line 541
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 542
    or-int/lit8 v2, v2, 0x10

    .line 544
    :cond_5
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->forumThreadcount_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->forumThreadcount_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$1202(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;J)J

    .line 545
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 546
    or-int/lit8 v2, v2, 0x20

    .line 548
    :cond_6
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->tpp_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->tpp_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$1302(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;J)J

    .line 549
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 550
    or-int/lit8 v2, v2, 0x40

    .line 552
    :cond_7
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$1402(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 554
    or-int/lit16 v2, v2, 0x80

    .line 556
    :cond_8
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->picurl_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->picurl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$1502(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$1602(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;I)I

    .line 558
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onBuilt()V

    .line 559
    return-object v1

    .line 523
    :cond_9
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$702(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 455
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 456
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 457
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    .line 458
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 462
    :goto_0
    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->page_:I

    .line 463
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 464
    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->perpage_:I

    .line 465
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 466
    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->total_:I

    .line 467
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 468
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->fid_:J

    .line 469
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 470
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->forumThreadcount_:J

    .line 471
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 472
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->tpp_:J

    .line 473
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 474
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->name_:Ljava/lang/Object;

    .line 475
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 476
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->picurl_:Ljava/lang/Object;

    .line 477
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 478
    return-object p0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearConfiglist()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 833
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    .line 834
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 835
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 839
    :goto_0
    return-object p0

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearFid()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 2

    .prologue
    .line 976
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 977
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->fid_:J

    .line 978
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 979
    return-object p0
.end method

.method public clearForumThreadcount()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 2

    .prologue
    .line 997
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 998
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->forumThreadcount_:J

    .line 999
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 1000
    return-object p0
.end method

.method public clearName()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1

    .prologue
    .line 1049
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 1050
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->name_:Ljava/lang/Object;

    .line 1051
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 1052
    return-object p0
.end method

.method public clearPage()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1

    .prologue
    .line 913
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 914
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->page_:I

    .line 915
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 916
    return-object p0
.end method

.method public clearPerpage()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1

    .prologue
    .line 934
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 935
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->perpage_:I

    .line 936
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 937
    return-object p0
.end method

.method public clearPicurl()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1

    .prologue
    .line 1085
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 1086
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getPicurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->picurl_:Ljava/lang/Object;

    .line 1087
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 1088
    return-object p0
.end method

.method public clearTotal()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1

    .prologue
    .line 955
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 956
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->total_:I

    .line 957
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 958
    return-object p0
.end method

.method public clearTpp()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 2

    .prologue
    .line 1018
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 1019
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->tpp_:J

    .line 1020
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 1021
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 2

    .prologue
    .line 482
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->create()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

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
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfiglist(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 740
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    .line 743
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    goto :goto_0
.end method

.method public getConfiglistBuilder(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 853
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->getConfiglistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    return-object v0
.end method

.method public getConfiglistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 881
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->getConfiglistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfiglistCount()I
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 736
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getConfiglistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;",
            ">;"
        }
    .end annotation

    .prologue
    .line 726
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 729
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfiglistOrBuilder(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_configOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 857
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_configOrBuilder;

    .line 859
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_configOrBuilder;

    goto :goto_0
.end method

.method public getConfiglistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_configOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 864
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 867
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;
    .locals 1

    .prologue
    .line 491
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 487
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFid()J
    .locals 2

    .prologue
    .line 967
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->fid_:J

    return-wide v0
.end method

.method public getForumThreadcount()J
    .locals 2

    .prologue
    .line 988
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->forumThreadcount_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->name_:Ljava/lang/Object;

    .line 1031
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1032
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->name_:Ljava/lang/Object;

    .line 1036
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->page_:I

    return v0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 925
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->perpage_:I

    return v0
.end method

.method public getPicurl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->picurl_:Ljava/lang/Object;

    .line 1067
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1068
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1069
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->picurl_:Ljava/lang/Object;

    .line 1072
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 946
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->total_:I

    return v0
.end method

.method public getTpp()J
    .locals 2

    .prologue
    .line 1009
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->tpp_:J

    return-wide v0
.end method

.method public hasFid()Z
    .locals 2

    .prologue
    .line 964
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

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

.method public hasForumThreadcount()Z
    .locals 2

    .prologue
    .line 985
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 1027
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPage()Z
    .locals 2

    .prologue
    .line 901
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

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
    .line 922
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

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

.method public hasPicurl()Z
    .locals 2

    .prologue
    .line 1063
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

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
    .line 943
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

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

.method public hasTpp()Z
    .locals 2

    .prologue
    .line 1006
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

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
    .line 433
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->internal_static_protobuf_pb_type_configlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 628
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->getConfiglistCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 629
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->getConfiglist(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    const/4 v1, 0x0

    .line 634
    :goto_1
    return v1

    .line 628
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
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
    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 423
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

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
    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

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
    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 423
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

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
    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 645
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 646
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 652
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 654
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 655
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 656
    :goto_1
    return-object p0

    .line 648
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 649
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    goto :goto_1

    .line 661
    :sswitch_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 662
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->fid_:J

    goto :goto_0

    .line 666
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 667
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->forumThreadcount_:J

    goto :goto_0

    .line 671
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 672
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->tpp_:J

    goto :goto_0

    .line 676
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 677
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 681
    :sswitch_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 682
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->picurl_:Ljava/lang/Object;

    goto :goto_0

    .line 686
    :sswitch_6
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    .line 687
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 688
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->addConfiglist(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    goto :goto_0

    .line 692
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    :sswitch_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 693
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->page_:I

    goto :goto_0

    .line 697
    :sswitch_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 698
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->perpage_:I

    goto/16 :goto_0

    .line 702
    :sswitch_9
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 703
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->total_:I

    goto/16 :goto_0

    .line 646
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x32 -> :sswitch_5
        0x5a -> :sswitch_6
        0x60 -> :sswitch_7
        0x68 -> :sswitch_8
        0x70 -> :sswitch_9
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 563
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    if-eqz v0, :cond_0

    .line 564
    check-cast p1, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    move-result-object p0

    .line 567
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    :goto_0
    return-object p0

    .line 566
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    .prologue
    const/4 v0, 0x0

    .line 572
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 624
    :goto_0
    return-object p0

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_b

    .line 574
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$700(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 576
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$700(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    .line 577
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 582
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 599
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->hasPage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->setPage(I)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    .line 602
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->hasPerpage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 603
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getPerpage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->setPerpage(I)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    .line 605
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->hasTotal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 606
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getTotal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->setTotal(I)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    .line 608
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->hasFid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 609
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getFid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->setFid(J)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    .line 611
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->hasForumThreadcount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 612
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getForumThreadcount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->setForumThreadcount(J)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    .line 614
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->hasTpp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 615
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getTpp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->setTpp(J)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    .line 617
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->hasName()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 618
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    .line 620
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->hasPicurl()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 621
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getPicurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->setPicurl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    .line 623
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 579
    :cond_a
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->ensureConfiglistIsMutable()V

    .line 580
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$700(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 585
    :cond_b
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$700(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 587
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 588
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 589
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$700(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    .line 590
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 591
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->getConfiglistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_c
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 595
    :cond_d
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->configlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->access$700(Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2
.end method

.method public removeConfiglist(I)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 842
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 843
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->ensureConfiglistIsMutable()V

    .line 844
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 845
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 849
    :goto_0
    return-object p0

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setConfiglist(ILcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .prologue
    .line 762
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 763
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->ensureConfiglistIsMutable()V

    .line 764
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 769
    :goto_0
    return-object p0

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setConfiglist(ILcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 749
    if-nez p2, :cond_0

    .line 750
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 752
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->ensureConfiglistIsMutable()V

    .line 753
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 754
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 758
    :goto_0
    return-object p0

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setFid(J)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 970
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 971
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->fid_:J

    .line 972
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 973
    return-object p0
.end method

.method public setForumThreadcount(J)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 991
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 992
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->forumThreadcount_:J

    .line 993
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 994
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1040
    if-nez p1, :cond_0

    .line 1041
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1043
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 1044
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->name_:Ljava/lang/Object;

    .line 1045
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 1046
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1055
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 1056
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->name_:Ljava/lang/Object;

    .line 1057
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 1058
    return-void
.end method

.method public setPage(I)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 907
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 908
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->page_:I

    .line 909
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 910
    return-object p0
.end method

.method public setPerpage(I)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 928
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 929
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->perpage_:I

    .line 930
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 931
    return-object p0
.end method

.method public setPicurl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1076
    if-nez p1, :cond_0

    .line 1077
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1079
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 1080
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->picurl_:Ljava/lang/Object;

    .line 1081
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 1082
    return-object p0
.end method

.method setPicurl(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1091
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 1092
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->picurl_:Ljava/lang/Object;

    .line 1093
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 1094
    return-void
.end method

.method public setTotal(I)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 949
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 950
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->total_:I

    .line 951
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 952
    return-object p0
.end method

.method public setTpp(J)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1012
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->bitField0_:I

    .line 1013
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->tpp_:J

    .line 1014
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;->onChanged()V

    .line 1015
    return-object p0
.end method
