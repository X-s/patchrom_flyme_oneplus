.class public abstract Lcom/android/server/PersistSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "PersistSQLiteOpenHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mEnableWriteAheadLogging:Z

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/server/PersistSQLiteOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/PersistSQLiteOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 27
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PersistSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version must be >= 1, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 37
    iput p4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mNewVersion:I

    .line 38
    iput-object p5, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 154
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v1, "/persist/lock_setting"

    .line 144
    .local v1, "lockDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 148
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/persist/lock_setting/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    iget-object v3, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 114
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v3, :cond_2

    .line 115
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "getReadableDatabase called recursively"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 118
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/PersistSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    iget-object v3, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v3, :cond_3

    throw v1

    .line 121
    :cond_3
    sget-object v3, Lcom/android/server/PersistSQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for writing (will try read-only):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mIsInitializing:Z

    .line 126
    iget-object v3, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/PersistSQLiteOpenHelper;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    iget v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mNewVersion:I

    if-eq v3, v4, :cond_5

    .line 129
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t upgrade read-only database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    .end local v2    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v3

    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mIsInitializing:Z

    .line 138
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 132
    .restart local v2    # "path":Ljava/lang/String;
    :cond_5
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/android/server/PersistSQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 133
    sget-object v3, Lcom/android/server/PersistSQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opened "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in read-only mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput-object v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 135
    iget-object v3, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 137
    const/4 v4, 0x0

    :try_start_7
    iput-boolean v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mIsInitializing:Z

    .line 138
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 7

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 64
    :cond_1
    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v4, :cond_2

    .line 65
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "getWritableDatabase called recursively"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 68
    :cond_2
    const/4 v2, 0x0

    .line 69
    .local v2, "success":Z
    const/4 v0, 0x0

    .line 71
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mIsInitializing:Z

    .line 72
    iget-object v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 73
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 79
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 80
    .local v3, "version":I
    iget v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mNewVersion:I

    if-eq v3, v4, :cond_3

    .line 81
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    if-nez v3, :cond_6

    .line 84
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/server/PersistSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 88
    :goto_2
    iget v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 89
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 94
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/PersistSQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 95
    const/4 v2, 0x1

    .line 98
    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mIsInitializing:Z

    .line 99
    if-eqz v2, :cond_9

    .line 100
    iget-object v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_4

    .line 101
    :try_start_6
    iget-object v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 103
    :cond_4
    :goto_3
    :try_start_7
    iput-object v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 75
    .end local v3    # "version":I
    :cond_5
    :try_start_8
    iget-object v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/PersistSQLiteOpenHelper;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const v5, 0x10000010

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v0

    goto :goto_1

    .line 86
    .end local v1    # "path":Ljava/lang/String;
    .restart local v3    # "version":I
    :cond_6
    :try_start_9
    iget v4, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/PersistSQLiteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 91
    :catchall_1
    move-exception v4

    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 98
    .end local v3    # "version":I
    :catchall_2
    move-exception v4

    const/4 v5, 0x0

    :try_start_b
    iput-boolean v5, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mIsInitializing:Z

    .line 99
    if-eqz v2, :cond_a

    .line 100
    iget-object v5, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v5, :cond_7

    .line 101
    :try_start_c
    iget-object v5, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 103
    :cond_7
    :goto_4
    :try_start_d
    iput-object v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    :cond_8
    :goto_5
    throw v4

    .restart local v3    # "version":I
    :cond_9
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .end local v3    # "version":I
    :cond_a
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    .line 101
    :catch_0
    move-exception v5

    goto :goto_4

    .restart local v3    # "version":I
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 160
    return-void
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 167
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t downgrade database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 171
    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    if-eq v0, p1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    if-eqz p1, :cond_2

    .line 50
    iget-object v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 55
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    .line 57
    :cond_1
    monitor-exit p0

    .line 58
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/android/server/PersistSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
