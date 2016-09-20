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
    .line 31
    .local p0, "this":Lcom/oneplus/cache/DiskBitmapLruCache;, "Lcom/oneplus/cache/DiskBitmapLruCache<TTKey;>;"
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/cache/DiskBitmapLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;J)V

    .line 32
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
    .line 45
    .local p0, "this":Lcom/oneplus/cache/DiskBitmapLruCache;, "Lcom/oneplus/cache/DiskBitmapLruCache<TTKey;>;"
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/oneplus/cache/DiskLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 46
    if-nez p3, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bitmap configuration specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    if-nez p4, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bitmap compression format specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iput-object p3, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 51
    iput-object p4, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_CompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 52
    return-void
.end method


# virtual methods
.method protected readFromFile(Ljava/io/Serializable;Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
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
    .line 59
    .local p0, "this":Lcom/oneplus/cache/DiskBitmapLruCache;, "Lcom/oneplus/cache/DiskBitmapLruCache<TTKey;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 60
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 61
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 62
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_0

    .line 64
    iget-object v2, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    :cond_0
    if-eqz v0, :cond_1

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    move-object v0, p3

    goto :goto_0
.end method

.method protected bridge synthetic readFromFile(Ljava/io/Serializable;Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/io/Serializable;
    .param p2, "x1"    # Ljava/io/File;
    .param p3, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/oneplus/cache/DiskBitmapLruCache;, "Lcom/oneplus/cache/DiskBitmapLruCache<TTKey;>;"
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3    # "x2":Ljava/lang/Object;
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
    const/4 v5, 0x0

    .line 73
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 75
    .local v0, "fileStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    int-to-long v6, v3

    const-wide/32 v8, 0x473100

    cmp-long v3, v6, v8

    if-gtz v3, :cond_2

    .line 76
    iget-object v3, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_CompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v5, :cond_7

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 86
    :cond_1
    :goto_1
    return-void

    .line 79
    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .local v1, "memoryStream":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 81
    :try_start_3
    iget-object v4, p0, Lcom/oneplus/cache/DiskBitmapLruCache;->m_CompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {p2, v4, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 82
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 83
    if-eqz v1, :cond_0

    if-eqz v5, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 73
    .end local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    :catchall_0
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v5, :cond_8

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_3
    throw v3

    .line 83
    .restart local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 85
    .end local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v3

    goto :goto_2

    .line 79
    .restart local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v3

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 83
    :catchall_2
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    :goto_4
    if-eqz v1, :cond_5

    if-eqz v4, :cond_6

    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_5
    :goto_5
    :try_start_b
    throw v3

    :catch_3
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    .line 85
    .end local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catch_5
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    .line 83
    .restart local v1    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_3
    move-exception v3

    move-object v4, v5

    goto :goto_4
.end method

.method protected bridge synthetic writeToFile(Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/File;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/Serializable;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/oneplus/cache/DiskBitmapLruCache;, "Lcom/oneplus/cache/DiskBitmapLruCache<TTKey;>;"
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/cache/DiskBitmapLruCache;->writeToFile(Ljava/io/Serializable;Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method
