.class Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;
.super Ljava/lang/Object;
.source "ForumSQliteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SigninRecordPersistent"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/usercenter/login/SignInRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;->mList:Ljava/util/List;

    .line 74
    return-void
.end method

.method private saveNewRecords(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fromVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/usercenter/login/SignInRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;->saveRecordVersion(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private saveRecordVersion(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
    .locals 20
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/usercenter/login/SignInRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 121
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/usercenter/login/SignInRecord;>;"
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ge v0, v2, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-object v13

    .line 125
    :cond_1
    const/4 v10, 0x0

    .line 127
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "signin_record"

    sget-object v4, Lcom/oppo/tribune/provider/forum/Forum2$SignInRecordTable;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 134
    :goto_1
    if-eqz v10, :cond_0

    .line 139
    const/4 v2, -0x1

    :try_start_1
    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 140
    const-string v2, "username"

    invoke-static {v10, v2}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 142
    .local v17, "username":Ljava/lang/String;
    const-string v2, "password"

    invoke-static {v10, v2}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 144
    .local v14, "password":Ljava/lang/String;
    const-string v2, "remember_password"

    invoke-static {v10, v2}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    const/4 v15, 0x1

    .line 146
    .local v15, "remember":Z
    :goto_3
    const-string v2, "auto_signin"

    invoke-static {v10, v2}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    const/16 v16, 0x1

    .line 148
    .local v16, "tokensign":Z
    :goto_4
    const-string v2, "uid"

    invoke-static {v10, v2}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v18

    .line 150
    .local v18, "uid":J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-lez v2, :cond_2

    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 154
    invoke-static {v14}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    const/4 v15, 0x0

    .line 158
    :cond_3
    new-instance v12, Lcom/oppo/tribune/usercenter/login/SignInRecord;

    invoke-direct {v12}, Lcom/oppo/tribune/usercenter/login/SignInRecord;-><init>()V

    .line 159
    .local v12, "item":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setUid(J)V

    .line 160
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setUsername(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v12, v14}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setPassword(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v12, v15}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setRememberPassword(Z)V

    .line 163
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setTokenSignIn(Z)V

    .line 164
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 167
    .end local v12    # "item":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "remember":Z
    .end local v16    # "tokensign":Z
    .end local v17    # "username":Ljava/lang/String;
    .end local v18    # "uid":J
    :catchall_0
    move-exception v2

    invoke-static {v10}, Lcom/oppo/tribune/util/Cursors;->close(Landroid/database/Cursor;)V

    throw v2

    .line 130
    :catch_0
    move-exception v11

    .line 131
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1

    .line 144
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v14    # "password":Ljava/lang/String;
    .restart local v17    # "username":Ljava/lang/String;
    :cond_4
    const/4 v15, 0x0

    goto :goto_3

    .line 146
    .restart local v15    # "remember":Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_4

    .line 167
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "remember":Z
    .end local v17    # "username":Ljava/lang/String;
    :cond_6
    invoke-static {v10}, Lcom/oppo/tribune/util/Cursors;->close(Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private toInsertSql(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/usercenter/login/SignInRecord;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/usercenter/login/SignInRecord;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 174
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 202
    :cond_0
    return-object v3

    .line 178
    :cond_1
    const-string v7, "INSERT INTO %s(%s, %s, %s, %s, %s) VALUES(%%d, %%s, %%s, %%d, %%d)"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "signin_record"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "uid"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "username"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "password"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "remember_password"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string v10, "auto_signin"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "format":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/tribune/usercenter/login/SignInRecord;

    .line 187
    .local v2, "item":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    invoke-virtual {v2}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getUsername()Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "username":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "passWord":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x14

    if-gt v7, v8, :cond_3

    .line 190
    invoke-static {v6, v4}, Lcom/oppo/tribune/util/MD5Sign;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 193
    :cond_3
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getUid()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;->value(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v6}, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4}, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v2}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->isRememberPassword()Z

    move-result v9

    invoke-static {v9}, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;->value(Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-virtual {v2}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->isTokenLogin()Z

    move-result v9

    invoke-static {v9}, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;->value(Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 198
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static value(Z)I
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 210
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static value(J)J
    .locals 4
    .param p0, "value"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 214
    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    move-wide p0, v0

    .end local p0    # "value":J
    :cond_0
    return-wide p0
.end method

.method public static value(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 206
    if-eqz p0, :cond_0

    const-string v0, "\'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public onRestoreRecord(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "toVersion"    # I

    .prologue
    .line 84
    iget-object v4, p0, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v4, p0, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;->mList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;->toInsertSql(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 89
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 95
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 99
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 98
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public onSaveRecord(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fromVersion"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;->saveNewRecords(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/usercenter/login/SignInRecord;>;"
    iget-object v1, p0, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 80
    iget-object v1, p0, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper$SigninRecordPersistent;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    return-void
.end method
