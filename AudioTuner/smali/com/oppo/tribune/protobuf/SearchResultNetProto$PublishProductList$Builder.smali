.class public final Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SearchResultNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductListOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private end_:I

.field private fsUrl_:Ljava/lang/Object;

.field private publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private publishProduct_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;",
            ">;"
        }
    .end annotation
.end field

.field private start_:I

.field private total_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7305
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 7602
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    .line 7817
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->fsUrl_:Ljava/lang/Object;

    .line 7306
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->maybeForceBuilderInitialization()V

    .line 7307
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 7310
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 7602
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    .line 7817
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->fsUrl_:Ljava/lang/Object;

    .line 7311
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->maybeForceBuilderInitialization()V

    .line 7312
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;

    .prologue
    .line 7291
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7291
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9000()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1

    .prologue
    .line 7291
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->create()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7367
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    .line 7368
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7369
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 7372
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1

    .prologue
    .line 7321
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePublishProductIsMutable()V
    .locals 2

    .prologue
    .line 7606
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 7607
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    .line 7609
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7611
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7296
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$8700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPublishProductFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7806
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7807
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    .line 7813
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 7807
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 7315
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->access$9200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7316
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->getPublishProductFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7318
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllPublishProduct(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;"
        }
    .end annotation

    .prologue
    .line 7730
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7731
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->ensurePublishProductIsMutable()V

    .line 7732
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7733
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7737
    :goto_0
    return-object p0

    .line 7735
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPublishProduct(ILcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .prologue
    .line 7717
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7718
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->ensurePublishProductIsMutable()V

    .line 7719
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7720
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7725
    :goto_0
    return-object p0

    .line 7722
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPublishProduct(ILcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .prologue
    .line 7689
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 7690
    if-nez p2, :cond_0

    .line 7691
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7693
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->ensurePublishProductIsMutable()V

    .line 7694
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7695
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7699
    :goto_0
    return-object p0

    .line 7697
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPublishProduct(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .prologue
    .line 7704
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7705
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->ensurePublishProductIsMutable()V

    .line 7706
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7707
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7711
    :goto_0
    return-object p0

    .line 7709
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPublishProduct(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .prologue
    .line 7673
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 7674
    if-nez p1, :cond_0

    .line 7675
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7677
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->ensurePublishProductIsMutable()V

    .line 7678
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7679
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7683
    :goto_0
    return-object p0

    .line 7681
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPublishProductBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 7786
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->getPublishProductFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    return-object v0
.end method

.method public addPublishProductBuilder(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 7794
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->getPublishProductFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 2

    .prologue
    .line 7358
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    .line 7359
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7360
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7362
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 5

    .prologue
    .line 7376
    new-instance v1, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;-><init>(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;)V

    .line 7378
    .local v1, "result":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7379
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 7380
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7381
    or-int/lit8 v2, v2, 0x1

    .line 7383
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->total_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->total_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->access$9402(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;I)I

    .line 7384
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 7385
    or-int/lit8 v2, v2, 0x2

    .line 7387
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->start_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->start_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->access$9502(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;I)I

    .line 7388
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 7389
    or-int/lit8 v2, v2, 0x4

    .line 7391
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->end_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->end_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->access$9602(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;I)I

    .line 7392
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_5

    .line 7393
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 7394
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    .line 7396
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7398
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->access$9702(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;Ljava/util/List;)Ljava/util/List;

    .line 7402
    :goto_0
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 7403
    or-int/lit8 v2, v2, 0x8

    .line 7405
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->fsUrl_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->fsUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->access$9802(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7406
    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->access$9902(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;I)I

    .line 7407
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onBuilt()V

    .line 7408
    return-object v1

    .line 7400
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->access$9702(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7325
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 7326
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->total_:I

    .line 7327
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7328
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->start_:I

    .line 7329
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7330
    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->end_:I

    .line 7331
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7332
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7333
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    .line 7334
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7338
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->fsUrl_:Ljava/lang/Object;

    .line 7339
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7340
    return-object p0

    .line 7336
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearEnd()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1

    .prologue
    .line 7595
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7596
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->end_:I

    .line 7597
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7598
    return-object p0
.end method

.method public clearFsUrl()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1

    .prologue
    .line 7846
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7847
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getFsUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->fsUrl_:Ljava/lang/Object;

    .line 7848
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7849
    return-object p0
.end method

.method public clearPublishProduct()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1

    .prologue
    .line 7741
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7742
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    .line 7743
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7744
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7748
    :goto_0
    return-object p0

    .line 7746
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearStart()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1

    .prologue
    .line 7570
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7571
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->start_:I

    .line 7572
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7573
    return-object p0
.end method

.method public clearTotal()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1

    .prologue
    .line 7545
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7546
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->total_:I

    .line 7547
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7548
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 2

    .prologue
    .line 7344
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->create()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

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
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;
    .locals 1

    .prologue
    .line 7353
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7348
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 7584
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->end_:I

    return v0
.end method

.method public getFsUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 7824
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->fsUrl_:Ljava/lang/Object;

    .line 7825
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 7826
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7828
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->fsUrl_:Ljava/lang/Object;

    .line 7831
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

.method public getPublishProduct(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7634
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7635
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .line 7637
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    goto :goto_0
.end method

.method public getPublishProductBuilder(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7764
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->getPublishProductFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    return-object v0
.end method

.method public getPublishProductBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7802
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->getPublishProductFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPublishProductCount()I
    .locals 1

    .prologue
    .line 7625
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7626
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 7628
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPublishProductList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7616
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7617
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 7620
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPublishProductOrBuilder(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7769
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7770
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;

    .line 7772
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;

    goto :goto_0
.end method

.method public getPublishProductOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7777
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 7778
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 7780
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 7559
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->start_:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 7534
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->total_:I

    return v0
.end method

.method public hasEnd()Z
    .locals 2

    .prologue
    .line 7580
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

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

.method public hasFsUrl()Z
    .locals 2

    .prologue
    .line 7820
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

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

.method public hasStart()Z
    .locals 2

    .prologue
    .line 7555
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

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
    const/4 v0, 0x1

    .line 7530
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

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
    .line 7300
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$8800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7468
    const/4 v0, 0x1

    return v0
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
    .line 7291
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 7291
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

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
    .line 7291
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

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
    .line 7291
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 7291
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

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
    .line 7291
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7475
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 7478
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 7479
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 7485
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7487
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 7488
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7489
    :goto_1
    return-object p0

    .line 7481
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 7482
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    goto :goto_1

    .line 7494
    :sswitch_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7495
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->total_:I

    goto :goto_0

    .line 7499
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7500
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->start_:I

    goto :goto_0

    .line 7504
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7505
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->end_:I

    goto :goto_0

    .line 7509
    :sswitch_4
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->newBuilder()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    .line 7511
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7512
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->addPublishProduct(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    goto :goto_0

    .line 7516
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    :sswitch_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7517
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->fsUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 7479
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 7412
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    if-eqz v0, :cond_0

    .line 7413
    check-cast p1, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    move-result-object p0

    .line 7416
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    :goto_0
    return-object p0

    .line 7415
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    .prologue
    const/4 v0, 0x0

    .line 7422
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 7464
    :goto_0
    return-object p0

    .line 7425
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->hasTotal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7426
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getTotal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->setTotal(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    .line 7428
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7429
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getStart()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->setStart(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    .line 7431
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->hasEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7432
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getEnd()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->setEnd(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    .line 7434
    :cond_3
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_7

    .line 7435
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->access$9700(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7436
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7437
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->access$9700(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    .line 7438
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7443
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7460
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->hasFsUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7461
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getFsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->setFsUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    .line 7463
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 7440
    :cond_6
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->ensurePublishProductIsMutable()V

    .line 7441
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->access$9700(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 7446
    :cond_7
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->access$9700(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 7447
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 7448
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 7449
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7450
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->access$9700(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    .line 7451
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7452
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->access$10000()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->getPublishProductFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_8
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 7455
    :cond_9
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->publishProduct_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;->access$9700(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removePublishProduct(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7752
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7753
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->ensurePublishProductIsMutable()V

    .line 7754
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7755
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7759
    :goto_0
    return-object p0

    .line 7757
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setEnd(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7588
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7589
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->end_:I

    .line 7590
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7591
    return-object p0
.end method

.method public setFsUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7836
    if-nez p1, :cond_0

    .line 7837
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7839
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7840
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->fsUrl_:Ljava/lang/Object;

    .line 7841
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7842
    return-object p0
.end method

.method setFsUrl(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 7853
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7854
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->fsUrl_:Ljava/lang/Object;

    .line 7855
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7856
    return-void
.end method

.method public setPublishProduct(ILcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .prologue
    .line 7660
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7661
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->ensurePublishProductIsMutable()V

    .line 7662
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7663
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7668
    :goto_0
    return-object p0

    .line 7665
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPublishProduct(ILcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .prologue
    .line 7644
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 7645
    if-nez p2, :cond_0

    .line 7646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7648
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->ensurePublishProductIsMutable()V

    .line 7649
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProduct_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7650
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7654
    :goto_0
    return-object p0

    .line 7652
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->publishProductBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setStart(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7563
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7564
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->start_:I

    .line 7565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7566
    return-object p0
.end method

.method public setTotal(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7538
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->bitField0_:I

    .line 7539
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->total_:I

    .line 7540
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;->onChanged()V

    .line 7541
    return-object p0
.end method
