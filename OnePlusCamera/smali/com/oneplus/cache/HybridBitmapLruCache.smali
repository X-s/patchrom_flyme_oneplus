.class public Lcom/oneplus/cache/HybridBitmapLruCache;
.super Ljava/lang/Object;
.source "HybridBitmapLruCache.java"

# interfaces
.implements Lcom/oneplus/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oneplus/cache/Cache",
        "<TTKey;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/DiskBitmapLruCache",
            "<TTKey;>;"
        }
    .end annotation
.end field

.field private final m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/MemoryBitmapLruCache",
            "<TTKey;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;JJ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p5, "memoryCapacity"    # J
    .param p7, "diskCapacity"    # J

    .prologue
    .line 29
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-direct {v0, p5, p6}, Lcom/oneplus/cache/MemoryBitmapLruCache;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    .line 31
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_1

    new-instance v1, Lcom/oneplus/cache/DiskBitmapLruCache;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/cache/DiskBitmapLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;J)V

    :goto_1
    iput-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    .line 32
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/io/Serializable;Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p2, "value"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;",
            "Landroid/graphics/Bitmap;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/cache/MemoryBitmapLruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v1, :cond_2

    .line 42
    iget-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/cache/DiskBitmapLruCache;->add(Ljava/io/Serializable;Ljava/lang/Object;)Z

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 12
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/cache/HybridBitmapLruCache;->add(Ljava/io/Serializable;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/MemoryBitmapLruCache;->clear()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/DiskBitmapLruCache;->clear()V

    .line 55
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/MemoryBitmapLruCache;->close()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/DiskBitmapLruCache;->close()V

    .line 66
    :cond_1
    return-void
.end method

.method public get(Ljava/io/Serializable;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 7
    .param p2, "defaultValue"    # Landroid/graphics/Bitmap;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;",
            "Landroid/graphics/Bitmap;",
            "J)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    iget-object v2, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, p1, p2, v4, v5}, Lcom/oneplus/cache/MemoryBitmapLruCache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v0, v2

    .line 75
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eq v0, p2, :cond_1

    move-object v1, v0

    .line 82
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    move-object v0, p2

    .line 74
    goto :goto_0

    .line 79
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/oneplus/cache/DiskBitmapLruCache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v0, v2

    .line 80
    :goto_2
    if-eq v0, p2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v2, p1, v0}, Lcom/oneplus/cache/MemoryBitmapLruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    move-object v1, v0

    .line 82
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    move-object v0, p2

    .line 79
    goto :goto_2
.end method

.method public bridge synthetic get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # J

    .prologue
    .line 12
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/cache/HybridBitmapLruCache;->get(Ljava/io/Serializable;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public peek(Ljava/io/Serializable;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v0, p1}, Lcom/oneplus/cache/MemoryBitmapLruCache;->peek(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/cache/Cache$RemovingPredication",
            "<TTKey;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    .local p1, "predication":Lcom/oneplus/cache/Cache$RemovingPredication;, "Lcom/oneplus/cache/Cache$RemovingPredication<TTKey;>;"
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v0, p1}, Lcom/oneplus/cache/MemoryBitmapLruCache;->remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {v0, p1}, Lcom/oneplus/cache/DiskBitmapLruCache;->remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V

    .line 113
    :cond_1
    return-void
.end method

.method public remove(Ljava/io/Serializable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v0, p1}, Lcom/oneplus/cache/MemoryBitmapLruCache;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {v3, p1}, Lcom/oneplus/cache/DiskBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    or-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    move-result v0

    return v0
.end method

.method public trim(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 4
    .param p1, "maxMemorySize"    # Ljava/lang/Long;
    .param p2, "maxDiskSize"    # Ljava/lang/Long;

    .prologue
    .line 123
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/cache/MemoryBitmapLruCache;->trim(J)Z

    .line 125
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/cache/DiskBitmapLruCache;->trim(J)Z

    .line 127
    :cond_1
    return-void
.end method
