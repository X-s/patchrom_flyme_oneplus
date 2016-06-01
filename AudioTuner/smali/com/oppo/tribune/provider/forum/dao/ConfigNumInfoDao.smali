.class public Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;
.super Lcom/oppo/tribune/provider/forum/dao/TableDao;
.source "ConfigNumInfoDao.java"

# interfaces
.implements Lcom/oppo/tribune/provider/forum/Forum2$ConfigNumInfoTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/provider/forum/dao/TableDao",
        "<",
        "Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;",
        ">;",
        "Lcom/oppo/tribune/provider/forum/Forum2$ConfigNumInfoTable;"
    }
.end annotation


# instance fields
.field private mWhereClause:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const-class v0, Lcom/oppo/tribune/provider/forum/dao/TableDao;

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->mWhereClause:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public contentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public insert(Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;)Z
    .locals 6
    .param p1, "entity"    # Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 33
    const/4 v3, 0x0

    .line 40
    :goto_0
    return v3

    .line 36
    :cond_0
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v3, "type_id"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->getTypeId()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 37
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "whereClause":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 39
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->insert(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method public insert(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;>;"
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->mWhereClause:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->insert(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected newInsertValues(Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;

    .prologue
    .line 103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "type_id"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->getTypeId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "config_num"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->getConfigNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v1, "brand_id"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->getBrandId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    const-string v1, "request_num"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->getRequestNum()I

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
    .line 16
    check-cast p1, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->newInsertValues(Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 91
    new-instance v0, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;-><init>()V

    .line 93
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;
    const-string v1, "type_id"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->setTypeId(J)V

    .line 94
    const-string v1, "type"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->setType(Ljava/lang/String;)V

    .line 95
    const-string v1, "config_num"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->setConfigNum(I)V

    .line 96
    const-string v1, "brand_id"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->setBrandId(J)V

    .line 97
    const-string v1, "request_num"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->setRequestNum(I)V

    .line 98
    return-object v0
.end method

.method protected bridge synthetic newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateRecord(Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;)V
    .locals 0
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;
    .param p2, "oldRecord"    # Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;

    .prologue
    .line 123
    return-void
.end method

.method protected bridge synthetic onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->onUpdateRecord(Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;)V

    return-void
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public query(I)Ljava/util/List;
    .locals 4
    .param p1, "brand_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v3, "brand_id"

    invoke-direct {v0, v3, p1}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    .line 45
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "whereClause":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 47
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;>;"
    return-object v1
.end method

.method public queryBrandId(J)J
    .locals 7
    .param p1, "type_id"    # J

    .prologue
    .line 51
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v3, "type_id"

    invoke-direct {v0, v3, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 52
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "whereClause":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 55
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;

    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->getBrandId()J

    move-result-wide v4

    .line 59
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method protected queryRecordCondition(Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;

    .prologue
    .line 115
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "type_id"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->getTypeId()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 116
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->queryRecordCondition(Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryRequestNum(J)J
    .locals 7
    .param p1, "type_id"    # J

    .prologue
    .line 63
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v3, "type_id"

    invoke-direct {v0, v3, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 64
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "whereClause":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;

    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->getRequestNum()I

    move-result v3

    int-to-long v4, v3

    .line 71
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public size(J)I
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 26
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "type_id"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 27
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->size(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "_id DESC"

    return-object v0
.end method

.method public update(Ljava/util/List;I)Z
    .locals 3
    .param p2, "brand_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;>;"
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "brand_id"

    invoke-direct {v0, v1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;I)V

    .line 131
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->update(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
