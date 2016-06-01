.class public Lcom/oppo/tribune/provider/forum/dao/UserCollDao;
.super Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao;
.source "UserCollDao.java"

# interfaces
.implements Lcom/oppo/tribune/provider/forum/Forum2$UserCollTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao",
        "<",
        "Lcom/oppo/tribune/parse/UserCollPost;",
        ">;",
        "Lcom/oppo/tribune/provider/forum/Forum2$UserCollTable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-class v0, Lcom/oppo/tribune/provider/forum/dao/UserCollDao;

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public contentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/UserCollDao;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public delete(J)I
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 127
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 128
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserCollDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public deleteByDurl(Ljava/lang/String;)I
    .locals 3
    .param p1, "durl"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "durl"

    invoke-direct {v0, v2, p1}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserCollDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

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
            "Lcom/oppo/tribune/parse/UserCollPost;",
            ">;JI)Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/parse/UserCollPost;>;"
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p2, p3}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 96
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    const-string v2, "page"

    invoke-virtual {v0, v2, p4}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;

    .line 97
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserCollDao;->insert(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method protected newInsertValues(Lcom/oppo/tribune/parse/UserCollPost;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lcom/oppo/tribune/parse/UserCollPost;

    .prologue
    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 70
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "page"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserCollPost;->getPage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserCollPost;->getUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserCollPost;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserCollPost;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "description"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserCollPost;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "dateline"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserCollPost;->getDateline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "durl"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserCollPost;->getDurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "dtitle"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserCollPost;->getDtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object v0
.end method

.method protected bridge synthetic newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/oppo/tribune/parse/UserCollPost;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/UserCollDao;->newInsertValues(Lcom/oppo/tribune/parse/UserCollPost;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/parse/UserCollPost;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 52
    new-instance v0, Lcom/oppo/tribune/parse/UserCollPost;

    invoke-direct {v0}, Lcom/oppo/tribune/parse/UserCollPost;-><init>()V

    .line 54
    .local v0, "item":Lcom/oppo/tribune/parse/UserCollPost;
    const-string v1, "page"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserCollPost;->setPage(I)V

    .line 55
    const-string v1, "uid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/parse/UserCollPost;->setUid(J)V

    .line 56
    const-string v1, "url"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserCollPost;->setUrl(Ljava/lang/String;)V

    .line 57
    const-string v1, "title"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserCollPost;->setTitle(Ljava/lang/String;)V

    .line 58
    const-string v1, "description"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserCollPost;->setDescription(Ljava/lang/String;)V

    .line 59
    const-string v1, "dateline"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserCollPost;->setDateline(Ljava/lang/String;)V

    .line 60
    const-string v1, "durl"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserCollPost;->setDurl(Ljava/lang/String;)V

    .line 61
    const-string v1, "dtitle"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserCollPost;->setDtitle(Ljava/lang/String;)V

    .line 63
    return-object v0
.end method

.method public bridge synthetic newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/UserCollDao;->newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/parse/UserCollPost;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateRecord(Lcom/oppo/tribune/parse/UserCollPost;Lcom/oppo/tribune/parse/UserCollPost;)V
    .locals 0
    .param p1, "newRecord"    # Lcom/oppo/tribune/parse/UserCollPost;
    .param p2, "oldRecord"    # Lcom/oppo/tribune/parse/UserCollPost;

    .prologue
    .line 85
    return-void
.end method

.method protected bridge synthetic onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/oppo/tribune/parse/UserCollPost;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oppo/tribune/parse/UserCollPost;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/UserCollDao;->onUpdateRecord(Lcom/oppo/tribune/parse/UserCollPost;Lcom/oppo/tribune/parse/UserCollPost;)V

    return-void
.end method

.method public primeQuery(J)Landroid/database/Cursor;
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 115
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 116
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserCollDao;->primeQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/UserCollDao;->PROJECTION:[Ljava/lang/String;

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
            "Lcom/oppo/tribune/parse/UserCollPost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 103
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserCollDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

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
            "Lcom/oppo/tribune/parse/UserCollPost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 109
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    const-string v2, "page"

    invoke-virtual {v0, v2, p3}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;

    .line 110
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserCollDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected queryRecordCondition(Lcom/oppo/tribune/parse/UserCollPost;)Ljava/lang/String;
    .locals 4
    .param p1, "newRecord"    # Lcom/oppo/tribune/parse/UserCollPost;

    .prologue
    .line 89
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserCollPost;->getUid()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 90
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserCollPost;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    .line 91
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/oppo/tribune/parse/UserCollPost;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/UserCollDao;->queryRecordCondition(Lcom/oppo/tribune/parse/UserCollPost;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size(J)I
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 121
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 122
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserCollDao;->size(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "page ASC,_id ASC"

    return-object v0
.end method
