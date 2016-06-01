.class public Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;
.super Lcom/oppo/tribune/provider/forum/dao/TableDao;
.source "SimpleThreadDao.java"

# interfaces
.implements Lcom/oppo/tribune/provider/forum/Forum2$SimpleThreadTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/provider/forum/dao/TableDao",
        "<",
        "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
        ">;",
        "Lcom/oppo/tribune/provider/forum/Forum2$SimpleThreadTable;"
    }
.end annotation


# instance fields
.field private mWhereClause:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceType"    # I
    .param p3, "fidType"    # J

    .prologue
    .line 43
    const-class v0, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 44
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "sourcetype"

    invoke-direct {v0, v1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    const-string v1, "fidtype"

    invoke-virtual {v0, v1, p3, p4}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;J)Lcom/oppo/tribune/provider/Condition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->mWhereClause:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public contentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public insert(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->mWhereClause:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->insert(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected newInsertValues(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "item"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 126
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "fidtype"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getFidType()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    const-string v2, "page"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getPage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v2, "author"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "authorid"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getAuthorid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v2, "groupid"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getGroupid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    const-string v2, "isfollowing"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getIsFollowing()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v2, "subject"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "summary"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v2, "dateline"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getDateline()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    const-string v2, "replies"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getReplies()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 138
    const-string v2, "attachment"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getAttachment()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    const-string v2, "tid"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    const-string v2, "fid"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getFid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    const-string v2, "views"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getViews()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    const-string v2, "praise"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getPraise()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    const-string v2, "islike"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getIsLike()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v2, "sourcetype"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSourceType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v2, "common_forumname"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getCommonForumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "common_picurl"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getCommonPicUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "category_id"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getCategoryId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v2, "download_num"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getDownloadNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    const-string v2, "local"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getLocal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    new-instance v0, Lcom/oppo/tribune/protobuf/info/FeedImgUrlListGson;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getFeedImgList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oppo/tribune/protobuf/info/FeedImgUrlListGson;-><init>(Ljava/util/List;)V

    .line 157
    .local v0, "listGson":Lcom/oppo/tribune/protobuf/info/FeedImgUrlListGson;
    const-string v2, "imgs"

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/info/FeedImgUrlListGson;->toJson(Lcom/oppo/tribune/protobuf/info/FeedImgUrlListGson;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-object v1
.end method

.method protected bridge synthetic newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->newInsertValues(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 69
    new-instance v1, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;-><init>()V

    .line 71
    .local v1, "item":Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    const-string v4, "fidtype"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setFidType(J)V

    .line 72
    const-string v4, "page"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setPage(I)V

    .line 73
    const-string v4, "author"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setAuthor(Ljava/lang/String;)V

    .line 74
    const-string v4, "authorid"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setAuthorid(J)V

    .line 75
    const-string v4, "groupid"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setGroupid(J)V

    .line 76
    const-string v4, "isfollowing"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setIsFollowing(I)V

    .line 77
    const-string v4, "subject"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setSubject(Ljava/lang/String;)V

    .line 78
    const-string v4, "summary"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setSummary(Ljava/lang/String;)V

    .line 79
    const-string v4, "dateline"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setDateline(J)V

    .line 80
    const-string v4, "replies"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setReplies(J)V

    .line 81
    const-string v4, "attachment"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setAttachment(J)V

    .line 82
    const-string v4, "tid"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setTid(J)V

    .line 83
    const-string v4, "fid"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setFid(J)V

    .line 84
    const-string v4, "views"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setViews(J)V

    .line 85
    const-string v4, "praise"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setPraise(J)V

    .line 86
    const-string v4, "islike"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setIsLike(I)V

    .line 87
    const-string v4, "sourcetype"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setSourceType(I)V

    .line 89
    const-string v4, "common_forumname"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setCommonForumName(Ljava/lang/String;)V

    .line 90
    const-string v4, "common_picurl"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setCommonPicUrl(Ljava/lang/String;)V

    .line 93
    const-string v4, "category_id"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setCategoryId(I)V

    .line 94
    const-string v4, "download_num"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setDownloadNum(I)V

    .line 95
    const-string v4, "local"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setLocal(I)V

    .line 98
    const-string v4, "imgs"

    invoke-static {p1, v4}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "jsonStr":Ljava/lang/String;
    invoke-static {v3}, Lcom/oppo/tribune/protobuf/info/FeedImgUrlListGson;->fromJson(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/info/FeedImgUrlListGson;

    move-result-object v2

    .line 100
    .local v2, "jsonEntity":Lcom/oppo/tribune/protobuf/info/FeedImgUrlListGson;
    const/4 v0, 0x0

    .line 101
    .local v0, "imgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v2}, Lcom/oppo/tribune/protobuf/info/FeedImgUrlListGson;->getImgUrlList()Ljava/util/List;

    move-result-object v0

    .line 104
    :cond_0
    invoke-virtual {v1, v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setFeedImgList(Ljava/util/List;)V

    .line 106
    return-object v1
.end method

.method protected bridge synthetic newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateRecord(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V
    .locals 0
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .param p2, "oldRecord"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 165
    return-void
.end method

.method protected bridge synthetic onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->onUpdateRecord(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    return-void
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public query()Ljava/util/List;
    .locals 2
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
    .line 54
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->mWhereClause:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryPage(I)Ljava/util/List;
    .locals 3
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "page"

    invoke-direct {v1, v2, p1}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    move-result-object v0

    .line 59
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected queryRecordCondition(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 169
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "sourcetype"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSourceType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    .line 171
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    const-string v1, "fidtype"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getFidType()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;J)Lcom/oppo/tribune/provider/Condition;

    .line 172
    const-string v1, "tid"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;J)Lcom/oppo/tribune/provider/Condition;

    .line 173
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->queryRecordCondition(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "page ASC,_id ASC"

    return-object v0
.end method

.method public update(Ljava/util/List;I)Z
    .locals 3
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    new-instance v1, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "page"

    invoke-direct {v1, v2, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    move-result-object v0

    .line 64
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->update(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
