.class public Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;
.super Ljava/lang/Object;
.source "OPFingerPrintDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;
    }
.end annotation


# static fields
.field private static final COLUMN_ID:Ljava/lang/String; = "finger_id"

.field private static final COLUMN_NAME:Ljava/lang/String; = "finger_name"

.field private static final DB_NAME:Ljava/lang/String; = "opfinger_data.db"

.field private static final ORDER_ID:Ljava/lang/String; = "order_id"

.field private static final SQL_CREATE_ENTRIES:Ljava/lang/String; = "CREATE TABLE opfinger (_id INTEGER PRIMARY KEY AUTOINCREMENT,order_id INTEGER,finger_id INTEGER,finger_name STRING);"

.field private static final TABLE:Ljava/lang/String; = "opfinger"


# instance fields
.field private mDbHelper:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;->mDbHelper:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;

    .line 31
    return-void
.end method


# virtual methods
.method public addId(ILjava/lang/String;I)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "shortcut"    # Ljava/lang/String;
    .param p3, "fingerId"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;->mDbHelper:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;

    invoke-virtual {v5}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 53
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "finger_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string v5, "finger_name"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v5, "opfinger"

    const-string v6, "finger_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 61
    .local v1, "updated":I
    const-wide/16 v2, 0x0

    .line 62
    .local v2, "status":J
    if-nez v1, :cond_0

    .line 63
    const-string v5, "opfinger"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 68
    :cond_1
    return-void

    .line 65
    .end local v1    # "updated":I
    .end local v2    # "status":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v5
.end method

