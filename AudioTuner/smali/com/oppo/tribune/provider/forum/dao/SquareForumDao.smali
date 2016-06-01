.class public Lcom/oppo/tribune/provider/forum/dao/SquareForumDao;
.super Lcom/oppo/tribune/provider/forum/dao/TableDao;
.source "SquareForumDao.java"

# interfaces
.implements Lcom/oppo/tribune/provider/forum/Forum2$SquareForumTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/provider/forum/dao/TableDao",
        "<",
        "Lcom/oppo/tribune/protobuf/info/SquareForumInfo;",
        ">;",
        "Lcom/oppo/tribune/provider/forum/Forum2$SquareForumTable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-class v0, Lcom/oppo/tribune/provider/forum/dao/SquareForumDao;

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 21
    return-void
.end method


# virtual methods
.method public contentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/SquareForumDao;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public insert(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SquareForumInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SquareForumInfo;>;"
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0, v0}, Lcom/oppo/tribune/provider/forum/dao/SquareForumDao;->insert(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected newInsertValues(Lcom/oppo/tribune/protobuf/info/SquareForumInfo;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lcom/oppo/tribune/protobuf/info/SquareForumInfo;

    .prologue
    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "description"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v2, "ispost"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->isIspost()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v1, "icon_url"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->getPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "relateid"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->getRid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v1, "topic"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "topicid"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->getTopicid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v1, "position"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v1, "mobile"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->getMobile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-object v0

    .line 88
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/SquareForumDao;->newInsertValues(Lcom/oppo/tribune/protobuf/info/SquareForumInfo;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/SquareForumInfo;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    .line 65
    new-instance v0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;-><init>()V

    .line 67
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/SquareForumInfo;
    const-string v2, "title"

    invoke-static {p1, v2}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->setTitle(Ljava/lang/String;)V

    .line 68
    const-string v2, "description"

    invoke-static {p1, v2}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->setDesc(Ljava/lang/String;)V

    .line 69
    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->setId(I)V

    .line 70
    const-string v2, "ispost"

    invoke-static {p1, v2}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->setIspost(Z)V

    .line 71
    const-string v1, "icon_url"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->setPic(Ljava/lang/String;)V

    .line 72
    const-string v1, "relateid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->setRid(J)V

    .line 73
    const-string v1, "type"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->setType(I)V

    .line 74
    const-string v1, "topic"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->setTopic(Ljava/lang/String;)V

    .line 75
    const-string v1, "topicid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->setTopicid(I)V

    .line 76
    const-string v1, "position"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->setPosition(I)V

    .line 77
    const-string v1, "mobile"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->setMobile(Ljava/lang/String;)V

    .line 78
    return-object v0

    .line 70
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/SquareForumDao;->newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/SquareForumInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateRecord(Lcom/oppo/tribune/protobuf/info/SquareForumInfo;Lcom/oppo/tribune/protobuf/info/SquareForumInfo;)V
    .locals 0
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/SquareForumInfo;
    .param p2, "oldRecord"    # Lcom/oppo/tribune/protobuf/info/SquareForumInfo;

    .prologue
    .line 111
    return-void
.end method

.method protected bridge synthetic onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/SquareForumDao;->onUpdateRecord(Lcom/oppo/tribune/protobuf/info/SquareForumInfo;Lcom/oppo/tribune/protobuf/info/SquareForumInfo;)V

    return-void
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/SquareForumDao;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public query()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SquareForumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0, v0}, Lcom/oppo/tribune/provider/forum/dao/SquareForumDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public query(IJ)Ljava/util/List;
    .locals 4
    .param p1, "type"    # I
    .param p2, "rid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SquareForumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v1, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "type"

    invoke-direct {v1, v2, p1}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    const-string v2, "relateid"

    invoke-virtual {v1, v2, p2, p3}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;J)Lcom/oppo/tribune/provider/Condition;

    move-result-object v0

    .line 30
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/SquareForumDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryByPostion(ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "position"    # I
    .param p2, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SquareForumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "position"

    invoke-direct {v0, v2, p1}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    .line 35
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "whereClause":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile NOT LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/SquareForumDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected queryRecordCondition(Lcom/oppo/tribune/protobuf/info/SquareForumInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/SquareForumInfo;

    .prologue
    .line 102
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "id"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->getId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    .line 103
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;

    .line 104
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/SquareForumDao;->queryRecordCondition(Lcom/oppo/tribune/protobuf/info/SquareForumInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "_id ASC"

    return-object v0
.end method
