.class public Lcom/oppo/tribune/tool/FileHandler;
.super Ljava/lang/Object;
.source "FileHandler.java"


# static fields
.field private static mFileHandler:Lcom/oppo/tribune/tool/FileHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/oppo/tribune/tool/FileHandler;

    invoke-direct {v0}, Lcom/oppo/tribune/tool/FileHandler;-><init>()V

    sput-object v0, Lcom/oppo/tribune/tool/FileHandler;->mFileHandler:Lcom/oppo/tribune/tool/FileHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/oppo/tribune/tool/FileHandler;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/oppo/tribune/tool/FileHandler;->mFileHandler:Lcom/oppo/tribune/tool/FileHandler;

    return-object v0
.end method


# virtual methods
.method public calculateFileSize(Ljava/io/File;)J
    .locals 10
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 175
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 176
    :cond_0
    const-wide/16 v6, 0x0

    .line 186
    :cond_1
    return-wide v6

    .line 178
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 179
    .local v2, "files":[Ljava/io/File;
    const-wide/16 v6, 0x0

    .line 181
    .local v6, "size":J
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 182
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 181
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public calculateSize(Ljava/io/File;)J
    .locals 10
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 152
    :cond_0
    const-wide/16 v6, 0x0

    .line 164
    :cond_1
    return-wide v6

    .line 154
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 155
    .local v2, "files":[Ljava/io/File;
    const-wide/16 v6, 0x0

    .line 157
    .local v6, "size":J
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 158
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 159
    invoke-virtual {p0, v1}, Lcom/oppo/tribune/tool/FileHandler;->calculateSize(Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 157
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    :cond_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 161
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_1
.end method

.method public deleteFile(Ljava/io/File;)Z
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "success":Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/tool/FileHandler;->deleteFile(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public deleteFiles(Ljava/io/File;J)I
    .locals 10
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "time"    # J

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "deletedFiles":I
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 126
    .local v4, "files":[Ljava/io/File;
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, v0, v5

    .line 127
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 128
    invoke-virtual {p0, v1, p2, p3}, Lcom/oppo/tribune/tool/FileHandler;->deleteFiles(Ljava/io/File;J)I

    move-result v7

    add-int/2addr v2, v7

    .line 130
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v7, v8, p2

    if-gez v7, :cond_1

    .line 131
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 126
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return v2
.end method

.method public deleteFiles(Ljava/lang/String;)V
    .locals 6
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "dirFile":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    if-gtz v5, :cond_1

    .line 78
    :cond_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 76
    .local v2, "file":Ljava/io/File;
    invoke-virtual {p0, v2}, Lcom/oppo/tribune/tool/FileHandler;->deleteFile(Ljava/io/File;)Z

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public deleteOverdueFiles(Ljava/lang/String;J)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 115
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/oppo/tribune/tool/FileHandler;->deleteFiles(Ljava/io/File;J)I

    move-result v0

    return v0
.end method

.method public fileExist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public writeFile(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 37
    if-eqz p2, :cond_1

    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v4, "file":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v2, v6, [B

    .line 43
    .local v2, "buffer":[B
    const/4 v5, 0x0

    .line 44
    .local v5, "len":I
    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2

    .line 45
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 47
    .end local v2    # "buffer":[B
    .end local v5    # "len":I
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 48
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    if-eqz v0, :cond_0

    .line 52
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 59
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 65
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_1
    :goto_3
    return-void

    .line 50
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "len":I
    :cond_2
    if-eqz v1, :cond_3

    .line 52
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 59
    :cond_3
    :goto_4
    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 60
    :catch_1
    move-exception v3

    .line 61
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 53
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 54
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 53
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "len":I
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 54
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 60
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 61
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 50
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v0, :cond_4

    .line 52
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 59
    :cond_4
    :goto_6
    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 62
    :goto_7
    throw v6

    .line 53
    :catch_5
    move-exception v3

    .line 54
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 60
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 61
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 50
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_5

    .line 47
    .end local v4    # "file":Ljava/io/File;
    :catch_7
    move-exception v3

    goto :goto_1
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/oppo/tribune/tool/FileHandler;->writeFile(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 31
    return-void
.end method
