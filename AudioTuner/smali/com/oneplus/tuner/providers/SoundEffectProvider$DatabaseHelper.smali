.class final Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SoundEffectProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/providers/SoundEffectProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mSavedRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const-string v0, "soundeffect.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->mSavedRecords:Ljava/util/ArrayList;

    .line 104
    return-void
.end method

.method private addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "columnType"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 425
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALTER TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ADD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "updateSql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 429
    if-eqz p5, :cond_1

    .line 430
    const-string v2, "text"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 435
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 440
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 448
    .end local v1    # "updateSql":Ljava/lang/String;
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v2

    .line 446
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 443
    :catch_1
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private createDownloadedSoundEffectTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 293
    const-string v0, "CREATE TABLE downloadedSoundEffects (_id INTEGER PRIMARY KEY,_style TEXT NOT NULL,_model TEXT,_user_name TEXT,_comment TEXT,_time LONG,_commend INTEGER,_local INTEGER DEFAULT 0,_using INTEGER DEFAULT 0,_share_id INTEGER DEFAULT -1,_eq TEXT,_volume_strengthen FLOAT,_speaker_expansion FLOAT,_volume_balance FLOAT,_bass_boost FLOAT,_transparent_treble FLOAT,_clear_vocal FLOAT,_channel_equalization FLOAT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method private createSearchHistoryTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 316
    const-string v0, "CREATE TABLE searchHistory (_id INTEGER PRIMARY KEY,_keyword TEXT NOT NULL,_lasttime LONG,_count INTEGER DEFAULT 0,UNIQUE (_keyword) ON CONFLICT REPLACE );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method private createSoundEffectTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 270
    const-string v0, "CREATE TABLE soundEffects (_id INTEGER PRIMARY KEY,_style TEXT NOT NULL,_model TEXT,_user_name TEXT,_comment TEXT,_time LONG,_commend INTEGER,_local INTEGER DEFAULT 0,_using INTEGER DEFAULT 0,_share_id INTEGER DEFAULT -1,_eq TEXT,_volume_strengthen FLOAT,_speaker_expansion FLOAT,_volume_balance FLOAT,_bass_boost FLOAT,_transparent_treble FLOAT,_clear_vocal FLOAT,_channel_equalization FLOAT,_category_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method private createWebCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 326
    const-string v0, "CREATE TABLE webCache (_id INTEGER PRIMARY KEY,_model TEXT NOT NULL,_comment TEXT,_setting TEXT,_user_name TEXT,_explanation TEXT,_commend INTEGER,_time LONG);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private onRestoreDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 211
    const-string v1, "SoundEffectProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestoreDatabase start size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->mSavedRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 218
    :goto_0
    iget-object v1, p0, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->mSavedRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->mSavedRecords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 222
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "soundEffects"

    const-string v2, "effect"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 230
    .end local v0    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 226
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 234
    const-string v1, "SoundEffectProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestoreDatabase end size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->mSavedRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private onSaveDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    .line 145
    const-string v0, "SoundEffectProvider"

    const-string v1, "onSaveDatabase start"

    invoke-static {v0, v1}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "soundEffects"

    sget-object v2, Lcom/oneplus/tuner/providers/Tables$SoundEffect;->PROJECTION:[Ljava/lang/String;

    const-string v7, "_id ASC"

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 151
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v9, "values":Landroid/content/ContentValues;
    const-string v0, "_style"

    const-string v1, "_style"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "_model"

    const-string v1, "_model"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "_user_name"

    const-string v1, "_user_name"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "_comment"

    const-string v1, "_comment"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "_commend"

    const-string v1, "_commend"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v0, "_time"

    const-string v1, "_time"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v0, "_using"

    const-string v1, "_using"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v0, "_local"

    const-string v1, "_local"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v0, "_share_id"

    const-string v1, "_share_id"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v0, "_eq"

    const-string v1, "_eq"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "_volume_strengthen"

    const-string v1, "_volume_strengthen"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 181
    const-string v0, "_speaker_expansion"

    const-string v1, "_speaker_expansion"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 183
    const-string v0, "_volume_balance"

    const-string v1, "_volume_balance"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 185
    const-string v0, "_bass_boost"

    const-string v1, "_bass_boost"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 187
    const-string v0, "_transparent_treble"

    const-string v1, "_transparent_treble"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 190
    const-string v0, "_clear_vocal"

    const-string v1, "_clear_vocal"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 192
    const-string v0, "_channel_equalization"

    const-string v1, "_channel_equalization"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 196
    const-string v0, "_category_id"

    const-string v1, "_category_id"

    invoke-static {v8, v1}, Lcom/oneplus/tuner/providers/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->mSavedRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 204
    const-string v0, "SoundEffectProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveDatabase end size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->mSavedRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 241
    const-string v0, "DROP TABLE IF EXISTS soundEffects"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    const-string v0, "DROP TABLE IF EXISTS downloadedSoundEffects"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 244
    const-string v0, "DROP TABLE IF EXISTS searchHistory"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    const-string v0, "DROP TABLE IF EXISTS webCache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->createSoundEffectTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 258
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->createDownloadedSoundEffectTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 259
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->createSearchHistoryTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 260
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->createWebCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 267
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->createSoundEffectTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->createDownloadedSoundEffectTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->createSearchHistoryTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->createWebCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 119
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 141
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v0, 0x1

    .line 124
    if-ne p2, v0, :cond_0

    .line 126
    const-string v2, "soundEffects"

    const-string v3, "_category_id"

    const-string v4, "INTEGER"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->onSaveDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectProvider$DatabaseHelper;->onRestoreDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 134
    return-void
.end method
