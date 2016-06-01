.class public Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;
.super Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao;
.source "UserQuestionDao.java"

# interfaces
.implements Lcom/oppo/tribune/provider/forum/Forum2$UserQuestionTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao",
        "<",
        "Lcom/oppo/tribune/parse/UserThread;",
        ">;",
        "Lcom/oppo/tribune/provider/forum/Forum2$UserQuestionTable;"
    }
.end annotation


# static fields
.field public static final NOTIFIED_NO:I = 0x0

.field public static final NOTIFIED_YES:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const-class v0, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/provider/forum/dao/PrimeTableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 38
    return-void
.end method


# virtual methods
.method public contentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public delete(J)I
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 170
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 171
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method protected newInsertValues(Lcom/oppo/tribune/parse/UserThread;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lcom/oppo/tribune/parse/UserThread;

    .prologue
    .line 86
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "page"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getPage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    const-string v1, "tid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getTid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    const-string v1, "fid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getFid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    const-string v1, "typeid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getTypeId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v1, "author"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "authorid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getAuthorId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    const-string v1, "subject"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "dateline"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getDateline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "lastpost"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getLastpost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "lastposter"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getLastposter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "views"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getViews()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v1, "replies"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getReplies()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v1, "invisible"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getInvisibile()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v1, "displayorder"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getDisplayOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v1, "attachment"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getAttachment()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v1, "forumname"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getForumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "android_subject"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getAndroidSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "android_summary"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getAndroidSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "has_notified"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getNotified()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    return-object v0
.end method

.method protected bridge synthetic newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/oppo/tribune/parse/UserThread;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->newInsertValues(Lcom/oppo/tribune/parse/UserThread;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/parse/UserThread;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 57
    new-instance v0, Lcom/oppo/tribune/parse/UserThread;

    invoke-direct {v0}, Lcom/oppo/tribune/parse/UserThread;-><init>()V

    .line 59
    .local v0, "item":Lcom/oppo/tribune/parse/UserThread;
    const-string v1, "page"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setPage(I)V

    .line 60
    const-string v1, "uid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/parse/UserThread;->setUid(J)V

    .line 61
    const-string v1, "tid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/parse/UserThread;->setTid(J)V

    .line 62
    const-string v1, "fid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setFid(I)V

    .line 63
    const-string v1, "typeid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setTypeId(I)V

    .line 64
    const-string v1, "author"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setAuthor(Ljava/lang/String;)V

    .line 65
    const-string v1, "authorid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/parse/UserThread;->setAuthorId(J)V

    .line 66
    const-string v1, "subject"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setSubject(Ljava/lang/String;)V

    .line 67
    const-string v1, "dateline"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setDateline(Ljava/lang/String;)V

    .line 68
    const-string v1, "lastpost"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setLastpost(Ljava/lang/String;)V

    .line 69
    const-string v1, "lastposter"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setLastposter(Ljava/lang/String;)V

    .line 70
    const-string v1, "views"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setViews(I)V

    .line 71
    const-string v1, "replies"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setReplies(I)V

    .line 72
    const-string v1, "invisible"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setInvisibile(I)V

    .line 73
    const-string v1, "displayorder"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setDisplayOrder(I)V

    .line 74
    const-string v1, "attachment"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setAttachment(I)V

    .line 75
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setId(I)V

    .line 76
    const-string v1, "forumname"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setForumName(Ljava/lang/String;)V

    .line 77
    const-string v1, "android_subject"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setAndroidSubject(Ljava/lang/String;)V

    .line 78
    const-string v1, "android_summary"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setAndroidSummary(Ljava/lang/String;)V

    .line 79
    const-string v1, "has_notified"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setNotified(I)V

    .line 81
    return-object v0
.end method

.method public bridge synthetic newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/parse/UserThread;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateRecord(Lcom/oppo/tribune/parse/UserThread;Lcom/oppo/tribune/parse/UserThread;)V
    .locals 1
    .param p1, "newRecord"    # Lcom/oppo/tribune/parse/UserThread;
    .param p2, "oldRecord"    # Lcom/oppo/tribune/parse/UserThread;

    .prologue
    .line 115
    invoke-virtual {p2}, Lcom/oppo/tribune/parse/UserThread;->getNotified()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/UserThread;->setNotified(I)V

    .line 116
    return-void
.end method

.method protected bridge synthetic onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/oppo/tribune/parse/UserThread;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oppo/tribune/parse/UserThread;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->onUpdateRecord(Lcom/oppo/tribune/parse/UserThread;Lcom/oppo/tribune/parse/UserThread;)V

    return-void
.end method

.method public primeQuery(J)Landroid/database/Cursor;
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 158
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 159
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->primeQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->PROJECTION:[Ljava/lang/String;

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
    .line 135
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 136
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public query(JI)Ljava/util/List;
    .locals 3
    .param p1, "uid"    # J
    .param p3, "notify"    # I
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
    .line 141
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 142
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    const-string v2, "has_notified"

    invoke-virtual {v0, v2, p3}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;

    .line 143
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected queryRecordCondition(Lcom/oppo/tribune/parse/UserThread;)Ljava/lang/String;
    .locals 4
    .param p1, "newRecord"    # Lcom/oppo/tribune/parse/UserThread;

    .prologue
    .line 120
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getUid()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 121
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    const-string v1, "tid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getTid()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;J)Lcom/oppo/tribune/provider/Condition;

    .line 122
    const-string v1, "fid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/UserThread;->getFid()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;J)Lcom/oppo/tribune/provider/Condition;

    .line 123
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/oppo/tribune/parse/UserThread;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->queryRecordCondition(Lcom/oppo/tribune/parse/UserThread;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size(J)I
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 164
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 165
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->size(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "page ASC, _id ASC"

    return-object v0
.end method

.method public update(Lcom/oppo/tribune/parse/UserThread;I)Z
    .locals 6
    .param p1, "thread"    # Lcom/oppo/tribune/parse/UserThread;
    .param p2, "notify"    # I

    .prologue
    .line 148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "has_notified"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->queryRecordCondition(Lcom/oppo/tribune/parse/UserThread;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "whereClause":Ljava/lang/String;
    iget-object v3, p0, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 152
    :try_start_0
    iget-object v2, p0, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->contentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 153
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 154
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public update(Ljava/util/List;JI)Z
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
    .line 127
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/parse/UserThread;>;"
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p2, p3}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 128
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    const-string v2, "page"

    invoke-virtual {v0, v2, p4}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;

    .line 129
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserQuestionDao;->update(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method
