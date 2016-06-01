.class public final Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BBSNoticesListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelistOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private newnotices_:I

.field private noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private noticelist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;",
            ">;"
        }
    .end annotation
.end field

.field private total_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1364
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1614
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1365
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->maybeForceBuilderInitialization()V

    .line 1366
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1369
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1614
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1370
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->maybeForceBuilderInitialization()V

    .line 1371
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/BBSNoticesListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$1;

    .prologue
    .line 1350
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1350
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1

    .prologue
    .line 1350
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->create()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1422
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    .line 1423
    .local v0, "result":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1424
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1427
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1

    .prologue
    .line 1380
    new-instance v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;-><init>()V

    return-object v0
.end method

.method private ensureNoticelistIsMutable()V
    .locals 2

    .prologue
    .line 1618
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1619
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1621
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    .line 1623
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1355
    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnoticelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->access$1700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNoticelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1817
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1821
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1817
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1374
    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->access$2200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->getNoticelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1377
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllNoticelist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;"
        }
    .end annotation

    .prologue
    .line 1741
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1742
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1743
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1744
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    .line 1748
    :goto_0
    return-object p0

    .line 1746
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addNoticelist(ILcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1729
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1730
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->build()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1731
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    .line 1736
    :goto_0
    return-object p0

    .line 1733
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->build()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addNoticelist(ILcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1701
    if-nez p2, :cond_0

    .line 1702
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1704
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1705
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1706
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    .line 1710
    :goto_0
    return-object p0

    .line 1708
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addNoticelist(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1716
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1717
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->build()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1718
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    .line 1722
    :goto_0
    return-object p0

    .line 1720
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->build()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addNoticelist(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1685
    if-nez p1, :cond_0

    .line 1686
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1688
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1689
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1690
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    .line 1694
    :goto_0
    return-object p0

    .line 1692
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addNoticelistBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 2

    .prologue
    .line 1796
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->getNoticelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getDefaultInstance()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    return-object v0
.end method

.method public addNoticelistBuilder(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1804
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->getNoticelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getDefaultInstance()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->build()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->build()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 2

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    .line 1414
    .local v0, "result":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1415
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1417
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 5

    .prologue
    .line 1431
    new-instance v1, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;-><init>(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;Lcom/oppo/tribune/protobuf/BBSNoticesListProto$1;)V

    .line 1433
    .local v1, "result":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    .line 1434
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1435
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1436
    or-int/lit8 v2, v2, 0x1

    .line 1438
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->total_:I

    # setter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->total_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->access$2402(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;I)I

    .line 1439
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1440
    or-int/lit8 v2, v2, 0x2

    .line 1442
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->newnotices_:I

    # setter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->newnotices_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->access$2502(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;I)I

    .line 1443
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_3

    .line 1444
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1445
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1447
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    .line 1449
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->access$2602(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;Ljava/util/List;)Ljava/util/List;

    .line 1453
    :goto_0
    # setter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->access$2702(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;I)I

    .line 1454
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onBuilt()V

    .line 1455
    return-object v1

    .line 1451
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->access$2602(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->clear()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->clear()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->clear()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->clear()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1384
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1385
    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->total_:I

    .line 1386
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    .line 1387
    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->newnotices_:I

    .line 1388
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    .line 1389
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1390
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1391
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    .line 1395
    :goto_0
    return-object p0

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearNewnotices()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1

    .prologue
    .line 1607
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    .line 1608
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->newnotices_:I

    .line 1609
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    .line 1610
    return-object p0
.end method

.method public clearNoticelist()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1753
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1754
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    .line 1755
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    .line 1759
    :goto_0
    return-object p0

    .line 1757
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearTotal()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1

    .prologue
    .line 1582
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    .line 1583
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->total_:I

    .line 1584
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    .line 1585
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->clone()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->clone()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->clone()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->clone()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->clone()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 2

    .prologue
    .line 1399
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->create()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

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
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->clone()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;
    .locals 1

    .prologue
    .line 1408
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1403
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getNewnotices()I
    .locals 1

    .prologue
    .line 1596
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->newnotices_:I

    return v0
.end method

.method public getNoticelist(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1646
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    .line 1648
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    goto :goto_0
.end method

.method public getNoticelistBuilder(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1775
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->getNoticelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    return-object v0
.end method

.method public getNoticelistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1812
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->getNoticelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNoticelistCount()I
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1639
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getNoticelistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1631
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getNoticelistOrBuilder(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticeOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticeOrBuilder;

    .line 1783
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticeOrBuilder;

    goto :goto_0
.end method

.method public getNoticelistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1791
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 1571
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->total_:I

    return v0
.end method

.method public hasNewnotices()Z
    .locals 2

    .prologue
    .line 1592
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

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

    .line 1567
    iget v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

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
    .line 1359
    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnoticelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->access$1800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 1509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->getNoticelistCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1510
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->getNoticelist(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1512
    const/4 v1, 0x0

    .line 1515
    :goto_1
    return v1

    .line 1509
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1515
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
    .line 1350
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1350
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

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
    .line 1350
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

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
    .line 1350
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1350
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

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
    .line 1350
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1522
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1525
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1526
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1532
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1534
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1535
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    .line 1536
    :goto_1
    return-object p0

    .line 1528
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1529
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    goto :goto_1

    .line 1541
    :sswitch_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    .line 1542
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->total_:I

    goto :goto_0

    .line 1546
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    .line 1547
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->newnotices_:I

    goto :goto_0

    .line 1551
    :sswitch_3
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    .line 1553
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1554
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->addNoticelist(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    goto :goto_0

    .line 1526
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1459
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    if-eqz v0, :cond_0

    .line 1460
    check-cast p1, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    move-result-object p0

    .line 1463
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    :goto_0
    return-object p0

    .line 1462
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    .prologue
    const/4 v0, 0x0

    .line 1469
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1505
    :goto_0
    return-object p0

    .line 1472
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->hasTotal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1473
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->getTotal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->setTotal(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    .line 1475
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->hasNewnotices()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1476
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->getNewnotices()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->setNewnotices(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;

    .line 1478
    :cond_2
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_5

    .line 1479
    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->access$2600(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1480
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1481
    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->access$2600(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1482
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    .line 1487
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    .line 1504
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1484
    :cond_4
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1485
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->access$2600(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1490
    :cond_5
    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->access$2600(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1491
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1492
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1493
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1494
    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->access$2600(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1495
    iget v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    .line 1496
    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->access$2800()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->getNoticelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1499
    :cond_7
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->noticelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;->access$2600(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeNoticelist(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1764
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1765
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1766
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    .line 1770
    :goto_0
    return-object p0

    .line 1768
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setNewnotices(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1600
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    .line 1601
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->newnotices_:I

    .line 1602
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    .line 1603
    return-object p0
.end method

.method public setNoticelist(ILcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1672
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1673
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->build()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1674
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    .line 1679
    :goto_0
    return-object p0

    .line 1676
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->build()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setNoticelist(ILcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1656
    if-nez p2, :cond_0

    .line 1657
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1659
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1660
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1661
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    .line 1665
    :goto_0
    return-object p0

    .line 1663
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setTotal(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1575
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->bitField0_:I

    .line 1576
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->total_:I

    .line 1577
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelist$Builder;->onChanged()V

    .line 1578
    return-object p0
.end method
