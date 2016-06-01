.class public final Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SearchDownloadProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadListOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private download_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1362
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1525
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    .line 1363
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->maybeForceBuilderInitialization()V

    .line 1364
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1367
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1525
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    .line 1368
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->maybeForceBuilderInitialization()V

    .line 1369
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;

    .prologue
    .line 1348
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1348
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 1

    .prologue
    .line 1348
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->create()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1416
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    .line 1417
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1418
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1421
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 1

    .prologue
    .line 1378
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDownloadIsMutable()V
    .locals 2

    .prologue
    .line 1529
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1530
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    .line 1532
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    .line 1534
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1353
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$1800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDownloadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1725
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1726
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1726
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1372
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->access$2300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->getDownloadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1375
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllDownload(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;"
        }
    .end annotation

    .prologue
    .line 1650
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1651
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->ensureDownloadIsMutable()V

    .line 1652
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1653
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->onChanged()V

    .line 1657
    :goto_0
    return-object p0

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDownload(ILcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1639
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->ensureDownloadIsMutable()V

    .line 1640
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1641
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->onChanged()V

    .line 1645
    :goto_0
    return-object p0

    .line 1643
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDownload(ILcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1611
    if-nez p2, :cond_0

    .line 1612
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1614
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->ensureDownloadIsMutable()V

    .line 1615
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1616
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->onChanged()V

    .line 1620
    :goto_0
    return-object p0

    .line 1618
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDownload(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1626
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->ensureDownloadIsMutable()V

    .line 1627
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1628
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->onChanged()V

    .line 1632
    :goto_0
    return-object p0

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDownload(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1595
    if-nez p1, :cond_0

    .line 1596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1598
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->ensureDownloadIsMutable()V

    .line 1599
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->onChanged()V

    .line 1604
    :goto_0
    return-object p0

    .line 1602
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addDownloadBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 2

    .prologue
    .line 1705
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->getDownloadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    return-object v0
.end method

.method public addDownloadBuilder(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1713
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->getDownloadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->build()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->build()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 2

    .prologue
    .line 1407
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    .line 1408
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1409
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1411
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 4

    .prologue
    .line 1425
    new-instance v1, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;-><init>(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;)V

    .line 1427
    .local v1, "result":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    .line 1428
    .local v0, "from_bitField0_":I
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    .line 1429
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1430
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    .line 1432
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    .line 1434
    :cond_0
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->access$2502(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;Ljava/util/List;)Ljava/util/List;

    .line 1438
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->onBuilt()V

    .line 1439
    return-object v1

    .line 1436
    :cond_1
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->access$2502(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 1

    .prologue
    .line 1382
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1383
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1384
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    .line 1385
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    .line 1389
    :goto_0
    return-object p0

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearDownload()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 1

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1662
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    .line 1663
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    .line 1664
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->onChanged()V

    .line 1668
    :goto_0
    return-object p0

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 2

    .prologue
    .line 1393
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->create()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

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
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;
    .locals 1

    .prologue
    .line 1402
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1397
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDownload(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    .line 1559
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    goto :goto_0
.end method

.method public getDownloadBuilder(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1684
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->getDownloadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    return-object v0
.end method

.method public getDownloadBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1721
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->getDownloadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadCount()I
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1550
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDownloadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1542
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getDownloadOrBuilder(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItemOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItemOrBuilder;

    .line 1692
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItemOrBuilder;

    goto :goto_0
.end method

.method public getDownloadOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1700
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1357
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$1900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1486
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
    .line 1348
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1348
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

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
    .line 1348
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

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
    .line 1348
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1348
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

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
    .line 1348
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1493
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1496
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1497
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1503
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1505
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1506
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->onChanged()V

    .line 1507
    :goto_1
    return-object p0

    .line 1499
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1500
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->onChanged()V

    goto :goto_1

    .line 1512
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;->newBuilder()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    move-result-object v0

    .line 1514
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1515
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->addDownload(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    goto :goto_0

    .line 1497
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1443
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    if-eqz v0, :cond_0

    .line 1444
    check-cast p1, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    move-result-object p0

    .line 1447
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    :goto_0
    return-object p0

    .line 1446
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    .prologue
    const/4 v0, 0x0

    .line 1453
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1482
    :goto_0
    return-object p0

    .line 1456
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 1457
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->access$2500(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1458
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1459
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->access$2500(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    .line 1460
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    .line 1465
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->onChanged()V

    .line 1481
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1462
    :cond_2
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->ensureDownloadIsMutable()V

    .line 1463
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->access$2500(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1468
    :cond_3
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->access$2500(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1469
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1470
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1471
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1472
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->access$2500(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    .line 1473
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->bitField0_:I

    .line 1474
    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->access$2600()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->getDownloadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1477
    :cond_5
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->download_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;->access$2500(Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeDownload(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1673
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->ensureDownloadIsMutable()V

    .line 1674
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1675
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->onChanged()V

    .line 1679
    :goto_0
    return-object p0

    .line 1677
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setDownload(ILcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1583
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->ensureDownloadIsMutable()V

    .line 1584
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1585
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->onChanged()V

    .line 1589
    :goto_0
    return-object p0

    .line 1587
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setDownload(ILcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1567
    if-nez p2, :cond_0

    .line 1568
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1570
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->ensureDownloadIsMutable()V

    .line 1571
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->download_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1572
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->onChanged()V

    .line 1576
    :goto_0
    return-object p0

    .line 1574
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;->downloadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
