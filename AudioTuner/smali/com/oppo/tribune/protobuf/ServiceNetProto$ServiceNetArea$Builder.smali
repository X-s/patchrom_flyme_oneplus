.class public final Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ServiceNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetAreaOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetAreaOrBuilder;"
    }
.end annotation


# instance fields
.field private areaName_:Ljava/lang/Object;

.field private bitField0_:I

.field private streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreetOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private street_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1335
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1514
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->areaName_:Ljava/lang/Object;

    .line 1556
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    .line 1336
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->maybeForceBuilderInitialization()V

    .line 1337
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1340
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1514
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->areaName_:Ljava/lang/Object;

    .line 1556
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    .line 1341
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->maybeForceBuilderInitialization()V

    .line 1342
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ServiceNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$1;

    .prologue
    .line 1321
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1321
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1

    .prologue
    .line 1321
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->create()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    .line 1392
    .local v0, "result":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1393
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1396
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1

    .prologue
    .line 1351
    new-instance v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;-><init>()V

    return-object v0
.end method

.method private ensureStreetIsMutable()V
    .locals 2

    .prologue
    .line 1560
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1561
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    .line 1563
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    .line 1565
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1326
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto;->internal_static_protobuf_ServiceNetArea_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto;->access$1500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getStreetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreetOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1757
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    .line 1762
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1757
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1345
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->access$2000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->getStreetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1348
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllStreet(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;"
        }
    .end annotation

    .prologue
    .line 1681
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1682
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->ensureStreetIsMutable()V

    .line 1683
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1684
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onChanged()V

    .line 1688
    :goto_0
    return-object p0

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addStreet(ILcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1670
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->ensureStreetIsMutable()V

    .line 1671
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1672
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onChanged()V

    .line 1676
    :goto_0
    return-object p0

    .line 1674
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addStreet(ILcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1642
    if-nez p2, :cond_0

    .line 1643
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1645
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->ensureStreetIsMutable()V

    .line 1646
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1647
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onChanged()V

    .line 1651
    :goto_0
    return-object p0

    .line 1649
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addStreet(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1657
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->ensureStreetIsMutable()V

    .line 1658
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1659
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onChanged()V

    .line 1663
    :goto_0
    return-object p0

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addStreet(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1626
    if-nez p1, :cond_0

    .line 1627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1629
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->ensureStreetIsMutable()V

    .line 1630
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1631
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onChanged()V

    .line 1635
    :goto_0
    return-object p0

    .line 1633
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addStreetBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 2

    .prologue
    .line 1736
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->getStreetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    return-object v0
.end method

.method public addStreetBuilder(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1744
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->getStreetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 2

    .prologue
    .line 1382
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    .line 1383
    .local v0, "result":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1384
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1386
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 5

    .prologue
    .line 1400
    new-instance v1, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;-><init>(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;Lcom/oppo/tribune/protobuf/ServiceNetProto$1;)V

    .line 1402
    .local v1, "result":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    .line 1403
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1404
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1405
    or-int/lit8 v2, v2, 0x1

    .line 1407
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->areaName_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->areaName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->access$2202(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_2

    .line 1409
    iget v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1410
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    .line 1412
    iget v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    .line 1414
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->access$2302(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;Ljava/util/List;)Ljava/util/List;

    .line 1418
    :goto_0
    # setter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->access$2402(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;I)I

    .line 1419
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onBuilt()V

    .line 1420
    return-object v1

    .line 1416
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->access$2302(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->clear()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->clear()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->clear()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->clear()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1

    .prologue
    .line 1355
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1356
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->areaName_:Ljava/lang/Object;

    .line 1357
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    .line 1358
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    .line 1360
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    .line 1364
    :goto_0
    return-object p0

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearAreaName()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1

    .prologue
    .line 1543
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    .line 1544
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getAreaName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->areaName_:Ljava/lang/Object;

    .line 1545
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onChanged()V

    .line 1546
    return-object p0
.end method

.method public clearStreet()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1693
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    .line 1694
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    .line 1695
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onChanged()V

    .line 1699
    :goto_0
    return-object p0

    .line 1697
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 2

    .prologue
    .line 1368
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->create()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

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
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->clone()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->areaName_:Ljava/lang/Object;

    .line 1522
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1523
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1525
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->areaName_:Ljava/lang/Object;

    .line 1528
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
    .locals 1

    .prologue
    .line 1377
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1372
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getStreet(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    .line 1590
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    goto :goto_0
.end method

.method public getStreetBuilder(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1715
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->getStreetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    return-object v0
.end method

.method public getStreetBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1752
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->getStreetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStreetCount()I
    .locals 1

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1581
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getStreetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1571
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1573
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getStreetOrBuilder(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreetOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreetOrBuilder;

    .line 1723
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreetOrBuilder;

    goto :goto_0
.end method

.method public getStreetOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreetOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1731
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasAreaName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1517
    iget v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

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
    .line 1330
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto;->internal_static_protobuf_ServiceNetArea_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto;->access$1600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1470
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
    .line 1321
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1321
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

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
    .line 1321
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

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
    .line 1321
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1321
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

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
    .line 1321
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1477
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1480
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1481
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1487
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1489
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1490
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onChanged()V

    .line 1491
    :goto_1
    return-object p0

    .line 1483
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1484
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onChanged()V

    goto :goto_1

    .line 1496
    :sswitch_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    .line 1497
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->areaName_:Ljava/lang/Object;

    goto :goto_0

    .line 1501
    :sswitch_2
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    .line 1503
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1504
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->addStreet(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    goto :goto_0

    .line 1481
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1424
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    if-eqz v0, :cond_0

    .line 1425
    check-cast p1, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    move-result-object p0

    .line 1428
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    :goto_0
    return-object p0

    .line 1427
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    .prologue
    const/4 v0, 0x0

    .line 1434
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1466
    :goto_0
    return-object p0

    .line 1437
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->hasAreaName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1438
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getAreaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->setAreaName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;

    .line 1440
    :cond_1
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_4

    .line 1441
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->access$2300(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1442
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1443
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->access$2300(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    .line 1444
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    .line 1449
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onChanged()V

    .line 1465
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1446
    :cond_3
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->ensureStreetIsMutable()V

    .line 1447
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->access$2300(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1452
    :cond_4
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->access$2300(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1453
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1454
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1455
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1456
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->access$2300(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    .line 1457
    iget v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    .line 1458
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->access$2500()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->getStreetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1461
    :cond_6
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->street_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;->access$2300(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeStreet(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1704
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->ensureStreetIsMutable()V

    .line 1705
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1706
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onChanged()V

    .line 1710
    :goto_0
    return-object p0

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAreaName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1533
    if-nez p1, :cond_0

    .line 1534
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1536
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    .line 1537
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->areaName_:Ljava/lang/Object;

    .line 1538
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onChanged()V

    .line 1539
    return-object p0
.end method

.method setAreaName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1550
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->bitField0_:I

    .line 1551
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->areaName_:Ljava/lang/Object;

    .line 1552
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onChanged()V

    .line 1553
    return-void
.end method

.method public setStreet(ILcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1614
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->ensureStreetIsMutable()V

    .line 1615
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1616
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onChanged()V

    .line 1620
    :goto_0
    return-object p0

    .line 1618
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->build()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setStreet(ILcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1598
    if-nez p2, :cond_0

    .line 1599
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1601
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->ensureStreetIsMutable()V

    .line 1602
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->street_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1603
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->onChanged()V

    .line 1607
    :goto_0
    return-object p0

    .line 1605
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea$Builder;->streetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
