.class public Lcom/oneplus/tuner/database/OnePlusDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "OnePlusDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/database/OnePlusDbHelper$RecentlyUsedConfigTableColumns;,
        Lcom/oneplus/tuner/database/OnePlusDbHelper$RecentlyUsedConfigIdTableColumns;,
        Lcom/oneplus/tuner/database/OnePlusDbHelper$DownloadConfigIdTableColumns;,
        Lcom/oneplus/tuner/database/OnePlusDbHelper$UserCollectionTableColumns;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "oneplus_tuner.db"

.field private static final DB_VERSION:I = 0x1

.field public static final DownloadConfigIdTable:Ljava/lang/String; = "download_config_id"

.field public static final RecentlyUsedConfigIdTable:Ljava/lang/String; = "recently_used_config_id"

.field public static final RecentlyUsedConfigTable:Ljava/lang/String; = "recently_used_config"

.field private static final TAG:Ljava/lang/String; = "shuqi"

.field public static final UserCollectionTable:Ljava/lang/String; = "user_collection"

.field private static mInstance:Lcom/oneplus/tuner/database/OnePlusDbHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-string v0, "oneplus_tuner.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 21
    return-void
.end method

.method private createDownloadConfigIdTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 62
    const-string v0, "shuqi"

    const-string v1, "OnePlusDbHelper createDownloadConfigIdTable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v0, "CREATE TABLE download_config_id (_id INTEGER PRIMARY KEY,_config_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private createRecentleUsedConfigIdTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 69
    const-string v0, "shuqi"

    const-string v1, "OnePlusDbHelper createRecentleUsedConfigIdTable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, "CREATE TABLE recently_used_config_id (_id INTEGER PRIMARY KEY,_config_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private createRecentleUsedConfigTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 78
    const-string v0, "shuqi"

    const-string v1, "OnePlusDbHelper createRecentleUsedConfigTable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v0, "CREATE TABLE recently_used_config (_id INTEGER PRIMARY KEY,_style TEXT NOT NULL,_model TEXT,_user_name TEXT,_comment TEXT,_time LONG,_commend INTEGER,_local INTEGER DEFAULT 0,_using INTEGER DEFAULT 0,_config_id INTEGER DEFAULT -1,_category_id INTEGER,_download_num INTEGER,_lastUsedTime LONG,_params TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private createUserCollectionTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 52
    const-string v0, "shuqi"

    const-string v1, "OnePlusDbHelper createUserCollectionTable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v0, "CREATE TABLE user_collection (_id INTEGER PRIMARY KEY,_config_id INTEGER,_status INTEGER,_is_dirty INTEGER,_update_time LONG);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/tuner/database/OnePlusDbHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lcom/oneplus/tuner/database/OnePlusDbHelper;->mInstance:Lcom/oneplus/tuner/database/OnePlusDbHelper;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/oneplus/tuner/database/OnePlusDbHelper;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/oneplus/tuner/database/OnePlusDbHelper;->mInstance:Lcom/oneplus/tuner/database/OnePlusDbHelper;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/oneplus/tuner/database/OnePlusDbHelper;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/database/OnePlusDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/tuner/database/OnePlusDbHelper;->mInstance:Lcom/oneplus/tuner/database/OnePlusDbHelper;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/oneplus/tuner/database/OnePlusDbHelper;->mInstance:Lcom/oneplus/tuner/database/OnePlusDbHelper;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 38
    const-string v0, "shuqi"

    const-string v1, "OnePlusDbHelper onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/database/OnePlusDbHelper;->createUserCollectionTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/database/OnePlusDbHelper;->createDownloadConfigIdTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/database/OnePlusDbHelper;->createRecentleUsedConfigIdTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/database/OnePlusDbHelper;->createRecentleUsedConfigTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 49
    return-void
.end method
