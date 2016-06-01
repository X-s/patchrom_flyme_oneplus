.class public Lcom/oppo/tribune/provider/forum/dao/UserReplyDao;
.super Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao;
.source "UserReplyDao.java"

# interfaces
.implements Lcom/oppo/tribune/provider/forum/Forum2$UserReplyTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao",
        "<",
        "Lcom/oppo/tribune/parse/UserThread;",
        ">;",
        "Lcom/oppo/tribune/provider/forum/Forum2$UserReplyTable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-class v0, Lcom/oppo/tribune/provider/forum/dao/UserReplyDao;

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public contentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/UserReplyDao;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public delete(J)I
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 149
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 150
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserReplyDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public insert(Ljava/util/List;JI)Z
    .locals 4
    .param p2, "uid"    # J
    .param p4, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/parse/UserThread;",
            ">;JI)Z"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/parse/UserThread;>;"
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p2, p3}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 118
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    const-string v2, "page"

    invoke-virtual {v0, v2, p4}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;

    .line 119
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserReplyDao;->insert(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method protected newInsertValues(Lcom/oppo/tribune/parse/UserThread;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lcom/oppo/tribune/parse/UserThread;

    .prologue
    .line 78
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "page"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getPage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    const-string v1, "authorid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getAuthorId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    const-string v1, "tid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getTid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    const-string v1, "pid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    const-string v1, "fid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getFid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const-string v1, "invisible"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getInvisibile()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v1, "dateline"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getDateline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "message"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "subject"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "attachment"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getAttachment()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    const-string v1, "replies"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getReplies()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v1, "views"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getViews()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v1, "lastposter"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getLastposter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "lastpost"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getLastpost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "displayorder"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getDisplayOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v1, "forumname"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getForumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v0
.end method

.method protected bridge synthetic newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/oppo/tribune/parse/UserThread;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/UserReplyDao;->newInsertValues(Lcom/oppo/tribune/parse/UserThread;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/parse/UserThread;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 52
    new-instance v0, Lcom/oppo/tribune/parse/UserThread;

    invoke-direct {v0}, Lcom/oppo/tribune/parse/UserThread;-><init>()V

    .line 54
    .local v0, "item":Lcom/oppo/tribune/parse/UserThread;
    const-string v1, "page"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setPage(I)V

    .line 55
    const-string v1, "uid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/parse/UserThread;->setUid(J)V

    .line 56
    const-string v1, "authorid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/parse/UserThread;->setAuthorId(J)V

    .line 57
    const-string v1, "tid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/parse/UserThread;->setTid(J)V

    .line 58
    const-string v1, "pid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setPid(I)V

    .line 59
    const-string v1, "fid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setFid(I)V

    .line 60
    const-string v1, "invisible"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setInvisibile(I)V

    .line 61
    const-string v1, "dateline"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setDateline(Ljava/lang/String;)V

    .line 62
    const-string v1, "message"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setMessage(Ljava/lang/String;)V

    .line 63
    const-string v1, "subject"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setSubject(Ljava/lang/String;)V

    .line 64
    const-string v1, "attachment"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setAttachment(I)V

    .line 65
    const-string v1, "replies"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setReplies(I)V

    .line 66
    const-string v1, "views"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setViews(I)V

    .line 67
    const-string v1, "lastposter"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setLastposter(Ljava/lang/String;)V

    .line 68
    const-string v1, "lastpost"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setLastpost(Ljava/lang/String;)V

    .line 69
    const-string v1, "displayorder"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setDisplayOrder(I)V

    .line 70
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setId(I)V

    .line 71
    const-string v1, "forumname"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setForumName(Ljava/lang/String;)V

    .line 73
    return-object v0
.end method

.method public bridge synthetic newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/UserReplyDao;->newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/parse/UserThread;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateRecord(Lcom/oppo/tribune/parse/UserThread;Lcom/oppo/tribune/parse/UserThread;)V
    .locals 0
    .param p1, "newRecord"    # Lcom/oppo/tribune/parse/UserThread;
    .param p2, "oldRecord"    # Lcom/oppo/tribune/parse/UserThread;

    .prologue
    .line 105
    return-void
.end method

.method protected bridge synthetic onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/oppo/tribune/parse/UserThread;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oppo/tribune/parse/UserThread;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/UserReplyDao;->onUpdateRecord(Lcom/oppo/tribune/parse/UserThread;Lcom/oppo/tribune/parse/UserThread;)V

    return-void
.end method

.method public primeQuery(J)Landroid/database/Cursor;
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 137
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 138
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserReplyDao;->primeQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/UserReplyDao;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public query(J)Ljava/util/List;
    .locals 3
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/parse/UserThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 125
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserReplyDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public query(JI)Ljava/util/List;
    .locals 3
    .param p1, "uid"    # J
    .param p3, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/parse/UserThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 131
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    const-string v2, "page"

    invoke-virtual {v0, v2, p3}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;

    .line 132
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserReplyDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected queryRecordCondition(Lcom/oppo/tribune/parse/UserThread;)Ljava/lang/String;
    .locals 4
    .param p1, "newRecord"    # Lcom/oppo/tribune/parse/UserThread;

    .prologue
    .line 109
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getUid()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 110
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    const-string v1, "tid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getTid()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;J)Lcom/oppo/tribune/provider/Condition;

    .line 111
    const-string v1, "pid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;

    .line 112
    const-string v1, "fid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getFid()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;J)Lcom/oppo/tribune/provider/Condition;

    .line 113
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/oppo/tribune/parse/UserThread;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/UserReplyDao;->queryRecordCondition(Lcom/oppo/tribune/parse/UserThread;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size(J)I
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 143
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 144
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserReplyDao;->size(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "page ASC, _id ASC"

    return-object v0
.end method
