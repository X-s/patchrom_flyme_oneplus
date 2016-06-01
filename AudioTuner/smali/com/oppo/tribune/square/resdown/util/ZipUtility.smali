.class public Lcom/oppo/tribune/square/resdown/util/ZipUtility;
.super Ljava/lang/Object;
.source "ZipUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTheme(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "themeFilePath"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v4, 0x0

    .line 30
    .local v4, "ffw":Ljava/io/FileOutputStream;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v8, "themeFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "."

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .local v1, "dirFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 35
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oppo/tribune/square/resdown/util/ZipUtility;->unZipFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 38
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 39
    new-instance v0, Ljava/io/File;

    const-string v9, "assets"

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .local v0, "assetsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 42
    :cond_0
    new-instance v6, Ljava/io/File;

    const-string v9, "key"

    invoke-direct {v6, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .local v6, "keyFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 44
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 45
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v4    # "ffw":Ljava/io/FileOutputStream;
    .local v5, "ffw":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Lcom/oppo/tribune/square/resdown/util/Utilities;->toUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v7

    .line 47
    .local v7, "result":[B
    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 48
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 49
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oppo/tribune/square/resdown/util/ZipUtility;->zipFolder(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    invoke-static {v1}, Lcom/oppo/tribune/square/resdown/util/ZipUtility;->referDeleteFile(Ljava/io/File;)V

    .line 58
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    :goto_0
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    move-object v4, v5

    .end local v0    # "assetsDir":Ljava/io/File;
    .end local v5    # "ffw":Ljava/io/FileOutputStream;
    .end local v6    # "keyFile":Ljava/io/File;
    .end local v7    # "result":[B
    .restart local v4    # "ffw":Ljava/io/FileOutputStream;
    :goto_1
    return-object v9

    .line 59
    .end local v4    # "ffw":Ljava/io/FileOutputStream;
    .restart local v0    # "assetsDir":Ljava/io/File;
    .restart local v5    # "ffw":Ljava/io/FileOutputStream;
    .restart local v6    # "keyFile":Ljava/io/File;
    .restart local v7    # "result":[B
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v0    # "assetsDir":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "ffw":Ljava/io/FileOutputStream;
    .end local v6    # "keyFile":Ljava/io/File;
    .end local v7    # "result":[B
    .restart local v4    # "ffw":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 53
    .local v3, "e1":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    const/4 v9, 0x0

    .line 56
    invoke-static {v1}, Lcom/oppo/tribune/square/resdown/util/ZipUtility;->referDeleteFile(Ljava/io/File;)V

    .line 58
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 59
    :catch_2
    move-exception v2

    .line 60
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 56
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_3
    invoke-static {v1}, Lcom/oppo/tribune/square/resdown/util/ZipUtility;->referDeleteFile(Ljava/io/File;)V

    .line 58
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 61
    :goto_4
    throw v9

    .line 59
    :catch_3
    move-exception v2

    .line 60
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 56
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "ffw":Ljava/io/FileOutputStream;
    .restart local v0    # "assetsDir":Ljava/io/File;
    .restart local v5    # "ffw":Ljava/io/FileOutputStream;
    .restart local v6    # "keyFile":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "ffw":Ljava/io/FileOutputStream;
    .restart local v4    # "ffw":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 52
    .end local v4    # "ffw":Ljava/io/FileOutputStream;
    .restart local v5    # "ffw":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "ffw":Ljava/io/FileOutputStream;
    .restart local v4    # "ffw":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static referDeleteFile(Ljava/io/File;)V
    .locals 6
    .param p0, "originalFile"    # Ljava/io/File;

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 68
    .local v2, "filelist":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 69
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 70
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    invoke-static {v1}, Lcom/oppo/tribune/square/resdown/util/ZipUtility;->referDeleteFile(Ljava/io/File;)V

    .line 69
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 77
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 78
    return-void
.end method

.method public static unZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "zipFileString"    # Ljava/lang/String;
    .param p1, "outPathString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v3, "inZip":Ljava/util/zip/ZipInputStream;
    const-string v6, ""

    .line 96
    .local v6, "szName":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v7, :cond_3

    .line 97
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 98
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 100
    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 101
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 124
    .end local v2    # "folder":Ljava/io/File;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v8

    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    throw v8

    .line 105
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 109
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 111
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 113
    .local v5, "out":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 115
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_2

    .line 117
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 118
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 124
    .end local v0    # "buffer":[B
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "len":I
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :cond_3
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    .line 126
    return-void
.end method

.method private static zipFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 12
    .param p0, "folderString"    # Ljava/lang/String;
    .param p1, "fileString"    # Ljava/lang/String;
    .param p2, "zipOutputSteam"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 138
    if-nez p2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 143
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 144
    .local v5, "in":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v9

    new-array v0, v9, [B

    .line 145
    .local v0, "data":[B
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 146
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 147
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-direct {v7, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 148
    .local v7, "zip":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/oppo/tribune/square/resdown/util/MediaFile;->getFileType(Ljava/lang/String;)Lcom/oppo/tribune/square/resdown/util/MediaFile$MediaFileType;

    move-result-object v3

    .line 150
    .local v3, "fileType":Lcom/oppo/tribune/square/resdown/util/MediaFile$MediaFileType;
    invoke-static {v3}, Lcom/oppo/tribune/square/resdown/util/MediaFile;->isAudioFileType(Lcom/oppo/tribune/square/resdown/util/MediaFile$MediaFileType;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v3}, Lcom/oppo/tribune/square/resdown/util/MediaFile;->isVideoFileType(Lcom/oppo/tribune/square/resdown/util/MediaFile$MediaFileType;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v3}, Lcom/oppo/tribune/square/resdown/util/MediaFile;->isImageFileType(Lcom/oppo/tribune/square/resdown/util/MediaFile$MediaFileType;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".arsc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "assets/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "lib/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "res/raw"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 158
    :cond_2
    invoke-virtual {p2, v11}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 159
    invoke-virtual {v7, v11}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 160
    array-length v9, v0

    int-to-long v10, v9

    invoke-virtual {v7, v10, v11}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 161
    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    .line 162
    .local v6, "tempCrc":Ljava/util/zip/CRC32;
    invoke-virtual {v6, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 163
    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 164
    invoke-virtual {p2, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 169
    .end local v6    # "tempCrc":Ljava/util/zip/CRC32;
    :goto_1
    invoke-virtual {p2, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 170
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto/16 :goto_0

    .line 166
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {p2, v9}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 167
    invoke-virtual {p2, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    goto :goto_1

    .line 173
    .end local v0    # "data":[B
    .end local v3    # "fileType":Lcom/oppo/tribune/square/resdown/util/MediaFile$MediaFileType;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v7    # "zip":Ljava/util/zip/ZipEntry;
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "fileList":[Ljava/lang/String;
    array-length v9, v2

    if-gtz v9, :cond_5

    .line 176
    new-instance v8, Ljava/util/zip/ZipEntry;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 177
    .local v8, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p2, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 178
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 181
    .end local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v9, v2

    if-ge v4, v9, :cond_0

    .line 182
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9, p2}, Lcom/oppo/tribune/square/resdown/util/ZipUtility;->zipFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static zipFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "srcFileString"    # Ljava/lang/String;
    .param p1, "zipFileString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 203
    .local v5, "outZip":Ljava/util/zip/ZipOutputStream;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v6, "parentfile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 206
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 207
    .local v1, "file":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Lcom/oppo/tribune/square/resdown/util/ZipUtility;->zipFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 211
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 212
    return-void
.end method
