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

    .line 33
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

    const-string v1, "No bitmap configuration specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    if-nez p4, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bitmap compression format specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p3, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 52
    iput-object p4, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_CompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 53
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
    iget-object v5, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 62
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    cmp-long v5, v6, v8

    if-gtz v5, :cond_1

    .line 66
    const/4 v6, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 68
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v2, v8

    .line 69
    .local v2, "fileSize":I
    int-to-long v8, v2

    const-wide/32 v10, 0x100000

    cmp-long v5, v8, v10

    if-gtz v5, :cond_0

    .line 71
    new-array v1, v2, [B

    .line 72
    .local v1, "data":[B
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 73
    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 75
    .end local v1    # "data":[B
    :cond_0
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 77
    .end local v2    # "fileSize":I
    .end local v4    # "stream":Ljava/io/FileInputStream;
    :cond_1
    if-nez v0, :cond_2

    .line 78
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    :cond_2
    if-eqz v0, :cond_6

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 75
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v6

    move-object v12, v6

    move-object v6, v5

    move-object v5, v12

    .end local v4    # "stream":Ljava/io/FileInputStream;
    :goto_1
    if-nez v6, :cond_4

    :goto_2
    throw v5

    :cond_4
    if-eq v6, v5, :cond_5

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    move-object v5, v6

    goto :goto_2

    :cond_6
    move-object/from16 v0, p3

    .line 81
    goto :goto_0

    .line 75
    :catchall_2
    move-exception v5

    goto :goto_1
.end method

.method protected bridge synthetic readFromFile(Ljava/io/Serializable;Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Ljava/io/Serializable;

    check-cast p3, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/cache/DiskBitmapLruCache;->readFromFile(Ljava/io/Serializable;Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected writeToFile(Ljava/io/Serializable;Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 9
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
    const/4 v3, 0x0

    .line 89
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 91
    .local v0, "fileStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    int-to-long v4, v2

    const-wide/32 v6, 0x473100

    cmp-long v2, v4, v6

    if-gtz v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_CompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p2, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 102
    :cond_1
    return-void

    .line 95
    :cond_2
    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    .local v1, "memoryStream":Ljava/io/ByteArrayOutputStream;
    :try_start_4
    iget-object v2, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_CompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p2, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 98
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 99
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .end local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v2

    :goto_1
    if-nez v3, :cond_5

    :goto_2
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 101
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .end local v0    # "fileStream":Ljava/io/FileOutputStream;
    :goto_3
    if-nez v3, :cond_7

    :goto_4
    throw v2

    .line 99
    .restart local v0    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_3
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_1

    .end local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_5
    if-eq v3, v2, :cond_6

    :try_start_9
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_6
    move-object v2, v3

    goto :goto_2

    .line 101
    .end local v0    # "fileStream":Ljava/io/FileOutputStream;
    :cond_7
    if-eq v3, v2, :cond_8

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    move-object v2, v3

    goto :goto_4

    :catchall_5
    move-exception v2

    goto :goto_3
.end method

.method protected bridge synthetic writeToFile(Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Ljava/io/Serializable;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/cache/DiskBitmapLruCache;->writeToFile(Ljava/io/Serializable;Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method
