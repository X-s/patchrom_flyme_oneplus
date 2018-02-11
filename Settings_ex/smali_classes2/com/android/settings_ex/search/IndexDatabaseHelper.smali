.class public Lcom/android/settings_ex/search/IndexDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IndexDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/search/IndexDatabaseHelper$IndexColumns;,
        Lcom/android/settings_ex/search/IndexDatabaseHelper$MetaColumns;,
        Lcom/android/settings_ex/search/IndexDatabaseHelper$SavedQueriesColums;,
        Lcom/android/settings_ex/search/IndexDatabaseHelper$Tables;
    }
.end annotation


# static fields
.field private static final CREATE_INDEX_TABLE:Ljava/lang/String; = "CREATE VIRTUAL TABLE prefs_index USING fts4(locale, data_rank, data_title, data_title_normalized, data_summary_on, data_summary_on_normalized, data_summary_off, data_summary_off_normalized, data_entries, data_keywords, screen_title, class_name, icon, intent_action, intent_target_package, intent_target_class, enabled, data_key_reference, user_id);"

.field private static final CREATE_META_TABLE:Ljava/lang/String; = "CREATE TABLE meta_index(build VARCHAR(32) NOT NULL)"

.field private static final CREATE_SAVED_QUERIES_TABLE:Ljava/lang/String; = "CREATE TABLE saved_queries(query VARCHAR(64) NOT NULL, timestamp INTEGER)"

.field private static final DATABASE_NAME:Ljava/lang/String; = "search_index.db"

.field private static final DATABASE_VERSION:I = 0x73

.field private static final INDEX:Ljava/lang/String; = "index"

.field private static final INSERT_BUILD_VERSION:Ljava/lang/String;

.field private static final SELECT_BUILD_VERSION:Ljava/lang/String; = "SELECT build FROM meta_index LIMIT 1;"

.field private static final TAG:Ljava/lang/String; = "IndexDatabaseHelper"

.field private static sSingleton:Lcom/android/settings_ex/search/IndexDatabaseHelper;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "INSERT INTO meta_index VALUES (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string/jumbo v1, "\');"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    sput-object v0, Lcom/android/settings_ex/search/IndexDatabaseHelper;->INSERT_BUILD_VERSION:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    const-string/jumbo v0, "search_index.db"

    const/4 v1, 0x0

    const/16 v2, 0x73

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 149
    iput-object p1, p0, Lcom/android/settings_ex/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    .line 147
    return-void
.end method

.method private bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 158
    const-string/jumbo v0, "CREATE VIRTUAL TABLE prefs_index USING fts4(locale, data_rank, data_title, data_title_normalized, data_summary_on, data_summary_on_normalized, data_summary_off, data_summary_off_normalized, data_entries, data_keywords, screen_title, class_name, icon, intent_action, intent_target_package, intent_target_class, enabled, data_key_reference, user_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v0, "CREATE TABLE meta_index(build VARCHAR(32) NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    const-string/jumbo v0, "CREATE TABLE saved_queries(query VARCHAR(64) NOT NULL, timestamp INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/android/settings_ex/search/IndexDatabaseHelper;->INSERT_BUILD_VERSION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v0, "IndexDatabaseHelper"

    const-string/jumbo v1, "Bootstrapped database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public static clearLocalesIndexed(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    const-string/jumbo v0, "index"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 221
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/search/IndexDatabaseHelper;->clearLocalesIndexed(Landroid/content/Context;)V

    .line 235
    const-string/jumbo v0, "DROP TABLE IF EXISTS meta_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    const-string/jumbo v0, "DROP TABLE IF EXISTS prefs_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    const-string/jumbo v0, "DROP TABLE IF EXISTS saved_queries"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private getBuildVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 204
    const/4 v2, 0x0

    .line 205
    .local v2, "version":Ljava/lang/String;
    const/4 v0, 0x0

    .line 207
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v3, "SELECT build FROM meta_index LIMIT 1;"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 208
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 214
    .end local v2    # "version":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 218
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v2

    .line 211
    .restart local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "IndexDatabaseHelper"

    const-string/jumbo v4, "Cannot get build version from Index metadata"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    if-eqz v0, :cond_1

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 213
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 214
    if-eqz v0, :cond_2

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_2
    throw v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/IndexDatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/settings_ex/search/IndexDatabaseHelper;

    monitor-enter v1

    .line 141
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings_ex/search/IndexDatabaseHelper;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/android/settings_ex/search/IndexDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/search/IndexDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings_ex/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings_ex/search/IndexDatabaseHelper;

    .line 144
    :cond_0
    sget-object v0, Lcom/android/settings_ex/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings_ex/search/IndexDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isLocaleAlreadyIndexed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 230
    const-string/jumbo v0, "index"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/settings_ex/search/IndexDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/android/settings_ex/search/IndexDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 198
    return-void
.end method

.method public static setLocaleIndexed(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string/jumbo v0, "index"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings_ex/search/IndexDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 153
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 192
    const-string/jumbo v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Detected schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    const-string/jumbo v2, "Index needs to be rebuilt for schema version \'"

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    const-string/jumbo v2, "\'."

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0, p1}, Lcom/android/settings_ex/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 191
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 169
    const-string/jumbo v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Using schema version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings_ex/search/IndexDatabaseHelper;->getBuildVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string/jumbo v0, "IndexDatabaseHelper"

    const-string/jumbo v1, "Index needs to be rebuilt as build-version is not the same"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0, p1}, Lcom/android/settings_ex/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 166
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string/jumbo v0, "IndexDatabaseHelper"

    const-string/jumbo v1, "Index is fine"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 182
    const/16 v0, 0x73

    if-ge p2, v0, :cond_0

    .line 183
    const-string/jumbo v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Detected schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    const-string/jumbo v2, "Index needs to be rebuilt for schema version \'"

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    const-string/jumbo v2, "\'."

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0, p1}, Lcom/android/settings_ex/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 181
    :cond_0
    return-void
.end method
