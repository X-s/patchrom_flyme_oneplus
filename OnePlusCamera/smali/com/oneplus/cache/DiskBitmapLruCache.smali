.class public Lcom/oneplus/cache/DiskBitmapLruCache;
.super Lcom/oneplus/cache/DiskLruCache;
.source "DiskBitmapLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey::",
        "Ljava/io/Serializable;",
        ">",
        "Lcom/oneplus/cache/DiskLruCache",
        "<TTKey;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final THRESHOLD_USE_TWO_PHASE_COMPRESSION:J = 0x473100L


# instance fields
.field private final m_BitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final m_CompressFormat:Landroid/graphics/Bitmap$CompressFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "capacity"    # J

    .prologue
    .line 32
    .local p0, "this":Lcom/oneplus/cache/DiskBitmapLruCache;, "Lcom/oneplus/cache/DiskBitmapLruCache<TTKey;>;"
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/cache/DiskBitmapLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;J)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p5, "capacity"    # J

    .prologue
    .line 46
    .local p0, "this":Lcom/oneplus/cache/DiskBitmapLruCache;, "Lcom/oneplus/cache/DiskBitmapLruCache<TTKey;>;"
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/oneplus/cache/DiskLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 47
    if-nez p3, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No bitmap configuration specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    if-nez p4, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No bitmap compression format specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p3, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 52
    iput-object p4, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_CompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 44
    return-void
.end method


# virtual methods
.method protected readFromFile(Ljava/io/Serializable;Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p2, "file"    # Ljava/io/File;
    .param p3, "defaultValue"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/oneplus/cache/DiskBitmapLruCache;, "Lcom/oneplus/cache/DiskBitmapLruCache<TTKey;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 61
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v6, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 62
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    .line 66
    const/4 v7, 0x0

    const/4 v4, 0x0

    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v2, v8

    .line 69
    .local v2, "fileSize":I
    int-to-long v8, v2

    const-wide/32 v10, 0x100000

    cmp-long v6, v8, v10

    if-gtz v6, :cond_0

    .line 71
    new-array v1, v2, [B

    .line 72
    .local v1, "data":[B
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-ne v6, v2, :cond_0

    .line 73
    const/4 v6, 0x0

    invoke-static {v1, v6, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 75
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "data":[B
    :cond_0
    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-eqz v7, :cond_5

    throw v7

    :catch_0
    move-exception v7

    goto :goto_0

    .end local v2    # "fileSize":I
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    .end local v4    # "stream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    :goto_2
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    if-eqz v7, :cond_4

    throw v7

    :catch_2
    move-exception v8

    if-nez v7, :cond_3

    move-object v7, v8

    goto :goto_3

    :cond_3
    if-eq v7, v8, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    throw v6

    .line 77
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    if-nez v0, :cond_6

    .line 78
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    :cond_6
    if-eqz v0, :cond_7

    :goto_4
    return-object v0

    :cond_7
    move-object/from16 v0, p3

    goto :goto_4

    .line 75
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    goto :goto_2

    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v4, "stream":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method protected bridge synthetic readFromFile(Ljava/io/Serializable;Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/io/Serializable;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/oneplus/cache/DiskBitmapLruCache;, "Lcom/oneplus/cache/DiskBitmapLruCache<TTKey;>;"
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/cache/DiskBitmapLruCache;->readFromFile(Ljava/io/Serializable;Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected writeToFile(Ljava/io/Serializable;Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 11
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;",
            "Landroid/graphics/Bitmap;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/cache/DiskBitmapLruCache;, "Lcom/oneplus/cache/DiskBitmapLruCache<TTKey;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    const/4 v6, 0x0

    .line 89
    const/4 v0, 0x0

    .local v0, "fileStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 91
    .end local v0    # "fileStream":Ljava/io/FileOutputStream;
    .local v1, "fileStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v8, 0x473100

    cmp-long v4, v4, v8

    if-gtz v4, :cond_2

    .line 92
    iget-object v4, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_CompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 101
    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_0
    if-eqz v6, :cond_a

    throw v6

    .line 95
    :cond_2
    const/4 v2, 0x0

    .local v2, "memoryStream":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 97
    .end local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "memoryStream":Ljava/io/ByteArrayOutputStream;
    :try_start_4
    iget-object v4, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_CompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 98
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 99
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_3
    move-object v4, v6

    :goto_1
    if-eqz v4, :cond_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 101
    .end local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    move-object v0, v1

    .end local v1    # "fileStream":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    :goto_3
    if-eqz v0, :cond_4

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_4
    if-eqz v6, :cond_9

    throw v6

    .line 99
    .restart local v1    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v4

    goto :goto_1

    .end local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v4

    .end local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :goto_5
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    :goto_6
    if-eqz v2, :cond_5

    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_5
    :goto_7
    if-eqz v5, :cond_7

    :try_start_b
    throw v5

    .line 101
    :catchall_2
    move-exception v4

    move-object v0, v1

    .end local v1    # "fileStream":Ljava/io/FileOutputStream;
    .local v0, "fileStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 99
    .end local v0    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    if-nez v5, :cond_6

    move-object v5, v7

    goto :goto_7

    :cond_6
    if-eq v5, v7, :cond_5

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_7
    throw v4
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 101
    :catch_4
    move-exception v6

    goto :goto_0

    .end local v1    # "fileStream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v5

    if-nez v6, :cond_8

    move-object v6, v5

    goto :goto_4

    :cond_8
    if-eq v6, v5, :cond_4

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_9
    throw v4

    .line 87
    .restart local v1    # "fileStream":Ljava/io/FileOutputStream;
    :cond_a
    return-void

    .line 101
    .end local v1    # "fileStream":Ljava/io/FileOutputStream;
    .local v0, "fileStream":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v4

    goto :goto_3

    :catch_6
    move-exception v4

    goto :goto_2

    .line 99
    .end local v0    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_4
    move-exception v4

    move-object v5, v6

    goto :goto_6

    .end local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_5
    move-exception v4

    move-object v5, v6

    move-object v2, v3

    .end local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "memoryStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5
.end method

.method protected bridge synthetic writeToFile(Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/File;)V
    .locals 0
    .param p1, "key"    # Ljava/io/Serializable;
    .param p2, "bitmap"    # Ljava/lang/Object;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/oneplus/cache/DiskBitmapLruCache;, "Lcom/oneplus/cache/DiskBitmapLruCache<TTKey;>;"
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "bitmap":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/cache/DiskBitmapLruCache;->writeToFile(Ljava/io/Serializable;Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method
