.class public Lcom/oppo/tribune/util/OppoImageViewMemoryCache;
.super Ljava/util/WeakHashMap;
.source "OppoImageViewMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/WeakHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final FILE_PATH:Ljava/lang/String;

.field private static final MAP_MAX_SIZE:I = 0x1e

.field public static final TAG:Ljava/lang/String;

.field private static mOppoImageViewCache:Lcom/oppo/tribune/util/OppoImageViewMemoryCache;


# instance fields
.field private mKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;

    invoke-direct {v0}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;-><init>()V

    sput-object v0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->mOppoImageViewCache:Lcom/oppo/tribune/util/OppoImageViewMemoryCache;

    .line 33
    sget-object v0, Lcom/oppo/tribune/square/tribune/PostConstant;->TRIBUNE_IMAGECACHE_PATH_TEMP:Ljava/lang/String;

    sput-object v0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/WeakHashMap;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->mKeyList:Ljava/util/List;

    .line 37
    return-void
.end method

.method private cacheImgToMemory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pathName"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "isScessed":Z
    const/4 v0, 0x0

    .line 82
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    :goto_0
    if-eqz v0, :cond_0

    .line 89
    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v3}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 90
    const/4 v2, 0x1

    .line 93
    :cond_0
    return v2

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 85
    invoke-virtual {p0}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->clear()V

    goto :goto_0
.end method

.method private changeUrlToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "strings":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 110
    .local v0, "imageName":Ljava/lang/String;
    return-object v0
.end method

.method private getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "size":I
    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x8

    .line 177
    :cond_0
    return v0
.end method

.method private getIndex(Ljava/lang/Object;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 202
    const/4 v1, -0x1

    .line 203
    .local v1, "index":I
    if-eqz p1, :cond_0

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->mKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    move-object v2, p1

    .line 205
    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->mKeyList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    move v1, v0

    .line 211
    .end local v0    # "i":I
    :cond_0
    return v1

    .line 204
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/oppo/tribune/util/OppoImageViewMemoryCache;
    .locals 2

    .prologue
    .line 40
    const-class v0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->mOppoImageViewCache:Lcom/oppo/tribune/util/OppoImageViewMemoryCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isExitLocal(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 61
    sget-object v5, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Lcom/oppo/tribune/util/CommonMethods;->judgeIsFilePathExit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "filePath":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->changeUrlToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v4

    .line 68
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "pathName":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->cacheImgToMemory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method private moveToTail(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 220
    iget-object v1, p0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->mKeyList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->mKeyList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 222
    iget-object v1, p0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->mKeyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method private declared-synchronized put(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;
    .param p3, "isExitToLocal"    # Z

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->mKeyList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {p0}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1e

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_1

    .line 142
    iget-object v6, p0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->mKeyList:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 143
    .local v5, "removeKey":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->mKeyList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    const/4 v0, 0x0

    .line 149
    :cond_0
    invoke-virtual {p0, v5}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 152
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "removeKey":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_3

    .line 153
    sget-object v6, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->FILE_PATH:Ljava/lang/String;

    invoke-static {v6}, Lcom/oppo/tribune/util/CommonMethods;->judgeIsFilePathExit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "filePath":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->changeUrlToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 156
    invoke-super {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-object v6

    .line 159
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v1, "file":Ljava/io/File;
    invoke-direct {p0, p2, v1}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->savePic(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    .line 163
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 139
    .end local v3    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private savePic(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 235
    if-nez p1, :cond_1

    .line 236
    const/4 v3, 0x0

    .line 265
    :cond_0
    :goto_0
    return v3

    .line 239
    :cond_1
    const/4 v3, 0x1

    .line 241
    .local v3, "successed":Z
    const/4 v1, 0x0

    .line 244
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 246
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 256
    if-eqz v2, :cond_3

    .line 258
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 262
    :goto_1
    const/4 v1, 0x0

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 259
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 247
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 248
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    const/4 v3, 0x0

    .line 256
    if-eqz v1, :cond_0

    .line 258
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 262
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v1, 0x0

    goto :goto_0

    .line 259
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 250
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 251
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 252
    const/4 v3, 0x0

    .line 256
    if-eqz v1, :cond_0

    .line 258
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 262
    :goto_5
    const/4 v1, 0x0

    goto :goto_0

    .line 259
    :catch_4
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 253
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_6
    const/4 v3, 0x0

    .line 256
    if-eqz v1, :cond_0

    .line 258
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 262
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_7
    const/4 v1, 0x0

    goto :goto_0

    .line 259
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    :catch_6
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 256
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_8
    if-eqz v1, :cond_2

    .line 258
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 262
    :goto_9
    const/4 v1, 0x0

    :cond_2
    throw v4

    .line 259
    :catch_7
    move-exception v0

    .line 260
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 256
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_8

    .line 253
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_6

    .line 250
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 247
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_3
    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 288
    iget-object v2, p0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->mKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 289
    invoke-virtual {p0}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 290
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 297
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    invoke-super {p0}, Ljava/util/WeakHashMap;->clear()V

    .line 298
    return-void
.end method

.method public get(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 115
    invoke-super {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 116
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->getIndex(Ljava/lang/Object;)I

    move-result v1

    .line 117
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 118
    invoke-direct {p0, v1}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->moveToTail(I)V

    .line 120
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    :cond_1
    const/4 v0, 0x0

    .line 123
    :cond_2
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapSizeInCache()I
    .locals 5

    .prologue
    .line 186
    const/4 v3, 0x0

    .line 187
    .local v3, "memSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->mKeyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 188
    iget-object v4, p0, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->mKeyList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    .local v1, "bmpKey":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v4

    add-int/2addr v3, v4

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "bmpKey":Ljava/lang/String;
    :cond_0
    return v3
.end method

.method public getCacheSize()J
    .locals 8

    .prologue
    .line 275
    const-wide/16 v6, 0x0

    .line 276
    .local v6, "size":J
    sget-object v5, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Lcom/oppo/tribune/util/CommonMethods;->judgeIsFilePathExit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 279
    .local v2, "fileList":[Ljava/io/File;
    array-length v1, v2

    .line 280
    .local v1, "fileCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 281
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 280
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    :cond_0
    return-wide v6
.end method

.method public isCached(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    sget-object v3, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->mOppoImageViewCache:Lcom/oppo/tribune/util/OppoImageViewMemoryCache;

    invoke-virtual {v3, p1}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 53
    .local v0, "isCached":Z
    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->isExitLocal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 54
    :goto_1
    return v0

    .end local v0    # "isCached":Z
    :cond_1
    move v0, v1

    .line 51
    goto :goto_0

    .restart local v0    # "isCached":Z
    :cond_2
    move v0, v1

    .line 53
    goto :goto_1
.end method

.method public declared-synchronized put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 127
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/util/OppoImageViewMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
