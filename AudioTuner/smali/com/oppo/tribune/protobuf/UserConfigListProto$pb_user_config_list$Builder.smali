.class public final Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "UserConfigListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_listOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_listOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;",
            "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;",
            "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_configOrBuilder;",
            ">;"
        }
    .end annotation
.end field

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

.field private page_:I

.field private perpage_:I

.field private total_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 489
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    .line 284
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->maybeForceBuilderInitialization()V

    .line 285
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 489
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    .line 289
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->maybeForceBuilderInitialization()V

    .line 290
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/UserConfigListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/UserConfigListProto$1;

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->create()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    .line 341
    .local v0, "result":Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 345
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;-><init>()V

    return-object v0
.end method

.method private ensureConfiglistIsMutable()V
    .locals 2

    .prologue
    .line 492
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    .line 494
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 496
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
            "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;",
            "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;",
            "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_configOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 662
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 663
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 663
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 274
    # getter for: Lcom/oppo/tribune/protobuf/UserConfigListProto;->internal_static_protobuf_pb_user_config_list_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 292
    # getter for: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->getConfiglistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 295
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllConfiglist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;"
        }
    .end annotation

    .prologue
    .line 598
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->ensureConfiglistIsMutable()V

    .line 600
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 601
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 605
    :goto_0
    return-object p0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addConfiglist(ILcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->ensureConfiglistIsMutable()V

    .line 589
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->build()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 590
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 594
    :goto_0
    return-object p0

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->build()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addConfiglist(ILcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 563
    if-nez p2, :cond_0

    .line 564
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 566
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->ensureConfiglistIsMutable()V

    .line 567
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 568
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 572
    :goto_0
    return-object p0

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addConfiglist(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->ensureConfiglistIsMutable()V

    .line 578
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->build()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 583
    :goto_0
    return-object p0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->build()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addConfiglist(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 549
    if-nez p1, :cond_0

    .line 550
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 552
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->ensureConfiglistIsMutable()V

    .line 553
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 558
    :goto_0
    return-object p0

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addConfiglistBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 2

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->getConfiglistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    return-object v0
.end method

.method public addConfiglistBuilder(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->getConfiglistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->build()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->build()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 2

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    .line 332
    .local v0, "result":Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 335
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 5

    .prologue
    .line 349
    new-instance v1, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;-><init>(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;Lcom/oppo/tribune/protobuf/UserConfigListProto$1;)V

    .line 350
    .local v1, "result":Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 351
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 352
    .local v2, "to_bitField0_":I
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_4

    .line 353
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 354
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    .line 355
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 357
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->access$702(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;Ljava/util/List;)Ljava/util/List;

    .line 361
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 362
    or-int/lit8 v2, v2, 0x1

    .line 364
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->page_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->page_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->access$802(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;I)I

    .line 365
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 366
    or-int/lit8 v2, v2, 0x2

    .line 368
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->perpage_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->perpage_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->access$902(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;I)I

    .line 369
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 370
    or-int/lit8 v2, v2, 0x4

    .line 372
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->total_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->total_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->access$1002(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;I)I

    .line 373
    # setter for: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->access$1102(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;I)I

    .line 374
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onBuilt()V

    .line 375
    return-object v1

    .line 359
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->access$702(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->clear()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->clear()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->clear()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->clear()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 302
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    .line 304
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 308
    :goto_0
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->page_:I

    .line 309
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 310
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->perpage_:I

    .line 311
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 312
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->total_:I

    .line 313
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 314
    return-object p0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearConfiglist()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 609
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    .line 610
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 611
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 615
    :goto_0
    return-object p0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPage()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 690
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->page_:I

    .line 691
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 692
    return-object p0
.end method

.method public clearPerpage()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 711
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->perpage_:I

    .line 712
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 713
    return-object p0
.end method

.method public clearTotal()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1

    .prologue
    .line 731
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 732
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->total_:I

    .line 733
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 734
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->clone()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->clone()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->clone()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->clone()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->clone()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->create()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

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
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->clone()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfiglist(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    .line 519
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    goto :goto_0
.end method

.method public getConfiglistBuilder(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->getConfiglistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    return-object v0
.end method

.method public getConfiglistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->getConfiglistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfiglistCount()I
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 512
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

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
            "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 505
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfiglistOrBuilder(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_configOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 633
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_configOrBuilder;

    .line 635
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_configOrBuilder;

    goto :goto_0
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
    .line 640
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 643
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;
    .locals 1

    .prologue
    .line 327
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->page_:I

    return v0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->perpage_:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->total_:I

    return v0
.end method

.method public hasPage()Z
    .locals 2

    .prologue
    .line 677
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

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
    .line 698
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

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
    .line 719
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

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
    .line 279
    # getter for: Lcom/oppo/tribune/protobuf/UserConfigListProto;->internal_static_protobuf_pb_user_config_list_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 429
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->getConfiglistCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 430
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->getConfiglist(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    const/4 v1, 0x0

    .line 435
    :goto_1
    return v1

    .line 429
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
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
    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

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
    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

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
    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

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
    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 446
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 447
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 453
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 455
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 456
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 457
    :goto_1
    return-object p0

    .line 449
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 450
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    goto :goto_1

    .line 462
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;->newBuilder()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    move-result-object v0

    .line 463
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 464
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->addConfiglist(Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    goto :goto_0

    .line 468
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 469
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->page_:I

    goto :goto_0

    .line 473
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 474
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->perpage_:I

    goto :goto_0

    .line 478
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 479
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->total_:I

    goto :goto_0

    .line 447
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

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 379
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    if-eqz v0, :cond_0

    .line 380
    check-cast p1, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    move-result-object p0

    .line 383
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    :goto_0
    return-object p0

    .line 382
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    .prologue
    const/4 v0, 0x0

    .line 388
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 425
    :goto_0
    return-object p0

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_6

    .line 390
    # getter for: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->access$700(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 392
    # getter for: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->access$700(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    .line 393
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 398
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 415
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->hasPage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->getPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->setPage(I)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    .line 418
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->hasPerpage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->getPerpage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->setPerpage(I)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    .line 421
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->hasTotal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 422
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->getTotal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->setTotal(I)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;

    .line 424
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 395
    :cond_5
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->ensureConfiglistIsMutable()V

    .line 396
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->access$700(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 401
    :cond_6
    # getter for: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->access$700(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 403
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 404
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 405
    # getter for: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->access$700(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    .line 406
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 407
    # getter for: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->getConfiglistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 411
    :cond_8
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->configlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;->access$700(Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeConfiglist(I)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 618
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->ensureConfiglistIsMutable()V

    .line 620
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 621
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 625
    :goto_0
    return-object p0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setConfiglist(ILcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->ensureConfiglistIsMutable()V

    .line 540
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->build()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 545
    :goto_0
    return-object p0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config$Builder;->build()Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setConfiglist(ILcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 525
    if-nez p2, :cond_0

    .line 526
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 528
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->ensureConfiglistIsMutable()V

    .line 529
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 534
    :goto_0
    return-object p0

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->configlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPage(I)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 683
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 684
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->page_:I

    .line 685
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 686
    return-object p0
.end method

.method public setPerpage(I)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 704
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 705
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->perpage_:I

    .line 706
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 707
    return-object p0
.end method

.method public setTotal(I)Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 725
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->bitField0_:I

    .line 726
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->total_:I

    .line 727
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_list$Builder;->onChanged()V

    .line 728
    return-object p0
.end method
