.class public Lcom/oneplus/tuner/database/OnePlusDbBusiness;
.super Ljava/lang/Object;
.source "OnePlusDbBusiness.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addDownloadConfig(Landroid/content/Context;Lcom/oneplus/tuner/database/bean/DownloadConfig;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bean"    # Lcom/oneplus/tuner/database/bean/DownloadConfig;

    .prologue
    .line 300
    const-class v3, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 301
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 302
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 303
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "_config_id"

    invoke-virtual {p1}, Lcom/oneplus/tuner/database/bean/DownloadConfig;->getConfigId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string v2, "download_config_id"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 305
    invoke-static {v1}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    monitor-exit v3

    return-void

    .line 300
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized addRecentlyUsedConfig(Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 434
    const-class v3, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 435
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 445
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 446
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "_style"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v2, "_model"

    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v2, "_user_name"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v2, "_comment"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v2, "_commend"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getPraise()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    const-string v2, "_time"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getDateline()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 454
    const-string v2, "_using"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 455
    const-string v2, "_local"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getLocal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const-string v2, "_config_id"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 474
    const-string v2, "_params"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getCommonForumName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v2, "_lastUsedTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 478
    const-string v2, "_category_id"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getCategoryId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 480
    const-string v2, "_download_num"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getDownloadNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 482
    const-string v2, "recently_used_config"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 483
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    monitor-exit v3

    return-void

    .line 434
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized addRecentlyUsedConfigId(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configId"    # I

    .prologue
    .line 333
    const-class v3, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 334
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 335
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "_config_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v2, "recently_used_config_id"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 338
    invoke-static {v1}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    monitor-exit v3

    return-void

    .line 333
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized addUserCollection(Landroid/content/Context;Lcom/oneplus/tuner/database/bean/UserCollection;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bean"    # Lcom/oneplus/tuner/database/bean/UserCollection;

    .prologue
    .line 51
    const-class v3, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 52
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "_config_id"

    invoke-virtual {p1}, Lcom/oneplus/tuner/database/bean/UserCollection;->getConfigId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string v2, "_status"

    invoke-virtual {p1}, Lcom/oneplus/tuner/database/bean/UserCollection;->getStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    const-string v2, "_is_dirty"

    invoke-virtual {p1}, Lcom/oneplus/tuner/database/bean/UserCollection;->getIsDirty()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string v2, "_update_time"

    invoke-virtual {p1}, Lcom/oneplus/tuner/database/bean/UserCollection;->getUpdateTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    const-string v2, "user_collection"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 59
    invoke-static {v1}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    monitor-exit v3

    return-void

    .line 51
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized clearAllUserCollection(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 141
    const-class v5, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 142
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 143
    const-string v2, "_status=?"

    .line 144
    .local v2, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "1"

    aput-object v6, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_1
    const-string v4, "user_collection"

    invoke-virtual {v0, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->clearLastUpdateUserCollectionTime()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    :try_start_2
    invoke-static {v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    .end local v2    # "where":Ljava/lang/String;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v5

    return v7

    .line 151
    .restart local v2    # "where":Ljava/lang/String;
    .restart local v3    # "whereArgs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    :try_start_4
    invoke-static {v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 141
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v2    # "where":Ljava/lang/String;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 154
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "where":Ljava/lang/String;
    .restart local v3    # "whereArgs":[Ljava/lang/String;
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static declared-synchronized closeCur(Landroid/database/Cursor;)V
    .locals 2
    .param p0, "cur"    # Landroid/database/Cursor;

    .prologue
    .line 43
    const-class v0, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 44
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit v0

    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 37
    const-class v1, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit v1

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized deleteRecentlyUsedConfig(Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 508
    const-class v4, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 509
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 510
    const-string v1, "_config_id=? AND _style=?"

    .line 511
    .local v1, "where":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 512
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v3, "recently_used_config"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 513
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    .end local v1    # "where":Ljava/lang/String;
    .end local v2    # "whereArgs":[Ljava/lang/String;
    :cond_0
    monitor-exit v4

    return-void

    .line 508
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized deleteRecentlyUsedConfigId(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configId"    # I

    .prologue
    .line 363
    const-class v3, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 364
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_config_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "where":Ljava/lang/String;
    const-string v2, "recently_used_config_id"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 371
    invoke-static {v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    .end local v1    # "where":Ljava/lang/String;
    :cond_0
    monitor-exit v3

    return-void

    .line 363
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-class v2, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbHelper;->getInstance(Landroid/content/Context;)Lcom/oneplus/tuner/database/OnePlusDbHelper;

    move-result-object v0

    .line 33
    .local v0, "helper":Lcom/oneplus/tuner/database/OnePlusDbHelper;
    invoke-virtual {v0}, Lcom/oneplus/tuner/database/OnePlusDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 32
    .end local v0    # "helper":Lcom/oneplus/tuner/database/OnePlusDbHelper;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getRecentlyUsedConfigId(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    const-class v13, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v13

    const/4 v11, 0x0

    .line 378
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 379
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_2

    .line 380
    const-string v7, "_id desc"

    .line 381
    .local v7, "orderBy":Ljava/lang/String;
    const-string v1, "recently_used_config_id"

    sget-object v2, Lcom/oneplus/tuner/database/OnePlusDbHelper$RecentlyUsedConfigIdTableColumns;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 384
    .local v8, "cur":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 385
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 387
    .local v10, "len":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 388
    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 389
    const-string v1, "_config_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 387
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move-object v11, v12

    .line 393
    .end local v9    # "i":I
    .end local v10    # "len":I
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_2
    invoke-static {v8}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeCur(Landroid/database/Cursor;)V

    .line 394
    invoke-static {v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v8    # "cur":Landroid/database/Cursor;
    :cond_2
    monitor-exit v13

    return-object v11

    .line 377
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    :goto_1
    monitor-exit v13

    throw v1

    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7    # "orderBy":Ljava/lang/String;
    .restart local v8    # "cur":Landroid/database/Cursor;
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v1

    move-object v11, v12

    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_1
.end method

.method public static declared-synchronized getRecentlyUsedConfigIdStrs(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    const-class v12, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v12

    :try_start_0
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 402
    .local v11, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 403
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_2

    .line 404
    const-string v7, "_id desc"

    .line 405
    .local v7, "orderBy":Ljava/lang/String;
    const-string v1, "recently_used_config_id"

    sget-object v2, Lcom/oneplus/tuner/database/OnePlusDbHelper$RecentlyUsedConfigIdTableColumns;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 408
    .local v8, "cur":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 409
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 410
    .local v10, "len":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_1

    .line 411
    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 412
    add-int/lit8 v1, v10, -0x1

    if-ne v9, v1, :cond_0

    .line 413
    const-string v1, "_config_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 410
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 416
    :cond_0
    const-string v1, "_config_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 401
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v8    # "cur":Landroid/database/Cursor;
    .end local v9    # "i":I
    .end local v10    # "len":I
    .end local v11    # "sb":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1

    .line 423
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7    # "orderBy":Ljava/lang/String;
    .restart local v8    # "cur":Landroid/database/Cursor;
    .restart local v11    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    invoke-static {v8}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeCur(Landroid/database/Cursor;)V

    .line 424
    invoke-static {v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 426
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v8    # "cur":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v12

    return-object v1
.end method

.method public static declared-synchronized getSpecificCollection(Landroid/content/Context;I)Lcom/oneplus/tuner/database/bean/UserCollection;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configId"    # I

    .prologue
    .line 247
    const-class v11, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v11

    const/4 v8, 0x0

    .line 248
    .local v8, "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 249
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 250
    const-string v3, "_config_id=?"

    .line 251
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 252
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v1, "user_collection"

    sget-object v2, Lcom/oneplus/tuner/database/OnePlusDbHelper$UserCollectionTableColumns;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 255
    .local v10, "cur":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 256
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    new-instance v9, Lcom/oneplus/tuner/database/bean/UserCollection;

    invoke-direct {v9}, Lcom/oneplus/tuner/database/bean/UserCollection;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v8    # "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    .local v9, "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    :try_start_1
    const-string v1, "_config_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/oneplus/tuner/database/bean/UserCollection;->setConfigId(I)V

    .line 260
    const-string v1, "_status"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/oneplus/tuner/database/bean/UserCollection;->setStatus(I)V

    .line 262
    const-string v1, "_is_dirty"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/oneplus/tuner/database/bean/UserCollection;->setIsDirty(I)V

    .line 264
    const-string v1, "_update_time"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v9, v6, v7}, Lcom/oneplus/tuner/database/bean/UserCollection;->setUpdateTime(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v9

    .line 267
    .end local v9    # "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    .restart local v8    # "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    :cond_0
    :try_start_2
    invoke-static {v10}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeCur(Landroid/database/Cursor;)V

    .line 268
    invoke-static {v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "cur":Landroid/database/Cursor;
    :cond_1
    monitor-exit v11

    return-object v8

    .line 247
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    :goto_0
    monitor-exit v11

    throw v1

    .end local v8    # "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v9    # "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    .restart local v10    # "cur":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    move-object v8, v9

    .end local v9    # "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    .restart local v8    # "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    goto :goto_0
.end method

.method public static declared-synchronized getUpdateTimeMaxValue(Landroid/content/Context;)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    const-class v9, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v9

    const-wide/16 v10, 0x0

    .line 275
    .local v10, "result":J
    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 276
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 277
    const-string v3, "_is_dirty=?"

    .line 278
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v4, v1

    .line 279
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v7, "_update_time desc"

    .line 280
    .local v7, "orderBy":Ljava/lang/String;
    const-string v1, "user_collection"

    sget-object v2, Lcom/oneplus/tuner/database/OnePlusDbHelper$UserCollectionTableColumns;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 283
    .local v8, "cur":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 284
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 285
    const-string v1, "_update_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 289
    :cond_0
    invoke-static {v8}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeCur(Landroid/database/Cursor;)V

    .line 290
    invoke-static {v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v8    # "cur":Landroid/database/Cursor;
    :cond_1
    monitor-exit v9

    return-wide v10

    .line 274
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method public static declared-synchronized getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const-class v2, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbHelper;->getInstance(Landroid/content/Context;)Lcom/oneplus/tuner/database/OnePlusDbHelper;

    move-result-object v0

    .line 27
    .local v0, "helper":Lcom/oneplus/tuner/database/OnePlusDbHelper;
    invoke-virtual {v0}, Lcom/oneplus/tuner/database/OnePlusDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 26
    .end local v0    # "helper":Lcom/oneplus/tuner/database/OnePlusDbHelper;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized isConfigIdExistInRecentlyUsed(Landroid/content/Context;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configId"    # I

    .prologue
    .line 344
    const-class v10, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v10

    const/4 v9, 0x0

    .line 345
    .local v9, "flag":Z
    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 346
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 347
    const-string v3, "_config_id=?"

    .line 348
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 349
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v1, "recently_used_config_id"

    sget-object v2, Lcom/oneplus/tuner/database/OnePlusDbHelper$RecentlyUsedConfigIdTableColumns;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 352
    .local v8, "cur":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 353
    const/4 v9, 0x1

    .line 355
    :cond_0
    invoke-static {v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 356
    invoke-static {v8}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeCur(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v8    # "cur":Landroid/database/Cursor;
    :cond_1
    monitor-exit v10

    return v9

    .line 344
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1
.end method

.method public static declared-synchronized isDownloadConfigExist(Landroid/content/Context;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configId"    # I

    .prologue
    .line 311
    const-class v10, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v10

    const/4 v9, 0x0

    .line 312
    .local v9, "flag":Z
    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 313
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 314
    const-string v3, "_config_id=?"

    .line 315
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 316
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v1, "download_config_id"

    sget-object v2, Lcom/oneplus/tuner/database/OnePlusDbHelper$DownloadConfigIdTableColumns;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 319
    .local v8, "cur":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 320
    const/4 v9, 0x1

    .line 322
    :cond_0
    invoke-static {v8}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeCur(Landroid/database/Cursor;)V

    .line 323
    invoke-static {v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "cur":Landroid/database/Cursor;
    :cond_1
    monitor-exit v10

    return v9

    .line 311
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1
.end method

.method public static declared-synchronized isRecentlyUsedAlreadyExist(Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 489
    const-class v10, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v10

    const/4 v9, 0x0

    .line 490
    .local v9, "flag":Z
    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 491
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 492
    const-string v3, "_config_id=?"

    .line 493
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 494
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v1, "recently_used_config"

    sget-object v2, Lcom/oneplus/tuner/database/OnePlusDbHelper$RecentlyUsedConfigTableColumns;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 497
    .local v8, "cur":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 498
    const/4 v9, 0x1

    .line 500
    :cond_0
    invoke-static {v8}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeCur(Landroid/database/Cursor;)V

    .line 501
    invoke-static {v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v8    # "cur":Landroid/database/Cursor;
    :cond_1
    monitor-exit v10

    return v9

    .line 489
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1
.end method

.method public static declared-synchronized modifyCollectionIsDirty(Landroid/content/Context;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configId"    # I
    .param p2, "isDirty"    # I

    .prologue
    .line 216
    const-class v5, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 217
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 218
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v4, "_is_dirty"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string v3, "_config_id=?"

    .line 221
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 222
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v4, "user_collection"

    invoke-virtual {v1, v4, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 224
    invoke-static {v1}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "whereArgs":[Ljava/lang/String;
    .end local v3    # "whereClause":Ljava/lang/String;
    :cond_0
    monitor-exit v5

    return-void

    .line 216
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized modifyCollectionStatus(Landroid/content/Context;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configId"    # I
    .param p2, "status"    # I

    .prologue
    .line 197
    const-class v5, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 198
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 199
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 200
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v4, "_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v4, "_is_dirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v3, "_config_id=?"

    .line 204
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 205
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v4, "user_collection"

    invoke-virtual {v1, v4, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    invoke-static {v1}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "whereArgs":[Ljava/lang/String;
    .end local v3    # "whereClause":Ljava/lang/String;
    :cond_0
    monitor-exit v5

    return-void

    .line 197
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized modifyCollectionUpdateTime(Landroid/content/Context;IJ)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configId"    # I
    .param p2, "time"    # J

    .prologue
    .line 230
    const-class v5, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getWritableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 231
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 232
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v4, "_update_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    const-string v3, "_config_id=?"

    .line 235
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 236
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v4, "user_collection"

    invoke-virtual {v1, v4, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    invoke-static {v1}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "whereArgs":[Ljava/lang/String;
    .end local v3    # "whereClause":Ljava/lang/String;
    :cond_0
    monitor-exit v5

    return-void

    .line 230
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static queryAllRecentlyUsedConfig(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 519
    const/4 v12, 0x0

    .line 520
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 521
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 522
    const-string v7, "_id desc"

    .line 523
    .local v7, "orderBy":Ljava/lang/String;
    const-string v1, "recently_used_config"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 525
    .local v8, "cur":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 526
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 527
    .local v11, "len":I
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 529
    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 530
    new-instance v10, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {v10}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;-><init>()V

    .line 531
    .local v10, "info":Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    const-string v1, "_style"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setSubject(Ljava/lang/String;)V

    .line 533
    const-string v1, "_user_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setAuthor(Ljava/lang/String;)V

    .line 535
    const-string v1, "_comment"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setSummary(Ljava/lang/String;)V

    .line 537
    const-string v1, "_commend"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v10, v2, v3}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setPraise(J)V

    .line 539
    const-string v1, "_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setDateline(J)V

    .line 541
    const-string v1, "_config_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v10, v2, v3}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setTid(J)V

    .line 543
    const-string v1, "_params"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setCommonForumName(Ljava/lang/String;)V

    .line 545
    const-string v1, "_category_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setCategoryId(I)V

    .line 547
    const-string v1, "_download_num"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setDownloadNum(I)V

    .line 549
    const-string v1, "_local"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setLocal(I)V

    .line 550
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 553
    .end local v9    # "i":I
    .end local v10    # "info":Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .end local v11    # "len":I
    :cond_0
    invoke-static {v8}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeCur(Landroid/database/Cursor;)V

    .line 554
    invoke-static {v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 556
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v8    # "cur":Landroid/database/Cursor;
    :cond_1
    return-object v12
.end method

.method public static declared-synchronized queryAllUserCollection(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/tuner/database/bean/UserCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const-class v13, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v13

    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/database/bean/UserCollection;>;"
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 67
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 68
    const-string v3, "_status=?"

    .line 69
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v4, v1

    .line 70
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v1, "user_collection"

    sget-object v2, Lcom/oneplus/tuner/database/OnePlusDbHelper$UserCollectionTableColumns;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 73
    .local v10, "cur":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 74
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 75
    .local v9, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_0

    .line 76
    invoke-interface {v10, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 77
    new-instance v8, Lcom/oneplus/tuner/database/bean/UserCollection;

    invoke-direct {v8}, Lcom/oneplus/tuner/database/bean/UserCollection;-><init>()V

    .line 78
    .local v8, "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    const-string v1, "_config_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/oneplus/tuner/database/bean/UserCollection;->setConfigId(I)V

    .line 80
    const-string v1, "_status"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/oneplus/tuner/database/bean/UserCollection;->setStatus(I)V

    .line 82
    const-string v1, "_is_dirty"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/oneplus/tuner/database/bean/UserCollection;->setIsDirty(I)V

    .line 84
    const-string v1, "_update_time"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v8, v6, v7}, Lcom/oneplus/tuner/database/bean/UserCollection;->setUpdateTime(J)V

    .line 86
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 88
    .end local v8    # "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    :cond_0
    invoke-static {v10}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeCur(Landroid/database/Cursor;)V

    .line 89
    invoke-static {v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v9    # "count":I
    .end local v10    # "cur":Landroid/database/Cursor;
    .end local v11    # "i":I
    :cond_1
    monitor-exit v13

    return-object v12

    .line 65
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/database/bean/UserCollection;>;"
    :catchall_0
    move-exception v1

    monitor-exit v13

    throw v1
.end method

.method public static declared-synchronized queryAllUserCollectionConfigId(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const-class v5, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v5

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->queryAllUserCollection(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 99
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/database/bean/UserCollection;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 100
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/database/bean/UserCollection;

    .line 101
    .local v0, "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    invoke-virtual {v0}, Lcom/oneplus/tuner/database/bean/UserCollection;->getConfigId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    .end local v0    # "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/database/bean/UserCollection;>;"
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 104
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/database/bean/UserCollection;>;"
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit v5

    return-object v3
.end method

.method public static declared-synchronized queryAllUserCollectionConfigIdString(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const-class v12, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v12

    :try_start_0
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v11, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 111
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_2

    .line 112
    const-string v3, "_status=?"

    .line 113
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v4, v1

    .line 114
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v1, "user_collection"

    sget-object v2, Lcom/oneplus/tuner/database/OnePlusDbHelper$UserCollectionTableColumns;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 117
    .local v9, "cur":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 118
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 119
    .local v8, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_1

    .line 120
    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 121
    add-int/lit8 v1, v8, -0x1

    if-ne v10, v1, :cond_0

    .line 122
    const-string v1, "_config_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 119
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 125
    :cond_0
    const-string v1, "_config_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 109
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v8    # "count":I
    .end local v9    # "cur":Landroid/database/Cursor;
    .end local v10    # "i":I
    .end local v11    # "sb":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1

    .line 131
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    .restart local v8    # "count":I
    .restart local v9    # "cur":Landroid/database/Cursor;
    .restart local v10    # "i":I
    .restart local v11    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    invoke-static {v9}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeCur(Landroid/database/Cursor;)V

    .line 132
    invoke-static {v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 135
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v8    # "count":I
    .end local v9    # "cur":Landroid/database/Cursor;
    .end local v10    # "i":I
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v12

    return-object v1
.end method

.method public static declared-synchronized queryAllUserCollectionNeedToSyncWithServer(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/tuner/database/bean/UserCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    const-class v13, Lcom/oneplus/tuner/database/OnePlusDbBusiness;

    monitor-enter v13

    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/database/bean/UserCollection;>;"
    invoke-static {p0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 164
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 165
    const-string v3, "_is_dirty=?"

    .line 166
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v4, v1

    .line 167
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v1, "user_collection"

    sget-object v2, Lcom/oneplus/tuner/database/OnePlusDbHelper$UserCollectionTableColumns;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 170
    .local v10, "cur":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 171
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 172
    .local v9, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_0

    .line 173
    invoke-interface {v10, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 174
    new-instance v8, Lcom/oneplus/tuner/database/bean/UserCollection;

    invoke-direct {v8}, Lcom/oneplus/tuner/database/bean/UserCollection;-><init>()V

    .line 175
    .local v8, "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    const-string v1, "_config_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/oneplus/tuner/database/bean/UserCollection;->setConfigId(I)V

    .line 177
    const-string v1, "_status"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/oneplus/tuner/database/bean/UserCollection;->setStatus(I)V

    .line 179
    const-string v1, "_is_dirty"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/oneplus/tuner/database/bean/UserCollection;->setIsDirty(I)V

    .line 181
    const-string v1, "_update_time"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v8, v6, v7}, Lcom/oneplus/tuner/database/bean/UserCollection;->setUpdateTime(J)V

    .line 183
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 185
    .end local v8    # "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    :cond_0
    invoke-static {v10}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeCur(Landroid/database/Cursor;)V

    .line 186
    invoke-static {v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "count":I
    .end local v10    # "cur":Landroid/database/Cursor;
    .end local v11    # "i":I
    :cond_1
    monitor-exit v13

    return-object v12

    .line 162
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/database/bean/UserCollection;>;"
    :catchall_0
    move-exception v1

    monitor-exit v13

    throw v1
.end method
