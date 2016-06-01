.class public Lcom/oppo/tribune/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/oppo/tribune/util/FileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/util/FileUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static basename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 102
    if-nez p0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object p0

    .line 106
    :cond_1
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 107
    .local v0, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 108
    .local v1, "length":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    if-ge v2, v1, :cond_0

    .line 109
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 297
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 298
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 302
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    invoke-static {p0, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 310
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 308
    :cond_0
    invoke-static {p0, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {p0, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v4
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "fileFrom":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v3

    .line 187
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v2, "fileTo":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 189
    goto :goto_0

    .line 192
    :cond_2
    invoke-static {v2}, Lcom/oppo/tribune/util/FileUtils;->makeSureFileExist(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    :try_start_0
    invoke-static {v1, v2}, Lcom/oppo/tribune/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 199
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 209
    const/4 v2, 0x0

    .line 210
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 213
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 219
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    const/16 v0, 0x400

    .line 220
    .local v0, "BUFFER_SIZE":I
    const/16 v7, 0x1000

    :try_start_2
    new-array v1, v7, [B

    .line 222
    .local v1, "b":[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 223
    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 229
    .end local v1    # "b":[B
    .end local v6    # "len":I
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v0    # "BUFFER_SIZE":I
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :goto_1
    invoke-static {v4, v8}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 230
    invoke-static {v2, v8}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v7

    .line 226
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "BUFFER_SIZE":I
    .restart local v1    # "b":[B
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "len":I
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    invoke-static {v5, v8}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 230
    invoke-static {v3, v8}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 232
    return-void

    .line 229
    .end local v0    # "BUFFER_SIZE":I
    .end local v1    # "b":[B
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "len":I
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v7

    goto :goto_1

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const/16 v0, 0x400

    .line 244
    .local v0, "BUFFER_SIZE":I
    const/16 v3, 0x1000

    new-array v1, v3, [B

    .line 246
    .local v1, "b":[B
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 247
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 250
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_0
.end method

.method public static download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pathname"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 254
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v5

    .line 258
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 266
    invoke-static {v1}, Lcom/oppo/tribune/util/FileUtils;->makeSureFileExist(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    :try_start_0
    new-instance v2, Lcom/oppo/tribune/util/connection/GetMethod;

    invoke-direct {v2, p0, p1}, Lcom/oppo/tribune/util/connection/GetMethod;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    .local v2, "method":Lcom/oppo/tribune/util/connection/GetMethod;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    .local v4, "output":Ljava/io/FileOutputStream;
    const/4 v3, 0x1

    .line 278
    .local v3, "notThrow":Z
    :try_start_1
    invoke-virtual {v2, v4}, Lcom/oppo/tribune/util/connection/GetMethod;->execute(Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    const/4 v3, 0x0

    .line 282
    :try_start_2
    invoke-static {v4, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 292
    .end local v2    # "method":Lcom/oppo/tribune/util/connection/GetMethod;
    .end local v3    # "notThrow":Z
    .end local v4    # "output":Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    goto :goto_0

    .line 283
    .restart local v2    # "method":Lcom/oppo/tribune/util/connection/GetMethod;
    .restart local v3    # "notThrow":Z
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 287
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "method":Lcom/oppo/tribune/util/connection/GetMethod;
    .end local v3    # "notThrow":Z
    .end local v4    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 289
    invoke-static {v1}, Lcom/oppo/tribune/util/FileUtils;->makeSureFileDelete(Ljava/io/File;)Z

    goto :goto_1

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "method":Lcom/oppo/tribune/util/connection/GetMethod;
    .restart local v3    # "notThrow":Z
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    .line 282
    :try_start_4
    invoke-static {v4, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 284
    :try_start_5
    throw v5

    .line 283
    :catch_2
    move-exception v0

    .line 284
    .local v0, "e":Ljava/io/IOException;
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pathname"    # Ljava/lang/String;

    .prologue
    .line 47
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final input2byte(Ljava/io/InputStream;)[B
    .locals 7
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x1000

    const/4 v5, 0x0

    .line 316
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 317
    .local v4, "swapStream":Ljava/io/ByteArrayOutputStream;
    const/16 v0, 0x400

    .line 318
    .local v0, "BUFFER_SIZE":I
    new-array v1, v6, [B

    .line 319
    .local v1, "buff":[B
    const/4 v3, 0x0

    .line 320
    .local v3, "rc":I
    :goto_0
    invoke-virtual {p0, v1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    .line 321
    invoke-virtual {v4, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 324
    .local v2, "in2b":[B
    return-object v2
.end method

.method public static makeSureDirectoryExists(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v1, 0x0

    .line 59
    :goto_0
    return v1

    .line 54
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    sget-object v1, Lcom/oppo/tribune/util/FileUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to make directory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    goto :goto_0
.end method

.method public static makeSureFileDelete(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 67
    if-nez p0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 74
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static makeSureFileDelete(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pathname"    # Ljava/lang/String;

    .prologue
    .line 63
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oppo/tribune/util/FileUtils;->makeSureFileDelete(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeSureFileExist(Ljava/io/File;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v2, 0x0

    .line 98
    :goto_0
    return v2

    .line 85
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 87
    .local v1, "parentFile":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 92
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "parentFile":Ljava/io/File;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    goto :goto_0

    .line 93
    .restart local v1    # "parentFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static makeSureFileExist(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pathname"    # Ljava/lang/String;

    .prologue
    .line 78
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oppo/tribune/util/FileUtils;->makeSureFileExist(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveToFile(Ljava/io/File;Ljava/io/InputStream;)V
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 142
    const/4 v3, 0x0

    .line 143
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 144
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/16 v0, 0x400

    .line 145
    .local v0, "BUFFER_SIZE":I
    const/16 v5, 0x1000

    new-array v2, v5, [B

    .line 146
    .local v2, "buf":[B
    const/4 v4, 0x0

    .line 148
    .local v4, "size":I
    new-instance v1, Ljava/io/BufferedInputStream;

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 149
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 151
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 152
    invoke-virtual {v3, v2, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {v3, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 156
    invoke-static {v1, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 157
    return-void
.end method

.method public static writeFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 0
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 167
    invoke-static {p1, p0}, Lcom/oppo/tribune/util/FileUtils;->saveToFile(Ljava/io/File;Ljava/io/InputStream;)V

    .line 169
    :cond_0
    return-void
.end method

.method public static writeFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 174
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/oppo/tribune/util/FileUtils;->writeFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 176
    :cond_0
    return-void
.end method

.method public static writeToFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 121
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v2

    .line 124
    :cond_1
    const/4 v1, 0x1

    .line 126
    .local v1, "notThrow":Z
    :try_start_0
    invoke-static {p0, p1}, Lcom/oppo/tribune/util/FileUtils;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    const/4 v1, 0x0

    .line 128
    const/4 v2, 0x1

    .line 133
    :try_start_1
    invoke-static {p0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 130
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :try_start_3
    invoke-static {p0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 134
    :catch_2
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 133
    :try_start_4
    invoke-static {p0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 136
    :goto_1
    throw v2

    .line 134
    :catch_3
    move-exception v0

    .line 135
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
