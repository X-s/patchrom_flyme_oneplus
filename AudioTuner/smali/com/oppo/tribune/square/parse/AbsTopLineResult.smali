.class public abstract Lcom/oppo/tribune/square/parse/AbsTopLineResult;
.super Ljava/lang/Object;
.source "AbsTopLineResult.java"


# instance fields
.field private mFidType:J

.field private mPage:I

.field protected mPbResult:Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

.field protected mUserCollectionPbResult:Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;


# direct methods
.method protected constructor <init>(JILcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)V
    .locals 1
    .param p1, "fidType"    # J
    .param p3, "page"    # I
    .param p4, "pbResult"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p3, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mPage:I

    .line 29
    iput-object p4, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mPbResult:Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    .line 30
    iput-wide p1, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mFidType:J

    .line 31
    return-void
.end method

.method protected constructor <init>(JILcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;)V
    .locals 1
    .param p1, "fidType"    # J
    .param p3, "page"    # I
    .param p4, "pbResult"    # Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p3, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mPage:I

    .line 36
    iput-object p4, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mUserCollectionPbResult:Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;

    .line 37
    iput-wide p1, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mFidType:J

    .line 38
    return-void
.end method

.method private getFidType()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mFidType:J

    return-wide v0
.end method

.method private getImgInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "pbUrlList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;>;"
    invoke-static {p1}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    const/4 v1, 0x0

    .line 105
    :cond_0
    return-object v1

    .line 98
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    .line 100
    .local v3, "pbUrl":Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "origPic":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getThreadInfo(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .locals 4
    .param p1, "netEntity"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 71
    :cond_0
    new-instance v0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;-><init>()V

    .line 72
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setAuthor(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getAuthorid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setAuthorid(J)V

    .line 74
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getShareTime()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setDateline(J)V

    .line 75
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getFid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setFid(J)V

    .line 76
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setTid(J)V

    .line 77
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getLikeNum()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setPraise(J)V

    .line 78
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getIslike()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setIsLike(I)V

    .line 79
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setSubject(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setSummary(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->getPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setPage(I)V

    .line 82
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setFidType(J)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setSourceType(I)V

    .line 84
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setCommonForumName(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mPbResult:Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getPicurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setCommonPicUrl(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getCategoryId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setCategoryId(I)V

    .line 88
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDownloadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setDownloadNum(I)V

    goto :goto_0
.end method

.method private getUserCollectionServerEntryInfo(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;)Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;
    .locals 4
    .param p1, "data"    # Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    .line 160
    :cond_0
    new-instance v0, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;

    invoke-direct {v0}, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;-><init>()V

    .line 161
    .local v0, "bean":Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->getConfigId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->setConfigId_(J)V

    .line 162
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->setStatus_(I)V

    .line 163
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->getUpdateTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->setUpdateTime_(I)V

    goto :goto_0
.end method


# virtual methods
.method public getPage()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mPage:I

    return v0
.end method

.method public getPerPage()J
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mPbResult:Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mPbResult:Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getPerpage()I

    move-result v0

    int-to-long v0, v0

    .line 116
    :goto_0
    return-wide v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mUserCollectionPbResult:Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mUserCollectionPbResult:Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;->getPerpage()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 116
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected abstract getSoureType()I
.end method

.method public getThreadList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 49
    iget-object v5, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mPbResult:Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    if-nez v5, :cond_1

    .line 64
    :cond_0
    return-object v4

    .line 52
    :cond_1
    iget-object v5, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mPbResult:Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    invoke-virtual {v5}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getConfiglistList()Ljava/util/List;

    move-result-object v3

    .line 54
    .local v3, "pbList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;>;"
    invoke-static {v3}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v4, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    .line 59
    .local v2, "netEntity":Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    invoke-direct {p0, v2}, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->getThreadInfo(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    move-result-object v0

    .line 60
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    if-eqz v0, :cond_2

    .line 61
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mPbResult:Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mPbResult:Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->getTotal()I

    move-result v0

    int-to-long v0, v0

    .line 127
    :goto_0
    return-wide v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mUserCollectionPbResult:Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mUserCollectionPbResult:Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;->getTotal()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 127
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getUserCollectionServerEntryList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-object v5, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mUserCollectionPbResult:Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;

    if-nez v5, :cond_1

    .line 152
    :cond_0
    return-object v4

    .line 139
    :cond_1
    iget-object v5, p0, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->mUserCollectionPbResult:Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;

    invoke-virtual {v5}, Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;->getUserCollectionListList()Ljava/util/List;

    move-result-object v3

    .line 141
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;>;"
    invoke-static {v3}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 144
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v4, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    .line 146
    .local v1, "data":Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    new-instance v0, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;

    invoke-direct {v0}, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;-><init>()V

    .line 147
    .local v0, "bean":Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;
    invoke-direct {p0, v1}, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->getUserCollectionServerEntryInfo(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;)Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_2

    .line 149
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hasMore()Z
    .locals 4

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->getPerPage()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->getPage()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/oppo/tribune/square/parse/AbsTopLineResult;->getTotal()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
