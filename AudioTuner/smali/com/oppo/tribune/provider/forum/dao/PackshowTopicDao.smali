.class public Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;
.super Lcom/oppo/tribune/provider/forum/dao/TableDao;
.source "PackshowTopicDao.java"

# interfaces
.implements Lcom/oppo/tribune/provider/forum/Forum2$PackshowTopicTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/provider/forum/dao/TableDao",
        "<",
        "Lcom/oppo/tribune/protobuf/info/TopicEntity;",
        ">;",
        "Lcom/oppo/tribune/provider/forum/Forum2$PackshowTopicTable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-class v0, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public contentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public deleAllExceptPage(I)I
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " <> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    .local v0, "con":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public insert(Ljava/util/List;I)Z
    .locals 3
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/TopicEntity;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/TopicEntity;>;"
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "page"

    invoke-direct {v0, v1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    .line 37
    .local v0, "con":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;->insert(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected newInsertValues(Lcom/oppo/tribune/protobuf/info/TopicEntity;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "entity"    # Lcom/oppo/tribune/protobuf/info/TopicEntity;

    .prologue
    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "desc"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "pic"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->getPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "pic1"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->getPic1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "page"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->getPage()I

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
    .line 28
    check-cast p1, Lcom/oppo/tribune/protobuf/info/TopicEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;->newInsertValues(Lcom/oppo/tribune/protobuf/info/TopicEntity;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/TopicEntity;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 77
    new-instance v0, Lcom/oppo/tribune/protobuf/info/TopicEntity;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/TopicEntity;-><init>()V

    .line 79
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/TopicEntity;
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->setId(J)V

    .line 80
    const-string v1, "title"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->setTitle(Ljava/lang/String;)V

    .line 81
    const-string v1, "desc"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->setDesc(Ljava/lang/String;)V

    .line 82
    const-string v1, "pic"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->setPic(Ljava/lang/String;)V

    .line 83
    const-string v1, "pic1"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->setPic1(Ljava/lang/String;)V

    .line 84
    const-string v1, "page"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->setPage(I)V

    .line 86
    return-object v0
.end method

.method protected bridge synthetic newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;->newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/TopicEntity;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateRecord(Lcom/oppo/tribune/protobuf/info/TopicEntity;Lcom/oppo/tribune/protobuf/info/TopicEntity;)V
    .locals 0
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/TopicEntity;
    .param p2, "oldRecord"    # Lcom/oppo/tribune/protobuf/info/TopicEntity;

    .prologue
    .line 116
    return-void
.end method

.method protected bridge synthetic onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/oppo/tribune/protobuf/info/TopicEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oppo/tribune/protobuf/info/TopicEntity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;->onUpdateRecord(Lcom/oppo/tribune/protobuf/info/TopicEntity;Lcom/oppo/tribune/protobuf/info/TopicEntity;)V

    return-void
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public queryExceptPage(I)Ljava/util/List;
    .locals 3
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/TopicEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " <> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    .local v0, "con":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryPage(I)Ljava/util/List;
    .locals 3
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/TopicEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "page"

    invoke-direct {v0, v1, p1}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    .line 47
    .local v0, "con":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected queryRecordCondition(Lcom/oppo/tribune/protobuf/info/TopicEntity;)Ljava/lang/String;
    .locals 6
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/TopicEntity;

    .prologue
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "page"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "con":Ljava/lang/String;
    new-instance v2, Lcom/oppo/tribune/provider/Condition;

    const-string v3, "id"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/TopicEntity;->getId()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v2, v0}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    move-result-object v1

    .line 109
    .local v1, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v1}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/oppo/tribune/protobuf/info/TopicEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;->queryRecordCondition(Lcom/oppo/tribune/protobuf/info/TopicEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "_id ASC"

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
            "Lcom/oppo/tribune/protobuf/info/TopicEntity;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/TopicEntity;>;"
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "page"

    invoke-direct {v0, v1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    .line 42
    .local v0, "con":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/PackshowTopicDao;->update(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
