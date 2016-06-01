.class public Lcom/oppo/statistics/e/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:J = 0x240c8400L

.field private static final b:J = 0x240c8400L

.field private static final c:J = 0x240c8400L

.field private static final d:J = 0x240c8400L

.field private static final e:J = 0x240c8400L

.field private static final f:J = 0x240c8400L

.field private static final g:I = 0x5

.field private static final h:I = 0x64

.field private static final i:I = 0x64

.field private static final j:I = 0x1f4

.field private static final k:I = 0x1f4

.field private static final l:I = 0x1f4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidUserAction start."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "action_record_time < ? OR action_record_time > ?"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long v4, v2, v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "table_action"

    invoke-virtual {v1, v2, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidUserAction finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "NearMeStatistics"

    invoke-static {v2, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidUserAction finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "NearMeStatistics"

    const-string v2, "clearInvalidUserAction finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "NearMeStatistics"

    const-string v1, "clear uploaded info of AppStart. start"

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "table_app_start"

    invoke-static {p0, v0, p1}, Lcom/oppo/statistics/e/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "NearMeStatistics"

    const-string v1, "clear uploaded info of AppStart. end"

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 11

    const/4 v8, 0x0

    const-string v0, "NearMeStatistics"

    const-string v1, "addUserAction start."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NearMeStatistics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionId,dateTime,actionCount is: \n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string v1, "action_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "action_date"

    invoke-virtual {v9, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "action_record_time"

    invoke-static {}, Lcom/oppo/statistics/g/j;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "action_id = ? AND action_date = ? "

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "table_action"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    if-eqz v8, :cond_0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "action_amount"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "action_amount"

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "table_action"

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v8}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "addUserAciton is finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    :try_start_3
    const-string v1, "action_amount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "table_action"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_2
    :try_start_4
    const-string v2, "NearMeStatistics"

    invoke-static {v2, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {v8}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "addUserAciton is finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    invoke-static {v1}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "NearMeStatistics"

    const-string v2, "addUserAciton is finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    move-object v8, v10

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/oppo/statistics/b/a;)V
    .locals 6

    const/4 v1, 0x0

    const-string v0, "NearMeStatistics"

    const-string v2, "addAppLog start."

    invoke-static {v0, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NearMeStatistics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type,body is: \n "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oppo/statistics/b/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oppo/statistics/b/a;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_log_type"

    invoke-virtual {p1}, Lcom/oppo/statistics/b/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_log_event_time"

    invoke-virtual {p1}, Lcom/oppo/statistics/b/a;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "app_log_body"

    invoke-virtual {p1}, Lcom/oppo/statistics/b/a;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "table_app_log"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "addAppLog finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "NearMeStatistics"

    invoke-static {v2, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "addAppLog finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "NearMeStatistics"

    const-string v2, "addAppLog finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/oppo/statistics/b/d;)V
    .locals 13

    const/4 v11, 0x1

    const/4 v8, 0x0

    const-string v0, "NearMeStatistics"

    const-string v1, "addException start."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NearMeStatistics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception is: \n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oppo/statistics/b/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {p1}, Lcom/oppo/statistics/b/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/statistics/g/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oppo/statistics/b/d;->a()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/oppo/statistics/b/d;->e()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "exception_body"

    invoke-virtual {v10, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exception_event_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "exception_md5"

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exception_app_version"

    invoke-virtual {v10, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "exception_md5 =? AND exception_app_version =? "

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v4, v1

    const/4 v1, 0x1

    aput-object v6, v4, v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "table_exception"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "exception_count"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v1, v11

    const-string v2, "exception_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "table_exception"

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v1, "NearMeStatistics"

    const-string v2, "addException finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    return-void

    :cond_0
    :try_start_2
    const-string v1, "exception_count"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "table_exception"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_2
    :try_start_3
    const-string v2, "NearMeStatistics"

    invoke-static {v2, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v0, "NearMeStatistics"

    const-string v2, "addException finish."

    invoke-static {v0, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    const-string v2, "NearMeStatistics"

    const-string v3, "addException finish."

    invoke-static {v2, v3}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/oppo/statistics/b/f;)V
    .locals 6

    const/4 v1, 0x0

    const-string v0, "NearMeStatistics"

    const-string v2, "addPageVisit start."

    invoke-static {v0, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NearMeStatistics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type,body is: \n "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oppo/statistics/b/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oppo/statistics/b/f;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "page_visit_type"

    invoke-virtual {p1}, Lcom/oppo/statistics/b/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "page_visit_event_time"

    invoke-virtual {p1}, Lcom/oppo/statistics/b/f;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "page_visit_body"

    invoke-virtual {p1}, Lcom/oppo/statistics/b/f;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "table_page_visit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "addPageVisit finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "NearMeStatistics"

    invoke-static {v2, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "addPageVisit finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "NearMeStatistics"

    const-string v2, "addPageVisit finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/oppo/statistics/b/g;)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/oppo/statistics/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oppo/statistics/b/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oppo/statistics/b/g;->c()I

    move-result v3

    const-string v4, "NearMeStatistics"

    const-string v5, "addSpecialAppStart start."

    invoke-static {v4, v5}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "NearMeStatistics"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ssiod,time,appCode is: \n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "special_app_start_ssoid"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "special_app_start_time"

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "special_app_start_record_time"

    invoke-static {}, Lcom/oppo/statistics/g/j;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "special_app_start_appId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "table_special_app_start"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "addSpecialAppStart finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "NearMeStatistics"

    invoke-static {v2, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "addSpecialAppStart finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "NearMeStatistics"

    const-string v2, "addSpecialAppStart finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v7, "_id asc"

    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    if-eqz v8, :cond_2

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    if-lt v9, p2, :cond_0

    :cond_1
    :goto_0
    const-string v2, "_id <= ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v8}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_3
    const-string v2, "NearMeStatistics"

    invoke-static {v2, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v8}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    invoke-static {v1}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    move-object v8, v10

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_2

    :cond_2
    move v1, v9

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const-string v0, "NearMeStatistics"

    const-string v2, "addAppStart start."

    invoke-static {v0, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NearMeStatistics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ssiod,time is: \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_start_ssoid"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_start_time"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_start_record_time"

    invoke-static {}, Lcom/oppo/statistics/g/j;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "table_app_start"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "addAppStart finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "NearMeStatistics"

    invoke-static {v2, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "addAppStart finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "NearMeStatistics"

    const-string v2, "addAppStart finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 6

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidAppStart start."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "app_start_record_time < ? "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "table_app_start"

    invoke-virtual {v1, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidAppStart finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "NearMeStatistics"

    invoke-static {v2, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidAppStart finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "NearMeStatistics"

    const-string v2, "clearInvalidAppStart finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "NearMeStatistics"

    const-string v1, "clear uploaded info of UserAction. start"

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "table_action"

    invoke-static {p0, v0, p1}, Lcom/oppo/statistics/e/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "NearMeStatistics"

    const-string v1, "clear uploaded info of UserAction. end"

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 6

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidAppLog start."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "app_log_event_time < ? "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "table_app_log"

    invoke-virtual {v1, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidAppLog finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "NearMeStatistics"

    invoke-static {v2, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidAppLog finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "NearMeStatistics"

    const-string v2, "clearInvalidAppLog finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "NearMeStatistics"

    const-string v1, "clear uploaded info of AppLog. start"

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "table_app_log"

    invoke-static {p0, v0, p1}, Lcom/oppo/statistics/e/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "NearMeStatistics"

    const-string v1, "clear uploaded info of AppLog. end"

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 6

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidPageVisit start."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "page_visit_event_time < ? "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "table_page_visit"

    invoke-virtual {v1, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidPageVisit finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "NearMeStatistics"

    invoke-static {v2, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidPageVisit finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "NearMeStatistics"

    const-string v2, "clearInvalidPageVisit finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "NearMeStatistics"

    const-string v1, "clear uploaded info of PageVisit. start"

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "table_page_visit"

    invoke-static {p0, v0, p1}, Lcom/oppo/statistics/e/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "NearMeStatistics"

    const-string v1, "clear uploaded info of PageVisit. end"

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 6

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidException start."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "exception_event_time < ? "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "table_exception"

    invoke-virtual {v1, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidException finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "NearMeStatistics"

    invoke-static {v2, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidException finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "NearMeStatistics"

    const-string v2, "clearInvalidException finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static e(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "NearMeStatistics"

    const-string v1, "clear uploaded info of Exception. start"

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "table_exception"

    invoke-static {p0, v0, p1}, Lcom/oppo/statistics/e/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "NearMeStatistics"

    const-string v1, "clear uploaded info of Exception. end"

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)Ljava/util/LinkedList;
    .locals 10

    const/4 v8, 0x0

    const-string v7, "_id asc"

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "table_exception"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    :try_start_3
    invoke-static {v3}, Lcom/oppo/statistics/b/d;->a(Landroid/database/Cursor;)Lcom/oppo/statistics/b/d;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    if-lt v1, v4, :cond_0

    :cond_1
    move-object v1, v2

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v3}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v8

    :goto_2
    :try_start_5
    const-string v3, "NearMeStatistics"

    invoke-static {v3, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v2}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v8

    :goto_3
    invoke-static {v3}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v8

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v8, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :cond_2
    move-object v1, v8

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Ljava/util/LinkedList;
    .locals 10

    const/4 v8, 0x0

    const-string v7, "_id asc"

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "table_action"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    :try_start_3
    invoke-static {v3}, Lcom/oppo/statistics/b/i;->a(Landroid/database/Cursor;)Lcom/oppo/statistics/b/i;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1f4

    if-lt v1, v4, :cond_0

    :cond_1
    move-object v1, v2

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v3}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v8

    :goto_2
    :try_start_5
    const-string v3, "NearMeStatistics"

    invoke-static {v3, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v2}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v8

    :goto_3
    invoke-static {v3}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v8

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v8, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :cond_2
    move-object v1, v8

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Ljava/util/LinkedList;
    .locals 10

    const/4 v8, 0x0

    const-string v7, "_id asc"

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "table_app_start"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    :try_start_3
    invoke-static {v3}, Lcom/oppo/statistics/b/b;->a(Landroid/database/Cursor;)Lcom/oppo/statistics/b/b;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1f4

    if-lt v1, v4, :cond_0

    :cond_1
    move-object v1, v2

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v3}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v8

    :goto_2
    :try_start_5
    const-string v3, "NearMeStatistics"

    invoke-static {v3, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v2}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v8

    :goto_3
    invoke-static {v3}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v8

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v8, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :cond_2
    move-object v1, v8

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/util/LinkedList;
    .locals 10

    const/4 v8, 0x0

    const-string v7, "_id asc"

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "table_app_log"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    :try_start_3
    invoke-static {v3}, Lcom/oppo/statistics/b/a;->a(Landroid/database/Cursor;)Lcom/oppo/statistics/b/a;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x64

    if-lt v1, v4, :cond_0

    :cond_1
    move-object v1, v2

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v3}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v8

    :goto_2
    :try_start_5
    const-string v3, "NearMeStatistics"

    invoke-static {v3, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v2}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v8

    :goto_3
    invoke-static {v3}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v8

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v8, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :cond_2
    move-object v1, v8

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Ljava/util/LinkedList;
    .locals 10

    const/4 v8, 0x0

    const-string v7, "_id asc"

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "table_page_visit"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    :try_start_3
    invoke-static {v3}, Lcom/oppo/statistics/b/f;->a(Landroid/database/Cursor;)Lcom/oppo/statistics/b/f;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x64

    if-lt v1, v4, :cond_0

    :cond_1
    move-object v1, v2

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v3}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v8

    :goto_2
    :try_start_5
    const-string v3, "NearMeStatistics"

    invoke-static {v3, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v2}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v8

    :goto_3
    invoke-static {v3}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v8

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v8, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :cond_2
    move-object v1, v8

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)V
    .locals 8

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidSpecialAppStart start."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "special_app_start_record_time < ? OR special_app_start_record_time > ?"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long v4, v2, v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "table_special_app_start"

    invoke-virtual {v1, v2, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidSpecialAppStart finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "NearMeStatistics"

    invoke-static {v2, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "NearMeStatistics"

    const-string v1, "clearInvalidSpecialAppStart finish."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "NearMeStatistics"

    const-string v2, "clearInvalidSpecialAppStart finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static l(Landroid/content/Context;)Ljava/util/List;
    .locals 10

    const/4 v8, 0x0

    const-string v7, "_id asc"

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/c;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "table_special_app_start"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    :try_start_3
    invoke-static {v3}, Lcom/oppo/statistics/b/g;->a(Landroid/database/Cursor;)Lcom/oppo/statistics/b/g;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1f4

    if-lt v1, v4, :cond_0

    :cond_1
    move-object v1, v2

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v3}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v8

    :goto_2
    :try_start_5
    const-string v3, "NearMeStatistics"

    invoke-static {v3, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v2}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v8

    :goto_3
    invoke-static {v3}, Lcom/oppo/statistics/e/b;->a(Landroid/database/Cursor;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v8

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v8, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :cond_2
    move-object v1, v8

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)V
    .locals 2

    const-string v0, "NearMeStatistics"

    const-string v1, "clear uploaded info of SpecialAppStart. start"

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "table_special_app_start"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oppo/statistics/e/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "NearMeStatistics"

    const-string v1, "clear uploaded info of SpecialAppStart. end"

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
