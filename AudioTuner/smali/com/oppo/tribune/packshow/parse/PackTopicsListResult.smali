.class public Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;
.super Ljava/lang/Object;
.source "PackTopicsListResult.java"


# instance fields
.field private mCoverTopic:Z

.field private mTopicPostResult:Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

.field private mTopicsResult:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;


# direct methods
.method private constructor <init>(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;)V
    .locals 1
    .param p1, "result"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mCoverTopic:Z

    .line 46
    iput-object p1, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mTopicPostResult:Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    .line 47
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;Z)V
    .locals 1
    .param p1, "topics"    # Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;
    .param p2, "value"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mCoverTopic:Z

    .line 40
    iput-object p1, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mTopicsResult:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    .line 41
    iput-boolean p2, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mCoverTopic:Z

    .line 42
    return-void
.end method

.method public static insertDatabase(Landroid/content/Context;Ljava/util/List;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/TopicEntity;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/TopicEntity;>;"
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "dao":Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;
    invoke-virtual {v0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;->insert(Ljava/util/List;I)Z

    move-result v1

    return v1
.end method

.method public static parse(Landroid/content/Context;)Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http://ddinterface2.oneplus.cn:8000/topic/topiclist"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v3, "?page="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v3, "&perpage="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5, v5}, Lcom/oppo/tribune/util/HttpUtils;->parseConnection(Landroid/content/Context;Ljava/lang/String;ZZ)[B

    move-result-object v0

    .line 146
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    :try_start_0
    new-instance v3, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->parseFrom([B)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;-><init>(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;Z)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-object v3

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .line 155
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parse(Landroid/content/Context;I)Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I

    .prologue
    const/4 v5, 0x0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http://ddinterface2.oneplus.cn:8000/topic/topiclist"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v3, "?page="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    const-string v3, "&perpage="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5, v5}, Lcom/oppo/tribune/util/HttpUtils;->parseConnection(Landroid/content/Context;Ljava/lang/String;ZZ)[B

    move-result-object v0

    .line 123
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    :try_start_0
    new-instance v3, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->parseFrom([B)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;-><init>(Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;Z)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-object v3

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .line 132
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parseList(Landroid/content/Context;)Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 160
    const-string v2, "http://ddinterface2.oneplus.cn:8000/topic/topicpost"

    invoke-static {p0, v2, v3, v3}, Lcom/oppo/tribune/util/HttpUtils;->parseConnection(Landroid/content/Context;Ljava/lang/String;ZZ)[B

    move-result-object v0

    .line 162
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    :try_start_0
    new-instance v2, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->parseFrom([B)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;-><init>(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-object v2

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .line 171
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFirstTopic()Lcom/oppo/tribune/protobuf/info/TopicEntity;
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->getTopicsList()Ljava/util/List;

    move-result-object v0

    .line 51
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/TopicEntity;>;"
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x0

    .line 55
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/protobuf/info/TopicEntity;

    goto :goto_0
.end method

.method public getPostTopicsList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/TopicEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v5, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mTopicPostResult:Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    if-nez v5, :cond_1

    .line 113
    :cond_0
    return-object v3

    .line 94
    :cond_1
    iget-object v5, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mTopicPostResult:Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;

    invoke-virtual {v5}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_list;->getTopicPostListList()Ljava/util/List;

    move-result-object v4

    .line 96
    .local v4, "preList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;>;"
    invoke-static {v4}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 101
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/TopicEntity;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    .line 102
    .local v2, "item":Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    if-eqz v2, :cond_2

    .line 106
    new-instance v0, Lcom/oppo/tribune/protobuf/info/TopicEntity;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/TopicEntity;-><init>()V

    .line 107
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/TopicEntity;
    invoke-virtual {v2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getId()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->setId(J)V

    .line 108
    invoke-virtual {v2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->setTitle(Ljava/lang/String;)V

    .line 110
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getTopicsList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/TopicEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v5, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mTopicsResult:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    if-nez v5, :cond_1

    .line 86
    :cond_0
    return-object v2

    .line 63
    :cond_1
    iget-object v5, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mTopicsResult:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    invoke-virtual {v5}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getTopiclistList()Ljava/util/List;

    move-result-object v3

    .line 65
    .local v3, "preList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;>;"
    invoke-static {v3}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 69
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 70
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/TopicEntity;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;

    .line 71
    .local v4, "topic":Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
    if-eqz v4, :cond_2

    .line 75
    new-instance v0, Lcom/oppo/tribune/protobuf/info/TopicEntity;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/TopicEntity;-><init>()V

    .line 76
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/TopicEntity;
    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getId()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->setId(J)V

    .line 77
    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->setTitle(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->setDesc(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getPic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->setPic(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;->getPic1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->setPic1(Ljava/lang/String;)V

    .line 81
    iget-boolean v5, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mCoverTopic:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->setPage(I)V

    .line 83
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public hasMore()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 176
    const/4 v4, 0x0

    .line 177
    .local v4, "result":Z
    iget-object v5, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mTopicsResult:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    if-eqz v5, :cond_0

    .line 178
    iget-object v5, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mTopicsResult:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    invoke-virtual {v5}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getPerpage()I

    move-result v5

    int-to-double v2, v5

    .line 179
    .local v2, "perpage":D
    iget-object v5, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mTopicsResult:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    invoke-virtual {v5}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getTotal()I

    move-result v5

    int-to-double v6, v5

    .line 180
    .local v6, "total":D
    cmpl-double v5, v2, v12

    if-lez v5, :cond_0

    .line 181
    div-double v10, v6, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    .line 182
    .local v8, "totalPage":D
    iget-object v5, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mTopicsResult:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    invoke-virtual {v5}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getPage()I

    move-result v5

    int-to-double v0, v5

    .line 183
    .local v0, "currentPage":D
    cmpl-double v5, v0, v12

    if-lez v5, :cond_1

    cmpl-double v5, v8, v0

    if-lez v5, :cond_1

    const/4 v4, 0x1

    .line 187
    .end local v0    # "currentPage":D
    .end local v2    # "perpage":D
    .end local v6    # "total":D
    .end local v8    # "totalPage":D
    :cond_0
    :goto_0
    return v4

    .line 183
    .restart local v0    # "currentPage":D
    .restart local v2    # "perpage":D
    .restart local v6    # "total":D
    .restart local v8    # "totalPage":D
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public insertDatabase(Landroid/content/Context;Ljava/util/List;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/TopicEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/TopicEntity;>;"
    const/4 v0, 0x0

    .line 196
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mCoverTopic:Z

    if-eqz v1, :cond_0

    .line 197
    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->insertDatabase(Landroid/content/Context;Ljava/util/List;I)Z

    move-result v0

    .line 201
    :goto_0
    return v0

    .line 199
    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->insertDatabase(Landroid/content/Context;Ljava/util/List;I)Z

    move-result v0

    goto :goto_0
.end method

.method public isOperSucc()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mTopicsResult:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mTopicsResult:Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclist;->getPerpage()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDatabase(Landroid/content/Context;Ljava/util/List;I)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/TopicEntity;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/TopicEntity;>;"
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;

    invoke-direct {v0, p1}, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, "dao":Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;
    iget-boolean v1, p0, Lcom/oppo/tribune/packshow/parse/PackTopicsListResult;->mCoverTopic:Z

    if-eqz v1, :cond_0

    const/4 p3, 0x0

    .end local p3    # "page":I
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;->update(Ljava/util/List;I)Z

    move-result v1

    return v1
.end method
