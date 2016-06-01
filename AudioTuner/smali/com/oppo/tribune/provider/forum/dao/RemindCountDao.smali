.class public Lcom/oppo/tribune/provider/forum/dao/RemindCountDao;
.super Lcom/oppo/tribune/provider/forum/dao/TableDao;
.source "RemindCountDao.java"

# interfaces
.implements Lcom/oppo/tribune/provider/forum/Forum2$RemindCountTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/provider/forum/dao/TableDao",
        "<",
        "Lcom/oppo/tribune/protobuf/info/RemindCountEntity;",
        ">;",
        "Lcom/oppo/tribune/provider/forum/Forum2$RemindCountTable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-class v0, Lcom/oppo/tribune/provider/forum/dao/RemindCountDao;

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public contentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/RemindCountDao;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected newInsertValues(Lcom/oppo/tribune/protobuf/info/RemindCountEntity;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "item"    # Lcom/oppo/tribune/protobuf/info/RemindCountEntity;

    .prologue
    .line 82
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "friend"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->getFriend()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    const-string v1, "visitor"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->getVisitor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v1, "square_remind"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->getSquareRemind()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v1, "pack_remind"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->getPackRemind()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v1, "pack_reply"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->getPackReply()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v1, "reply_count"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->getReplyCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v1, "coll_count"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->getCollCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    const-string v1, "ou_bi"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->getOuBi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v1, "follow_feed"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->getFollowFeed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v1, "followers"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->getFollowers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v1, "followings"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->getFollowings()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v1, "yin_fu"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->getYinfu()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v1, "sign_days"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->getSignDays()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v1, "sign_lasted"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->getSignLasted()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v1, "issign"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->getIsSign()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    return-object v0
.end method

.method protected bridge synthetic newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/RemindCountDao;->newInsertValues(Lcom/oppo/tribune/protobuf/info/RemindCountEntity;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/RemindCountEntity;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 59
    new-instance v0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;-><init>()V

    .line 61
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/RemindCountEntity;
    const-string v1, "friend"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->setFriend(I)V

    .line 62
    const-string v1, "visitor"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->setVisitor(I)V

    .line 63
    const-string v1, "square_remind"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->setSquareRemind(I)V

    .line 64
    const-string v1, "pack_remind"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->setPackRemind(I)V

    .line 65
    const-string v1, "pack_reply"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->setPackReply(I)V

    .line 66
    const-string v1, "reply_count"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->setReplyCount(I)V

    .line 67
    const-string v1, "coll_count"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->setCollCount(I)V

    .line 68
    const-string v1, "ou_bi"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->setOuBi(I)V

    .line 69
    const-string v1, "follow_feed"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->setFollowFeed(I)V

    .line 70
    const-string v1, "followers"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->setFollowers(I)V

    .line 71
    const-string v1, "followings"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->setFollowings(I)V

    .line 72
    const-string v1, "yin_fu"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->setYinfu(I)V

    .line 73
    const-string v1, "sign_days"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->setSignDays(I)V

    .line 74
    const-string v1, "sign_lasted"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->setSignLasted(I)V

    .line 75
    const-string v1, "issign"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->setIsSign(I)V

    .line 77
    return-object v0
.end method

.method protected bridge synthetic newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/RemindCountDao;->newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/RemindCountEntity;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateRecord(Lcom/oppo/tribune/protobuf/info/RemindCountEntity;Lcom/oppo/tribune/protobuf/info/RemindCountEntity;)V
    .locals 0
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/RemindCountEntity;
    .param p2, "oldRecord"    # Lcom/oppo/tribune/protobuf/info/RemindCountEntity;

    .prologue
    .line 112
    return-void
.end method

.method protected bridge synthetic onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/RemindCountDao;->onUpdateRecord(Lcom/oppo/tribune/protobuf/info/RemindCountEntity;Lcom/oppo/tribune/protobuf/info/RemindCountEntity;)V

    return-void
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/RemindCountDao;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public query()Lcom/oppo/tribune/protobuf/info/RemindCountEntity;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v1, v1}, Lcom/oppo/tribune/provider/forum/dao/RemindCountDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 35
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/RemindCountEntity;>;"
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;

    .line 39
    :cond_0
    return-object v1
.end method

.method protected queryRecordCondition(Lcom/oppo/tribune/protobuf/info/RemindCountEntity;)Ljava/lang/String;
    .locals 1
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/RemindCountEntity;

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/RemindCountDao;->queryRecordCondition(Lcom/oppo/tribune/protobuf/info/RemindCountEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "_id ASC"

    return-object v0
.end method
