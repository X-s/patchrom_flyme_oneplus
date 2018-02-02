.class public Lcom/oneplus/cache/CompressedBitmapLruCache;
.super Lcom/oneplus/cache/AsyncLruCache;
.source "CompressedBitmapLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey::",
        "Ljava/io/Serializable;",
        ">",
        "Lcom/oneplus/cache/AsyncLruCache",
        "<TTKey;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final m_BitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final m_CompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final m_CompressedBitmaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TTKey;[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "capacity"    # J

    .prologue
    .line 29
    .local p0, "this":Lcom/oneplus/cache/CompressedBitmapLruCache;, "Lcom/oneplus/cache/CompressedBitmapLruCache<TTKey;>;"
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/cache/CompressedBitmapLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;J)V

    .line 27
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
    .line 43
    .local p0, "this":Lcom/oneplus/cache/CompressedBitmapLruCache;, "Lcom/oneplus/cache/CompressedBitmapLruCache<TTKey;>;"
    invoke-direct {p0, p5, p6}, Lcom/oneplus/cache/AsyncLruCache;-><init>(J)V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/cache/CompressedBitmapLruCache;->m_CompressedBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    if-nez p3, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No bitmap configuration specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    if-nez p4, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No bitmap compression format specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iput-object p3, p0, Lcom/oneplus/cache/CompressedBitmapLruCache;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 49
    iput-object p4, p0, Lcom/oneplus/cache/CompressedBitmapLruCache;->m_CompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 41
    return-void
.end method


# virtual methods
.method protected addEntry(Ljava/io/Serializable;Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 1
    .param p2, "value"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/oneplus/cache/CompressedBitmapLruCache;, "Lcom/oneplus/cache/CompressedBitmapLruCache<TTKey;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    iget-object v0, p0, Lcom/oneplus/cache/CompressedBitmapLruCache;->m_CompressedBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic addEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 55
    .local p0, "this":Lcom/oneplus/cache/CompressedBitmapLruCache;, "Lcom/oneplus/cache/CompressedBitmapLruCache<TTKey;>;"
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/cache/CompressedBitmapLruCache;->addEntry(Ljava/io/Serializable;Landroid/graphics/Bitmap;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected get(Ljava/io/Serializable;Ljava/lang/Object;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 8
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "defaultValue"    # Landroid/graphics/Bitmap;
    .param p4, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            "J)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/cache/CompressedBitmapLruCache;, "Lcom/oneplus/cache/CompressedBitmapLruCache<TTKey;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    .line 65
    check-cast v1, [B

    .line 66
    .local v1, "data":[B
    if-nez v1, :cond_0

    .line 67
    return-object p3

    .line 68
    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 69
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 70
    array-length v4, v1

    invoke-static {v1, v5, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 73
    iget-object v4, p0, Lcom/oneplus/cache/CompressedBitmapLruCache;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v4, v5, :cond_1

    .line 77
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/cache/CompressedBitmapLruCache;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :cond_1
    return-object v0

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/cache/CompressedBitmapLruCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get() - Fail to copy bitmap as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/cache/CompressedBitmapLruCache;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    return-object v7

    .line 87
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_2
    return-object p3
.end method

.method protected bridge synthetic get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "defaultValue"    # Ljava/lang/Object;
    .param p4, "timeoutMillis"    # J

    .prologue
    .local p0, "this":Lcom/oneplus/cache/CompressedBitmapLruCache;, "Lcom/oneplus/cache/CompressedBitmapLruCache<TTKey;>;"
    move-object v1, p1

    .line 63
    check-cast v1, Ljava/io/Serializable;

    move-object v3, p3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/cache/CompressedBitmapLruCache;->get(Ljava/io/Serializable;Ljava/lang/Object;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getSizeInBytes(Ljava/io/Serializable;Landroid/graphics/Bitmap;)J
    .locals 9
    .param p2, "value"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;",
            "Landroid/graphics/Bitmap;",
            ")J"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/cache/CompressedBitmapLruCache;, "Lcom/oneplus/cache/CompressedBitmapLruCache<TTKey;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    const/4 v5, 0x0

    .line 95
    const/4 v2, 0x0

    .local v2, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    .end local v2    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v3, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/cache/CompressedBitmapLruCache;->m_CompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x50

    invoke-virtual {p2, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 98
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 99
    .local v0, "data":[B
    iget-object v4, p0, Lcom/oneplus/cache/CompressedBitmapLruCache;->m_CompressedBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    array-length v4, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    int-to-long v6, v4

    .line 106
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 103
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Throwable;
    move-object v2, v3

    .line 104
    .end local v0    # "data":[B
    .end local v3    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_1
    iget-object v4, p0, Lcom/oneplus/cache/CompressedBitmapLruCache;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getSizeInBytes() - Fail to compress bitmap"

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    const-wide/16 v4, 0x0

    return-wide v4

    .line 106
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "data":[B
    .restart local v3    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 100
    :cond_1
    return-wide v6

    .line 106
    .end local v0    # "data":[B
    .end local v3    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v4

    .end local v2    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_3
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_4
    if-eqz v5, :cond_4

    :try_start_6
    throw v5

    .line 103
    :catch_3
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 106
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    if-nez v5, :cond_3

    move-object v5, v6

    goto :goto_4

    :cond_3
    if-eq v5, v6, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v2    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v4

    goto :goto_3

    .end local v2    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v2, "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v2    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method protected bridge synthetic getSizeInBytes(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 93
    .local p0, "this":Lcom/oneplus/cache/CompressedBitmapLruCache;, "Lcom/oneplus/cache/CompressedBitmapLruCache<TTKey;>;"
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/cache/CompressedBitmapLruCache;->getSizeInBytes(Ljava/io/Serializable;Landroid/graphics/Bitmap;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected removeEntry(Ljava/io/Serializable;Ljava/lang/Object;)V
    .locals 1
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/oneplus/cache/CompressedBitmapLruCache;, "Lcom/oneplus/cache/CompressedBitmapLruCache<TTKey;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    iget-object v0, p0, Lcom/oneplus/cache/CompressedBitmapLruCache;->m_CompressedBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method protected bridge synthetic removeEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 112
    .local p0, "this":Lcom/oneplus/cache/CompressedBitmapLruCache;, "Lcom/oneplus/cache/CompressedBitmapLruCache<TTKey;>;"
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/cache/CompressedBitmapLruCache;->removeEntry(Ljava/io/Serializable;Ljava/lang/Object;)V

    return-void
.end method
