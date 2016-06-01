.class public Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;
.super Lcom/oppo/tribune/provider/forum/dao/TableDao;
.source "UserSignInRecordDao.java"

# interfaces
.implements Lcom/oppo/tribune/provider/forum/Forum2$SignInRecordTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/provider/forum/dao/TableDao",
        "<",
        "Lcom/oppo/tribune/usercenter/login/SignInRecord;",
        ">;",
        "Lcom/oppo/tribune/provider/forum/Forum2$SignInRecordTable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-class v0, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public contentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public insert(Lcom/oppo/tribune/usercenter/login/SignInRecord;)Z
    .locals 8
    .param p1, "item"    # Lcom/oppo/tribune/usercenter/login/SignInRecord;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getUid()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 104
    :cond_0
    const/4 v3, 0x0

    .line 111
    :goto_0
    return v3

    .line 107
    :cond_1
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v3, "uid"

    invoke-virtual {p1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getUid()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 108
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "whereClause":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 110
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/usercenter/login/SignInRecord;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->insert(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method protected newInsertValues(Lcom/oppo/tribune/usercenter/login/SignInRecord;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "item"    # Lcom/oppo/tribune/usercenter/login/SignInRecord;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 147
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    const-string v1, "username"

    invoke-virtual {p1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "password"

    invoke-virtual {p1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v4, "remember_password"

    invoke-virtual {p1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->isRememberPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    const-string v1, "auto_signin"

    invoke-virtual {p1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->isTokenLogin()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    return-object v0

    :cond_0
    move v1, v3

    .line 150
    goto :goto_0

    :cond_1
    move v2, v3

    .line 152
    goto :goto_1
.end method

.method protected bridge synthetic newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/oppo/tribune/usercenter/login/SignInRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->newInsertValues(Lcom/oppo/tribune/usercenter/login/SignInRecord;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/usercenter/login/SignInRecord;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 131
    new-instance v0, Lcom/oppo/tribune/usercenter/login/SignInRecord;

    invoke-direct {v0}, Lcom/oppo/tribune/usercenter/login/SignInRecord;-><init>()V

    .line 133
    .local v0, "item":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    const-string v1, "uid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setUid(J)V

    .line 134
    const-string v1, "username"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setUsername(Ljava/lang/String;)V

    .line 135
    const-string v1, "password"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setPassword(Ljava/lang/String;)V

    .line 136
    const-string v1, "remember_password"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setRememberPassword(Z)V

    .line 138
    const-string v1, "auto_signin"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setTokenSignIn(Z)V

    .line 140
    return-object v0

    :cond_0
    move v1, v3

    .line 136
    goto :goto_0

    :cond_1
    move v2, v3

    .line 138
    goto :goto_1
.end method

.method protected bridge synthetic newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/usercenter/login/SignInRecord;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateRecord(Lcom/oppo/tribune/usercenter/login/SignInRecord;Lcom/oppo/tribune/usercenter/login/SignInRecord;)V
    .locals 0
    .param p1, "newRecord"    # Lcom/oppo/tribune/usercenter/login/SignInRecord;
    .param p2, "oldRecord"    # Lcom/oppo/tribune/usercenter/login/SignInRecord;

    .prologue
    .line 160
    return-void
.end method

.method protected bridge synthetic onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/oppo/tribune/usercenter/login/SignInRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oppo/tribune/usercenter/login/SignInRecord;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->onUpdateRecord(Lcom/oppo/tribune/usercenter/login/SignInRecord;Lcom/oppo/tribune/usercenter/login/SignInRecord;)V

    return-void
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public query(Ljava/lang/String;)Lcom/oppo/tribune/usercenter/login/SignInRecord;
    .locals 7
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 46
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v6, "username"

    invoke-direct {v0, v6, p1}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "whereClause":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 50
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/usercenter/login/SignInRecord;>;"
    invoke-static {v3}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 51
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/tribune/usercenter/login/SignInRecord;

    .line 52
    .local v2, "item":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    if-eqz v2, :cond_0

    .line 57
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    :goto_0
    return-object v2

    :cond_1
    move-object v2, v5

    goto :goto_0
.end method

.method public query()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/usercenter/login/SignInRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0, v0}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryLastSignInRecord()Lcom/oppo/tribune/usercenter/login/SignInRecord;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v3, p0, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 88
    :try_start_0
    const-string v1, "_id DESC LIMIT 1"

    .line 89
    .local v1, "sortOrder":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v1}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->primeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 91
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-static {v0}, Lcom/oppo/tribune/util/Cursors;->isNullOrEmpty(Landroid/database/Cursor;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/usercenter/login/SignInRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 97
    :try_start_2
    invoke-static {v0}, Lcom/oppo/tribune/util/Cursors;->close(Landroid/database/Cursor;)V

    monitor-exit v3

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/oppo/tribune/util/Cursors;->close(Landroid/database/Cursor;)V

    monitor-exit v3

    goto :goto_0

    .line 99
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "sortOrder":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 97
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "sortOrder":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-static {v0}, Lcom/oppo/tribune/util/Cursors;->close(Landroid/database/Cursor;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected queryRecordCondition(Lcom/oppo/tribune/usercenter/login/SignInRecord;)Ljava/lang/String;
    .locals 3
    .param p1, "newRecord"    # Lcom/oppo/tribune/usercenter/login/SignInRecord;

    .prologue
    .line 164
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "username"

    invoke-virtual {p1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/oppo/tribune/usercenter/login/SignInRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->queryRecordCondition(Lcom/oppo/tribune/usercenter/login/SignInRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0, v0}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->size(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "_id DESC"

    return-object v0
.end method
