.class public Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AssetsSQLiteOpenHelper.java"


# instance fields
.field private final mResName:Ljava/lang/String;

.field private final mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "resName"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 41
    invoke-static {p4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 42
    iput-object p4, p0, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;->mResName:Ljava/lang/String;

    .line 43
    iput p3, p0, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;->mVersion:I

    .line 44
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static executeSqlFromResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v2, 0x0

    .line 78
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1}, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;->loadSqlFromResource(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    new-instance v4, Landroid/database/sqlite/SQLiteException;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteException;-><init>()V

    throw v4

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Landroid/database/sqlite/SQLiteException;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteException;-><init>()V

    throw v4

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 89
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 92
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 96
    return-void
.end method

.method public static loadSqlFromResource(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 100
    const-class v7, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;

    invoke-virtual {v7, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 102
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 106
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/oppo/tribune/util/FileUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "text":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v3, v0, v1

    .line 109
    .local v3, "item":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 110
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 113
    :cond_0
    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v3    # "item":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v9}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v5

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v2, v9}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v7
.end method

.method private updateToCurrent(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;->onSaveRecords(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 63
    iget-object v0, p0, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;->mResName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;->executeSqlFromResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;->onRestoreRecords(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 65
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 48
    iget v0, p0, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;->mVersion:I

    iget v1, p0, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;->mVersion:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;->updateToCurrent(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 49
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;->updateToCurrent(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 58
    return-void
.end method

.method protected onRestoreRecords(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 73
    return-void
.end method

.method protected onSaveRecords(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 69
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/tribune/provider/AssetsSQLiteOpenHelper;->updateToCurrent(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 54
    return-void
.end method
