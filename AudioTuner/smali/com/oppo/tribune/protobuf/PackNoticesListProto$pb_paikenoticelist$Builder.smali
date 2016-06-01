.class public final Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PackNoticesListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelistOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;",
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;",
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private noticelist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;",
            ">;"
        }
    .end annotation
.end field

.field private page_:I

.field private perpage_:I

.field private total_:I

.field private userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private userlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1276
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1539
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1752
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    .line 1277
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->maybeForceBuilderInitialization()V

    .line 1278
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1281
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1539
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1752
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    .line 1282
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->maybeForceBuilderInitialization()V

    .line 1283
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PackNoticesListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$1;

    .prologue
    .line 1262
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1262
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1

    .prologue
    .line 1262
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->create()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    .line 1344
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1345
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1348
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1

    .prologue
    .line 1293
    new-instance v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;-><init>()V

    return-object v0
.end method

.method private ensureNoticelistIsMutable()V
    .locals 2

    .prologue
    .line 1543
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1544
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1546
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1548
    :cond_0
    return-void
.end method

.method private ensureUserlistIsMutable()V
    .locals 2

    .prologue
    .line 1756
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1757
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    .line 1759
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1761
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1267
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenoticelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->access$1500()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;",
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;",
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1741
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1742
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1748
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1742
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUserlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1949
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    .line 1955
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1949
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1286
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getNoticelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1288
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getUserlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1290
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllNoticelist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;"
        }
    .end annotation

    .prologue
    .line 1666
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1667
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1668
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1669
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1673
    :goto_0
    return-object p0

    .line 1671
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllUserlist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;"
        }
    .end annotation

    .prologue
    .line 1875
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1876
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureUserlistIsMutable()V

    .line 1877
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1878
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1882
    :goto_0
    return-object p0

    .line 1880
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addNoticelist(ILcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1654
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1655
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->build()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1656
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1661
    :goto_0
    return-object p0

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->build()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addNoticelist(ILcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1626
    if-nez p2, :cond_0

    .line 1627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1629
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1630
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1631
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1635
    :goto_0
    return-object p0

    .line 1633
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addNoticelist(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1641
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1642
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->build()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1643
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1647
    :goto_0
    return-object p0

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->build()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addNoticelist(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1610
    if-nez p1, :cond_0

    .line 1611
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1613
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1614
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1615
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1619
    :goto_0
    return-object p0

    .line 1617
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addNoticelistBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 2

    .prologue
    .line 1721
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getNoticelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    return-object v0
.end method

.method public addNoticelistBuilder(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1729
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getNoticelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    return-object v0
.end method

.method public addUserlist(ILcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1864
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureUserlistIsMutable()V

    .line 1865
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->build()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1866
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1870
    :goto_0
    return-object p0

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->build()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserlist(ILcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1836
    if-nez p2, :cond_0

    .line 1837
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1839
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureUserlistIsMutable()V

    .line 1840
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1841
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1845
    :goto_0
    return-object p0

    .line 1843
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserlist(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1851
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureUserlistIsMutable()V

    .line 1852
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->build()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1853
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1857
    :goto_0
    return-object p0

    .line 1855
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->build()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserlist(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1821
    if-nez p1, :cond_0

    .line 1822
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1824
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureUserlistIsMutable()V

    .line 1825
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1826
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1830
    :goto_0
    return-object p0

    .line 1828
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserlistBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 1930
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getUserlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    return-object v0
.end method

.method public addUserlistBuilder(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1937
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getUserlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->build()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->build()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 2

    .prologue
    .line 1334
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    .line 1335
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1336
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1338
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 5

    .prologue
    .line 1352
    new-instance v1, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;-><init>(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;Lcom/oppo/tribune/protobuf/PackNoticesListProto$1;)V

    .line 1354
    .local v1, "result":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1355
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1356
    .local v2, "to_bitField0_":I
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_5

    .line 1357
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1358
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1360
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1362
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2202(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;Ljava/util/List;)Ljava/util/List;

    .line 1366
    :goto_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_6

    .line 1367
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1368
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    .line 1370
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1372
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2302(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;Ljava/util/List;)Ljava/util/List;

    .line 1376
    :goto_1
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1377
    or-int/lit8 v2, v2, 0x1

    .line 1379
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->page_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->page_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2402(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;I)I

    .line 1380
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1381
    or-int/lit8 v2, v2, 0x2

    .line 1383
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->perpage_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->perpage_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2502(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;I)I

    .line 1384
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1385
    or-int/lit8 v2, v2, 0x4

    .line 1387
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->total_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->total_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2602(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;I)I

    .line 1388
    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2702(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;I)I

    .line 1389
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onBuilt()V

    .line 1390
    return-object v1

    .line 1364
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2202(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 1374
    :cond_6
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2302(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;Ljava/util/List;)Ljava/util/List;

    goto :goto_1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->clear()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->clear()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->clear()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->clear()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1297
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1298
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1300
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1304
    :goto_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1305
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    .line 1306
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1310
    :goto_1
    iput v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->page_:I

    .line 1311
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1312
    iput v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->perpage_:I

    .line 1313
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1314
    iput v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->total_:I

    .line 1315
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1316
    return-object p0

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0

    .line 1308
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1
.end method

.method public clearNoticelist()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1678
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1679
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1680
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1684
    :goto_0
    return-object p0

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPage()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1

    .prologue
    .line 1977
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1978
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->page_:I

    .line 1979
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1980
    return-object p0
.end method

.method public clearPerpage()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1

    .prologue
    .line 2002
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 2003
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->perpage_:I

    .line 2004
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 2005
    return-object p0
.end method

.method public clearTotal()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1

    .prologue
    .line 2027
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 2028
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->total_:I

    .line 2029
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 2030
    return-object p0
.end method

.method public clearUserlist()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1887
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    .line 1888
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1889
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1893
    :goto_0
    return-object p0

    .line 1891
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->clone()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->clone()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->clone()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->clone()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->clone()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 2

    .prologue
    .line 1320
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->create()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

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
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->clone()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;
    .locals 1

    .prologue
    .line 1329
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1324
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getNoticelist(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1571
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    .line 1573
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    goto :goto_0
.end method

.method public getNoticelistBuilder(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1700
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getNoticelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    return-object v0
.end method

.method public getNoticelistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1737
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getNoticelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNoticelistCount()I
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1564
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

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
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1556
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getNoticelistOrBuilder(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticeOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1706
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticeOrBuilder;

    .line 1708
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticeOrBuilder;

    goto :goto_0
.end method

.method public getNoticelistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1716
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 1966
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->page_:I

    return v0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 1991
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->perpage_:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 2016
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->total_:I

    return v0
.end method

.method public getUserlist(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .line 1786
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    goto :goto_0
.end method

.method public getUserlistBuilder(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1909
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getUserlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    return-object v0
.end method

.method public getUserlistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1944
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getUserlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserlistCount()I
    .locals 1

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1777
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getUserlistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1769
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserlistOrBuilder(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1915
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;

    .line 1917
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;

    goto :goto_0
.end method

.method public getUserlistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1925
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasPage()Z
    .locals 2

    .prologue
    .line 1962
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

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

.method public hasPerpage()Z
    .locals 2

    .prologue
    .line 1987
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

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

.method public hasTotal()Z
    .locals 2

    .prologue
    .line 2012
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1271
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto;->internal_static_pb_paikenoticelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto;->access$1600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 1472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getNoticelistCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1473
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getNoticelist(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1475
    const/4 v1, 0x0

    .line 1478
    :goto_1
    return v1

    .line 1472
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1478
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
    .line 1262
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1262
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

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
    .line 1262
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

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
    .line 1262
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1262
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

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
    .line 1262
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1485
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1488
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1489
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1495
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1497
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1498
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1499
    :goto_1
    return-object p0

    .line 1491
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1492
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    goto :goto_1

    .line 1504
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;->newBuilder()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    move-result-object v0

    .line 1506
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1507
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->addNoticelist(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    goto :goto_0

    .line 1511
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;
    :sswitch_2
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    .line 1513
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1514
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->addUserlist(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    goto :goto_0

    .line 1518
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1519
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->page_:I

    goto :goto_0

    .line 1523
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1524
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->perpage_:I

    goto :goto_0

    .line 1528
    :sswitch_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1529
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->total_:I

    goto :goto_0

    .line 1489
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1394
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    if-eqz v0, :cond_0

    .line 1395
    check-cast p1, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    move-result-object p0

    .line 1398
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    :goto_0
    return-object p0

    .line 1397
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 3
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    .prologue
    const/4 v1, 0x0

    .line 1404
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1468
    :goto_0
    return-object p0

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_7

    .line 1408
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1409
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1410
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1411
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1416
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1433
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_b

    .line 1434
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2300(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1435
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1436
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2300(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    .line 1437
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1442
    :goto_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1458
    :cond_2
    :goto_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->hasPage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1459
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->getPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->setPage(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    .line 1461
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->hasPerpage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1462
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->getPerpage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->setPerpage(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    .line 1464
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->hasTotal()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1465
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->getTotal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->setTotal(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;

    .line 1467
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1413
    :cond_6
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1414
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1419
    :cond_7
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1420
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1421
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1422
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1423
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    .line 1424
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1425
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2800()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getNoticelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_5

    .line 1428
    :cond_9
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->noticelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2200(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 1439
    :cond_a
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureUserlistIsMutable()V

    .line 1440
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2300(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 1445
    :cond_b
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2300(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1446
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1447
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1448
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1449
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2300(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    .line 1450
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1451
    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2900()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->getUserlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_c
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    .line 1454
    :cond_d
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->userlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;->access$2300(Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4
.end method

.method public removeNoticelist(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1689
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1690
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1691
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1695
    :goto_0
    return-object p0

    .line 1693
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeUserlist(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1898
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureUserlistIsMutable()V

    .line 1899
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1900
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1904
    :goto_0
    return-object p0

    .line 1902
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setNoticelist(ILcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1597
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1598
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->build()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1599
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1604
    :goto_0
    return-object p0

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice$Builder;->build()Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setNoticelist(ILcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenotice;

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1581
    if-nez p2, :cond_0

    .line 1582
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1584
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureNoticelistIsMutable()V

    .line 1585
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1586
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1590
    :goto_0
    return-object p0

    .line 1588
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->noticelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPage(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1970
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1971
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->page_:I

    .line 1972
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1973
    return-object p0
.end method

.method public setPerpage(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1995
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 1996
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->perpage_:I

    .line 1997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1998
    return-object p0
.end method

.method public setTotal(I)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2020
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->bitField0_:I

    .line 2021
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->total_:I

    .line 2022
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 2023
    return-object p0
.end method

.method public setUserlist(ILcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1809
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureUserlistIsMutable()V

    .line 1810
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->build()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1811
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1815
    :goto_0
    return-object p0

    .line 1813
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->build()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setUserlist(ILcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1793
    if-nez p2, :cond_0

    .line 1794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1796
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->ensureUserlistIsMutable()V

    .line 1797
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1798
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->onChanged()V

    .line 1802
    :goto_0
    return-object p0

    .line 1800
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackNoticesListProto$pb_paikenoticelist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
