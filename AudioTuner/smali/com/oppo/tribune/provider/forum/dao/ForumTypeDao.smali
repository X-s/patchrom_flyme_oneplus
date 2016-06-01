.class public Lcom/oppo/tribune/provider/forum/dao/ForumTypeDao;
.super Lcom/oppo/tribune/provider/forum/dao/TableDao;
.source "ForumTypeDao.java"

# interfaces
.implements Lcom/oppo/tribune/provider/forum/Forum2$ForumTypeTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/provider/forum/dao/TableDao",
        "<",
        "Lcom/oppo/tribune/parse/ForumType;",
        ">;",
        "Lcom/oppo/tribune/provider/forum/Forum2$ForumTypeTable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v0, Lcom/oppo/tribune/provider/forum/dao/ForumTypeDao;

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 36
    return-void
.end method


# virtual methods
.method public contentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/ForumTypeDao;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected newInsertValues(Lcom/oppo/tribune/parse/ForumType;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lcom/oppo/tribune/parse/ForumType;

    .prologue
    .line 104
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "groupid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/ForumType;->getGroupId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v1, "forumid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/ForumType;->getForumId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string v1, "forumname"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/ForumType;->getForumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "subforumid"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/ForumType;->getSubForumId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string v1, "subforumname"

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/ForumType;->getSubForumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-object v0
.end method

.method protected bridge synthetic newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Lcom/oppo/tribune/parse/ForumType;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/ForumTypeDao;->newInsertValues(Lcom/oppo/tribune/parse/ForumType;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/parse/ForumType;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 91
    new-instance v0, Lcom/oppo/tribune/parse/ForumType;

    invoke-direct {v0}, Lcom/oppo/tribune/parse/ForumType;-><init>()V

    .line 93
    .local v0, "item":Lcom/oppo/tribune/parse/ForumType;
    const-string v1, "groupid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/ForumType;->setGroupId(I)V

    .line 94
    const-string v1, "forumid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/parse/ForumType;->setForumId(J)V

    .line 95
    const-string v1, "forumname"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/ForumType;->setForumName(Ljava/lang/String;)V

    .line 96
    const-string v1, "subforumid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/parse/ForumType;->setSubForumId(J)V

    .line 97
    const-string v1, "subforumname"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/ForumType;->setSubForumName(Ljava/lang/String;)V

    .line 99
    return-object v0
.end method

.method protected bridge synthetic newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/ForumTypeDao;->newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/parse/ForumType;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateRecord(Lcom/oppo/tribune/parse/ForumType;Lcom/oppo/tribune/parse/ForumType;)V
    .locals 0
    .param p1, "newRecord"    # Lcom/oppo/tribune/parse/ForumType;
    .param p2, "oldRecord"    # Lcom/oppo/tribune/parse/ForumType;

    .prologue
    .line 118
    return-void
.end method

.method protected bridge synthetic onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Lcom/oppo/tribune/parse/ForumType;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oppo/tribune/parse/ForumType;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/ForumTypeDao;->onUpdateRecord(Lcom/oppo/tribune/parse/ForumType;Lcom/oppo/tribune/parse/ForumType;)V

    return-void
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/ForumTypeDao;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public query()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/parse/ForumType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0, v0}, Lcom/oppo/tribune/provider/forum/dao/ForumTypeDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected queryRecordCondition(Lcom/oppo/tribune/parse/ForumType;)Ljava/lang/String;
    .locals 4
    .param p1, "newRecord"    # Lcom/oppo/tribune/parse/ForumType;

    .prologue
    .line 122
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/ForumType;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forumid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/ForumType;->getForumId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forumname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/tribune/parse/ForumType;->getForumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    .line 126
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Lcom/oppo/tribune/parse/ForumType;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/ForumTypeDao;->queryRecordCondition(Lcom/oppo/tribune/parse/ForumType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryType(I)Ljava/util/LinkedHashMap;
    .locals 9
    .param p1, "exceptGroupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/parse/ForumType;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "groupid<>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "whereClause":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/oppo/tribune/provider/forum/dao/ForumTypeDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 54
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/parse/ForumType;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 55
    .local v4, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/oppo/tribune/parse/ForumType;>;>;"
    invoke-static {v3}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 71
    :cond_0
    return-object v4

    .line 59
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/tribune/parse/ForumType;

    .line 60
    .local v2, "item":Lcom/oppo/tribune/parse/ForumType;
    invoke-virtual {v2}, Lcom/oppo/tribune/parse/ForumType;->getGroupId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 61
    .local v0, "groupId":Ljava/lang/Integer;
    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 62
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 66
    .local v5, "typeList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/parse/ForumType;>;"
    if-eqz v5, :cond_2

    .line 67
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public size(II)I
    .locals 4
    .param p1, "groupId"    # I
    .param p2, "forumId"    # I

    .prologue
    .line 43
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "groupid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forumid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    .line 45
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/ForumTypeDao;->size(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "groupid DESC"

    return-object v0
.end method