.method public addOPFingerId(ILjava/lang/String;)V
    .locals 16
    .param p1, "id"    # I
    .param p2, "shortcut"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 79
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;->mDbHelper:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;

    invoke-virtual {v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 80
    const-string v3, "opfinger"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "order_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "order_id DESC"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 81
    const/4 v11, 0x0

    .line 82
    .local v11, "index":I
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const-string v3, "order_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 85
    :cond_0
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v15, "values":Landroid/content/ContentValues;
    const-string v3, "order_id"

    add-int/lit8 v4, v11, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v3, "finger_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v3, "finger_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    rem-int/lit8 v5, v11, 0x5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v3, "opfinger"

    const-string v4, "finger_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v15, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 94
    .local v14, "updated":I
    const-wide/16 v12, 0x0

    .line 95
    .local v12, "status":J
    if-nez v14, :cond_1

    .line 96
    const-string v3, "opfinger"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    if-eqz v2, :cond_2

    .line 99
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 101
    :cond_2
    return-void

    .line 98
    .end local v11    # "index":I
    .end local v12    # "status":J
    .end local v14    # "updated":I
    .end local v15    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 99
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v3
.end method

.method public deleteAllFingers()V
    .locals 4

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;->mDbHelper:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 186
    const-string v1, "opfinger"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 191
    :cond_0
    return-void

    .line 188
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v1
.end method

.method public deleteFinger(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;->mDbHelper:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 201
    const-string v1, "opfinger"

    const-string v2, "finger_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 206
    :cond_0
    return-void

    .line 203
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v1
.end method

.method public getAllFingers()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v10, "opFingerPrintEntitys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;>;"
    const/4 v0, 0x0

    .line 135
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 137
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;->mDbHelper:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 138
    const-string v1, "opfinger"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 143
    if-eqz v8, :cond_1

    .line 144
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    new-instance v9, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-direct {v9}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;-><init>()V

    .line 146
    .local v9, "entity":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    const-string v1, "finger_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->setOpfingerId(I)V

    .line 147
    const-string v1, "finger_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->setOpfingerName(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    .end local v9    # "entity":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    throw v1

    .line 152
    :cond_1
    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 155
    :cond_2
    return-object v10
.end method

.method public getIds()[I
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 312
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;->mDbHelper:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 314
    const-string v1, "opfinger"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "finger_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 317
    if-nez v8, :cond_2

    .line 336
    if-eqz v8, :cond_0

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_0
    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    :goto_0
    return-object v12

    .line 320
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 336
    if-eqz v8, :cond_3

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_3
    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 323
    :cond_4
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    .line 324
    .local v11, "length":I
    if-nez v11, :cond_6

    .line 336
    if-eqz v8, :cond_5

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_5
    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 327
    :cond_6
    :try_start_3
    new-array v12, v11, [I

    .line 328
    .local v12, "result":[I
    const/4 v9, 0x0

    .local v9, "i":I
    move v10, v9

    .line 330
    .end local v9    # "i":I
    .local v10, "i":I
    :goto_1
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    const-string v1, "finger_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v12, v10

    .line 331
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_a

    .line 336
    if-eqz v8, :cond_7

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_7
    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 336
    .end local v9    # "i":I
    .end local v11    # "length":I
    .end local v12    # "result":[I
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_8

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_8
    if-eqz v0, :cond_9

    .line 339
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    throw v1

    .restart local v9    # "i":I
    .restart local v11    # "length":I
    .restart local v12    # "result":[I
    :cond_a
    move v10, v9

    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_1
.end method

.method public getOPFingerCount()I
    .locals 10

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 110
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 112
    .local v8, "count":I
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;->mDbHelper:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 113
    const-string v1, "opfinger"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 118
    if-eqz v9, :cond_1

    .line 119
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 122
    .end local v8    # "count":I
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 125
    :cond_0
    :goto_0
    return v8

    .line 122
    .restart local v8    # "count":I
    :cond_1
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v1
.end method

.method public getRandonIDByFingerID(I)I
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v8, -0x1

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 284
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;->mDbHelper:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 286
    const-string v1, "opfinger"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "finger_id"

    aput-object v4, v2, v3

    const-string v3, "finger_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 291
    if-nez v9, :cond_2

    .line 301
    if-eqz v9, :cond_0

    .line 302
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_0
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    :goto_0
    return v8

    .line 294
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 301
    if-eqz v9, :cond_3

    .line 302
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_3
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 297
    :cond_4
    :try_start_2
    const-string v1, "finger_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    .line 301
    .local v8, "RandonID":I
    if-eqz v9, :cond_5

    .line 302
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_5
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 301
    .end local v8    # "RandonID":I
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    .line 302
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_6
    if-eqz v0, :cond_7

    .line 304
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v1
.end method

.method public getShortcut(I)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v9, 0x0

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 256
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;->mDbHelper:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 258
    const-string v1, "opfinger"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "finger_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "finger_name"

    aput-object v4, v2, v3

    const-string v3, "finger_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 263
    if-nez v8, :cond_2

    .line 273
    if-eqz v8, :cond_0

    .line 274
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_0
    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    :goto_0
    return-object v9

    .line 266
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 273
    if-eqz v8, :cond_3

    .line 274
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_3
    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 269
    :cond_4
    :try_start_2
    const-string v1, "finger_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 273
    .local v9, "shortcut":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 274
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_5
    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 273
    .end local v9    # "shortcut":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    .line 274
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_6
    if-eqz v0, :cond_7

    .line 276
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v1
.end method

.method public hasFingersId(I)Z
    .locals 11
    .param p1, "fingerId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 167
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;->mDbHelper:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 168
    const-string v1, "opfinger"

    const/4 v2, 0x0

    const-string v3, "finger_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 169
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_1

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    move v1, v9

    .line 176
    :goto_0
    return v1

    .line 173
    :cond_1
    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    move v1, v10

    .line 176
    goto :goto_0

    .line 173
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v1
.end method

.method public isEnrolled(I)Z
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 230
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;->mDbHelper:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 232
    const-string v1, "opfinger"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "finger_id"

    aput-object v4, v2, v3

    const-string v3, "finger_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 237
    if-nez v8, :cond_2

    .line 246
    if-eqz v8, :cond_0

    .line 247
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_0
    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    move v1, v9

    :goto_0
    return v1

    .line 240
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_5

    .line 246
    if-eqz v8, :cond_3

    .line 247
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_3
    if-eqz v0, :cond_4

    .line 249
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    move v1, v9

    goto :goto_0

    .line 246
    :cond_5
    if-eqz v8, :cond_6

    .line 247
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_6
    if-eqz v0, :cond_7

    .line 249
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    move v1, v10

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_8

    .line 247
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_8
    if-eqz v0, :cond_9

    .line 249
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    throw v1
.end method

.method public remove(I)Z
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;->mDbHelper:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;

    invoke-virtual {v4}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 38
    const-string v4, "opfinger"

    const-string v5, "finger_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 41
    .local v1, "rowsRemoved":I
    if-lez v1, :cond_1

    .line 43
    :goto_0
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return v2

    :cond_1
    move v2, v3

    .line 41
    goto :goto_0

    .line 43
    .end local v1    # "rowsRemoved":I
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v2
.end method

.method public renameFinger(ILjava/lang/String;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "opfingerName"    # Ljava/lang/String;

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;->mDbHelper:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 217
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "finger_name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v2, "opfinger"

    const-string v3, "finger_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 224
    :cond_0
    return-void

    .line 221
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v2
.end method
