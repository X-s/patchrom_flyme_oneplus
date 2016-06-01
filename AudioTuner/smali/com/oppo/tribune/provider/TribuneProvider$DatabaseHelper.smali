.class Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;
.super Ljava/lang/Object;
.source "TribuneProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/provider/TribuneProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    iput-object p1, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    iget-object v0, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Copy mDatabase failed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-nez v0, :cond_3

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 87
    iget-object v0, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 91
    iget-object v0, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 93
    :cond_2
    return-void

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0
.end method

.method private openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 103
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/data/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/databases"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "DATABASE_PATH":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "forum.db"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "databaseFilename":Ljava/lang/String;
    const/4 v10, 0x0

    .line 112
    .local v10, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 114
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v5, "dir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 116
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v11

    if-nez v11, :cond_3

    .line 117
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "make dir error"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    .end local v5    # "dir":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 142
    .local v6, "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v8, :cond_0

    .line 143
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 146
    :cond_0
    if-eqz v10, :cond_1

    .line 147
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 156
    iget-object v11, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v11, :cond_2

    .line 157
    iget-object v11, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-object v3

    .line 122
    .restart local v5    # "dir":Ljava/io/File;
    :cond_3
    :try_start_3
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_5

    .line 123
    iget-object v11, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f060000

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 124
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/16 v11, 0x2000

    :try_start_4
    new-array v1, v11, [B

    .line 126
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 127
    .local v2, "count":I
    :goto_3
    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_4

    .line 128
    const/4 v11, 0x0

    invoke-virtual {v9, v1, v11, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 140
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    :catch_1
    move-exception v6

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 131
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 132
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v8, v9

    .line 135
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :cond_5
    const/4 v11, 0x0

    const/high16 v12, 0x10000000

    :try_start_5
    invoke-static {v4, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v3

    .line 156
    .local v3, "database":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v11, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v11, :cond_2

    .line 157
    iget-object v11, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 149
    .end local v3    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "dir":Ljava/io/File;
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 150
    .local v7, "e1":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 151
    .end local v7    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :try_start_7
    throw v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 156
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    :goto_4
    iget-object v12, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v12, :cond_6

    .line 157
    iget-object v12, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v11

    .line 156
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "dir":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/oppo/tribune/provider/TribuneProvider$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 167
    return-void
.end method
