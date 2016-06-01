.class public Lcom/oppo/tribune/util/FileDownload;
.super Ljava/lang/Object;
.source "FileDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPathname:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;

.field private mUseTmpFile:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "pathname"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/util/FileDownload;->mUseTmpFile:Z

    .line 38
    iput-object p1, p0, Lcom/oppo/tribune/util/FileDownload;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/oppo/tribune/util/FileDownload;->mUrl:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/oppo/tribune/util/FileDownload;->mPathname:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pathname"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-object v0, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;->RETURN_WHEN_EXISTS:Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

    invoke-static {p0, p1, p2, v0}, Lcom/oppo/tribune/util/FileDownload;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;)Z

    move-result v0

    return v0
.end method

.method public static download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pathname"    # Ljava/lang/String;
    .param p3, "strategy"    # Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

    .prologue
    const/4 v5, 0x0

    .line 160
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v5

    .line 164
    :cond_1
    if-nez p3, :cond_2

    .line 165
    sget-object p3, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;->RETURN_WHEN_EXISTS:Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

    .line 168
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 170
    invoke-virtual {p3}, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;->shouldContinue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 175
    :cond_3
    invoke-static {v1}, Lcom/oppo/tribune/util/FileUtils;->makeSureFileExist(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 183
    :try_start_0
    new-instance v2, Lcom/oppo/tribune/util/connection/GetMethod;

    invoke-direct {v2, p0, p1}, Lcom/oppo/tribune/util/connection/GetMethod;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    .local v2, "method":Lcom/oppo/tribune/util/connection/GetMethod;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    .local v4, "output":Ljava/io/FileOutputStream;
    const/4 v3, 0x1

    .line 187
    .local v3, "notThrow":Z
    :try_start_1
    invoke-virtual {v2, v4}, Lcom/oppo/tribune/util/connection/GetMethod;->execute(Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    const/4 v3, 0x0

    .line 191
    :try_start_2
    invoke-static {v4, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 201
    .end local v2    # "method":Lcom/oppo/tribune/util/connection/GetMethod;
    .end local v3    # "notThrow":Z
    .end local v4    # "output":Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    goto :goto_0

    .line 192
    .restart local v2    # "method":Lcom/oppo/tribune/util/connection/GetMethod;
    .restart local v3    # "notThrow":Z
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 196
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "method":Lcom/oppo/tribune/util/connection/GetMethod;
    .end local v3    # "notThrow":Z
    .end local v4    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    invoke-static {v1}, Lcom/oppo/tribune/util/FileUtils;->makeSureFileDelete(Ljava/io/File;)Z

    goto :goto_1

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "method":Lcom/oppo/tribune/util/connection/GetMethod;
    .restart local v3    # "notThrow":Z
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    .line 191
    :try_start_4
    invoke-static {v4, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 193
    :try_start_5
    throw v5

    .line 192
    :catch_2
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method private downloadImpl(Ljava/lang/String;)Z
    .locals 18
    .param p1, "pathname"    # Ljava/lang/String;

    .prologue
    .line 76
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/tribune/util/FileDownload;->mUrl:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 77
    :cond_0
    const/4 v13, 0x0

    .line 133
    :goto_0
    return v13

    .line 80
    :cond_1
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v12, "target":Ljava/io/File;
    invoke-static {v12}, Lcom/oppo/tribune/util/FileUtils;->makeSureFileExist(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 85
    const/4 v13, 0x0

    goto :goto_0

    .line 91
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/tribune/util/FileDownload;->mUrl:Ljava/lang/String;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 92
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/tribune/util/FileDownload;->mUrl:Ljava/lang/String;

    invoke-static {v13}, Lcom/oppo/tribune/cache/BitmapEntity;->calculateBitmapSize(Ljava/lang/String;)J

    move-result-wide v10

    .line 93
    .local v10, "size":J
    const v9, 0x15f90

    .line 94
    .local v9, "singleSize":I
    const/4 v8, 0x1

    .line 95
    .local v8, "sample":I
    int-to-long v14, v9

    cmp-long v13, v10, v14

    if-lez v13, :cond_3

    .line 96
    long-to-double v14, v10

    int-to-double v0, v9

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v8, v14

    .line 99
    :cond_3
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 100
    .local v6, "op":Landroid/graphics/BitmapFactory$Options;
    iput v8, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 101
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/tribune/util/FileDownload;->mUrl:Ljava/lang/String;

    invoke-static {v13, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 102
    .local v2, "bmp":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 103
    .local v7, "output":Ljava/io/FileOutputStream;
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v2, v13, v14, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 104
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    const/4 v2, 0x0

    .line 107
    const/4 v13, 0x1

    :try_start_1
    invoke-static {v7, v13}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "op":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "output":Ljava/io/FileOutputStream;
    .end local v8    # "sample":I
    .end local v9    # "singleSize":I
    .end local v10    # "size":J
    :goto_1
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v13

    goto :goto_0

    .line 108
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v6    # "op":Landroid/graphics/BitmapFactory$Options;
    .restart local v7    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "sample":I
    .restart local v9    # "singleSize":I
    .restart local v10    # "size":J
    :catch_0
    move-exception v3

    .line 109
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 128
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "op":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "output":Ljava/io/FileOutputStream;
    .end local v8    # "sample":I
    .end local v9    # "singleSize":I
    .end local v10    # "size":J
    :catch_1
    move-exception v3

    .line 129
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    invoke-static {v12}, Lcom/oppo/tribune/util/FileUtils;->makeSureFileDelete(Ljava/io/File;)Z

    goto :goto_1

    .line 114
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    new-instance v4, Lcom/oppo/tribune/util/connection/GetMethod;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/tribune/util/FileDownload;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/tribune/util/FileDownload;->mUrl:Ljava/lang/String;

    invoke-direct {v4, v13, v14}, Lcom/oppo/tribune/util/connection/GetMethod;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    .local v4, "method":Lcom/oppo/tribune/util/connection/GetMethod;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 116
    .restart local v7    # "output":Ljava/io/FileOutputStream;
    const/4 v5, 0x1

    .line 118
    .local v5, "notThrow":Z
    :try_start_4
    invoke-virtual {v4, v7}, Lcom/oppo/tribune/util/connection/GetMethod;->execute(Ljava/io/OutputStream;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    const/4 v5, 0x0

    .line 122
    :try_start_5
    invoke-static {v7, v5}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 123
    :catch_2
    move-exception v3

    .line 124
    .local v3, "e":Ljava/io/IOException;
    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 121
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 122
    :try_start_7
    invoke-static {v7, v5}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 124
    :try_start_8
    throw v13

    .line 123
    :catch_3
    move-exception v3

    .line 124
    .restart local v3    # "e":Ljava/io/IOException;
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
.end method

.method public static declared-synchronized makeTmpFile(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p0, "pathname"    # Ljava/lang/String;

    .prologue
    .line 137
    const-class v5, Lcom/oppo/tribune/util/FileDownload;

    monitor-enter v5

    :try_start_0
    const-string v4, "%s.dat"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "newPathname":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v3, "result":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/oppo/tribune/util/FileUtils;->makeSureFileExist(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    .end local v3    # "result":Ljava/io/File;
    :cond_0
    :goto_0
    monitor-exit v5

    return-object v3

    .line 143
    .restart local v3    # "result":Ljava/io/File;
    :cond_1
    :try_start_1
    const-string v0, "%s(%d).dat"

    .line 144
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v4, 0x64

    if-ge v1, v4, :cond_3

    .line 145
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v4, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/oppo/tribune/util/FileUtils;->makeSureFileExist(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 144
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 137
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "newPathname":Ljava/lang/String;
    .end local v3    # "result":Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method public execute()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 50
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/oppo/tribune/util/FileDownload;->mPathname:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "targetFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    :goto_0
    return v2

    .line 55
    :cond_0
    iget-boolean v3, p0, Lcom/oppo/tribune/util/FileDownload;->mUseTmpFile:Z

    if-nez v3, :cond_1

    .line 56
    iget-object v2, p0, Lcom/oppo/tribune/util/FileDownload;->mPathname:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oppo/tribune/util/FileDownload;->downloadImpl(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 59
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/util/FileDownload;->mPathname:Ljava/lang/String;

    invoke-static {v3}, Lcom/oppo/tribune/util/FileDownload;->makeTmpFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 60
    .local v1, "tmpFile":Ljava/io/File;
    if-nez v1, :cond_2

    .line 61
    iget-object v2, p0, Lcom/oppo/tribune/util/FileDownload;->mPathname:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oppo/tribune/util/FileDownload;->downloadImpl(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 65
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oppo/tribune/util/FileDownload;->downloadImpl(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 71
    invoke-static {v1}, Lcom/oppo/tribune/util/FileUtils;->makeSureFileDelete(Ljava/io/File;)Z

    goto :goto_0

    .line 69
    :cond_3
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/oppo/tribune/util/FileDownload;->mPathname:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 71
    invoke-static {v1}, Lcom/oppo/tribune/util/FileUtils;->makeSureFileDelete(Ljava/io/File;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/oppo/tribune/util/FileUtils;->makeSureFileDelete(Ljava/io/File;)Z

    throw v2
.end method

.method public setUserTmpFile(Z)Lcom/oppo/tribune/util/FileDownload;
    .locals 0
    .param p1, "useTmpFile"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/oppo/tribune/util/FileDownload;->mUseTmpFile:Z

    .line 45
    return-object p0
.end method
