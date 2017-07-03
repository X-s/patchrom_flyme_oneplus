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
.field private final m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/CompressedBitmapLruCache",
            "<TTKey;>;"
        }
    .end annotation
.end field

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

.field private final m_PreferredConfig:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;JJ)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p5, "memoryCapacity"    # J
    .param p7, "diskCapacity"    # J

    .prologue
    .line 33
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v10, p7

    invoke-direct/range {v1 .. v11}, Lcom/oneplus/cache/HybridBitmapLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;JJJ)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;JJJ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p5, "memoryCapacity"    # J
    .param p7, "compressedMemoeyCapacity"    # J
    .param p9, "diskCapacity"    # J

    .prologue
    .line 47
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-direct {v0, p5, p6}, Lcom/oneplus/cache/MemoryBitmapLruCache;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    .line 51
    iput-object p3, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_PreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 54
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_1

    new-instance v1, Lcom/oneplus/cache/CompressedBitmapLruCache;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/cache/CompressedBitmapLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;J)V

    :goto_1
    iput-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    .line 55
    const-wide/16 v0, 0x0

    cmp-long v0, p9, v0

    if-lez v0, :cond_2

    new-instance v1, Lcom/oneplus/cache/DiskBitmapLruCache;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-wide/from16 v6, p9

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/cache/DiskBitmapLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;J)V

    :goto_2
    iput-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    .line 75
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 55
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method


# virtual methods
.method public add(Ljava/io/Serializable;Landroid/graphics/Bitmap;)Z
    .locals 3
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

    .line 82
    iget-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/cache/CompressedBitmapLruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/cache/DiskBitmapLruCache;->add(Ljava/io/Serializable;Ljava/lang/Object;)Z

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_PreferredConfig:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_2

    .line 89
    iget-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_PreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/cache/MemoryBitmapLruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 93
    :cond_3
    :goto_0
    return v0

    :cond_4
    iget-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v1, :cond_3

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/io/Serializable;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/cache/HybridBitmapLruCache;->add(Ljava/io/Serializable;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/MemoryBitmapLruCache;->clear()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/CompressedBitmapLruCache;->clear()V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/DiskBitmapLruCache;->clear()V

    .line 107
    :cond_2
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/MemoryBitmapLruCache;->close()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/CompressedBitmapLruCache;->close()V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/DiskBitmapLruCache;->close()V

    .line 120
    :cond_2
    return-void
.end method

.method public disableStatistic()V
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/CompressedBitmapLruCache;->disableStatistic()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/DiskBitmapLruCache;->disableStatistic()V

    .line 132
    :cond_1
    return-void
.end method

.method public enableStatistic()V
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/CompressedBitmapLruCache;->enableStatistic()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/DiskBitmapLruCache;->enableStatistic()V

    .line 144
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 152
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/DiskBitmapLruCache;->flush()V

    .line 154
    :cond_0
    return-void
.end method

.method public get(Ljava/io/Serializable;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 11
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
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 162
    iget-object v4, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v4, p1, p2, v6, v7}, Lcom/oneplus/cache/MemoryBitmapLruCache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v0, v4

    .line 163
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eq v0, p2, :cond_2

    move-object p2, v0

    .line 202
    .end local p2    # "defaultValue":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-object p2

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p2    # "defaultValue":Landroid/graphics/Bitmap;
    :cond_1
    move-object v0, p2

    .line 162
    goto :goto_0

    .line 167
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    if-eqz v4, :cond_8

    .line 169
    cmp-long v4, p3, v6

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    .line 170
    .local v1, "hasTimeout":Z
    :goto_2
    if-eqz v1, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 171
    .local v2, "time":J
    :goto_3
    iget-object v4, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/oneplus/cache/CompressedBitmapLruCache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 172
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eq v0, p2, :cond_7

    .line 174
    iget-object v4, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v4, :cond_4

    .line 176
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    iget-object v6, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_PreferredConfig:Landroid/graphics/Bitmap$Config;

    if-eq v4, v6, :cond_3

    .line 177
    iget-object v4, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_PreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    :cond_3
    iget-object v4, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v4, p1, v0}, Lcom/oneplus/cache/MemoryBitmapLruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_4
    move-object p2, v0

    .line 180
    goto :goto_1

    .end local v1    # "hasTimeout":Z
    .end local v2    # "time":J
    :cond_5
    move v1, v5

    .line 169
    goto :goto_2

    .restart local v1    # "hasTimeout":Z
    :cond_6
    move-wide v2, v6

    .line 170
    goto :goto_3

    .line 182
    .restart local v2    # "time":J
    :cond_7
    if-eqz v1, :cond_0

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v2

    sub-long/2addr p3, v8

    .line 185
    cmp-long v4, p3, v6

    if-lez v4, :cond_0

    .line 190
    .end local v1    # "hasTimeout":Z
    .end local v2    # "time":J
    :cond_8
    iget-object v4, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/oneplus/cache/DiskBitmapLruCache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v0, v4

    .line 191
    :goto_4
    if-eq v0, p2, :cond_b

    .line 193
    iget-object v4, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    if-eqz v4, :cond_9

    .line 194
    iget-object v4, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    invoke-virtual {v4, p1, v0}, Lcom/oneplus/cache/CompressedBitmapLruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    :cond_9
    iget-object v4, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v4, :cond_b

    .line 197
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    iget-object v6, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_PreferredConfig:Landroid/graphics/Bitmap$Config;

    if-eq v4, v6, :cond_a

    .line 198
    iget-object v4, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_PreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    :cond_a
    iget-object v4, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v4, p1, v0}, Lcom/oneplus/cache/MemoryBitmapLruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_b
    move-object p2, v0

    .line 202
    goto :goto_1

    :cond_c
    move-object v0, p2

    .line 190
    goto :goto_4
