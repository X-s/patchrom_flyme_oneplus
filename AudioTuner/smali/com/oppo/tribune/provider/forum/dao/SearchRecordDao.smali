.class public Lcom/oppo/tribune/provider/forum/dao/SearchRecordDao;
.super Lcom/oppo/tribune/provider/forum/dao/TableDao;
.source "SearchRecordDao.java"

# interfaces
.implements Lcom/oppo/tribune/provider/forum/Forum2$SearchRecordTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/provider/forum/dao/TableDao",
        "<",
        "Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;",
        ">;",
        "Lcom/oppo/tribune/provider/forum/Forum2$SearchRecordTable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-class v0, Lcom/oppo/tribune/provider/forum/dao/SearchRecordDao;

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public clearByType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 45
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "type"

    invoke-direct {v0, v1, p1}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    .line 46
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/SearchRecordDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public contentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/SearchRecordDao;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public deleteByKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "key"

    invoke-direct {v0, v1, p1}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/SearchRecordDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public insert(Ljava/util/List;I)Z
    .locals 3
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;>;"
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "type"

    invoke-direct {v0, v1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    .line 35
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/SearchRecordDao;->insert(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected newInsertValues(Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "item"    # Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;

    .prologue
    .line 81
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v1, "key"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-object v0
.end method

.method protected bridge synthetic newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/SearchRecordDao;->newInsertValues(Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 71
    new-instance v0, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;-><init>()V

    .line 73
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;
    const-string v1, "type"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;->setType(I)V

    .line 74
    const-string v1, "key"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;->setKey(Ljava/lang/String;)V

    .line 76
    return-object v0
.end method

.method protected bridge synthetic newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/SearchRecordDao;->newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateRecord(Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;)V
    .locals 0
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;
    .param p2, "oldRecord"    # Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;

    .prologue
    .line 98
    return-void
.end method

.method protected bridge synthetic onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/SearchRecordDao;->onUpdateRecord(Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;)V

    return-void
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/SearchRecordDao;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public query(I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "type"

    invoke-direct {v0, v1, p1}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    .line 40
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/SearchRecordDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected queryRecordCondition(Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;)Ljava/lang/String;
    .locals 1
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/SearchRecordDao;->queryRecordCondition(Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "_id ASC"

    return-object v0
.end method