.end method

.method public bridge synthetic get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/io/Serializable;

    check-cast p2, Landroid/graphics/Bitmap;

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
    .line 213
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
    .line 232
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    .local p1, "predication":Lcom/oneplus/cache/Cache$RemovingPredication;, "Lcom/oneplus/cache/Cache$RemovingPredication<TTKey;>;"
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v0, p1}, Lcom/oneplus/cache/MemoryBitmapLruCache;->remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    invoke-virtual {v0, p1}, Lcom/oneplus/cache/CompressedBitmapLruCache;->remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {v0, p1}, Lcom/oneplus/cache/DiskBitmapLruCache;->remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V

    .line 238
    :cond_2
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

    .line 221
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v0, p1}, Lcom/oneplus/cache/MemoryBitmapLruCache;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 222
    :goto_0
    iget-object v3, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    invoke-virtual {v3, p1}, Lcom/oneplus/cache/CompressedBitmapLruCache;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    .line 221
    :goto_1
    or-int/2addr v0, v3

    .line 223
    iget-object v3, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {v3, p1}, Lcom/oneplus/cache/DiskBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    :goto_2
    or-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {p0, p1}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    move-result v0

    return v0
.end method

.method public setCapacity(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .param p1, "memoryCapacity"    # Ljava/lang/Long;
    .param p2, "diskCapacity"    # Ljava/lang/Long;

    .prologue
    .line 248
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oneplus/cache/HybridBitmapLruCache;->setCapacity(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 249
    return-void
.end method

.method public setCapacity(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 4
    .param p1, "memoryCapacity"    # Ljava/lang/Long;
    .param p2, "compressedMemoryCapacity"    # Ljava/lang/Long;
    .param p3, "diskCapacity"    # Ljava/lang/Long;

    .prologue
    .line 260
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/cache/MemoryBitmapLruCache;->setCapacity(J)V

    .line 262
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/cache/CompressedBitmapLruCache;->setCapacity(J)V

    .line 264
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/cache/DiskBitmapLruCache;->setCapacity(J)V

    .line 266
    :cond_2
    return-void
.end method

.method public trim(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .param p1, "maxMemorySize"    # Ljava/lang/Long;
    .param p2, "maxDiskSize"    # Ljava/lang/Long;

    .prologue
    .line 276
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oneplus/cache/HybridBitmapLruCache;->trim(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 277
    return-void
.end method

.method public trim(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 4
    .param p1, "maxMemorySize"    # Ljava/lang/Long;
    .param p2, "maxCompressedMemorySize"    # Ljava/lang/Long;
    .param p3, "maxDiskSize"    # Ljava/lang/Long;

    .prologue
    .line 288
    .local p0, "this":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<TTKey;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_MemoryCache:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/cache/MemoryBitmapLruCache;->trim(J)Z

    .line 290
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_CompressedMemoryCache:Lcom/oneplus/cache/CompressedBitmapLruCache;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/cache/CompressedBitmapLruCache;->trim(J)Z

    .line 292
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/oneplus/cache/HybridBitmapLruCache;->m_DiskCache:Lcom/oneplus/cache/DiskBitmapLruCache;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/cache/DiskBitmapLruCache;->trim(J)Z

    .line 294
    :cond_2
    return-void
.end method
