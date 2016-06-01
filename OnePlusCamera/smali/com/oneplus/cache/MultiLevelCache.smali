.class public Lcom/oneplus/cache/MultiLevelCache;
.super Ljava/lang/Object;
.source "MultiLevelCache.java"

# interfaces
.implements Lcom/oneplus/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oneplus/cache/Cache",
        "<TTKey;TTValue;>;"
    }
.end annotation


# instance fields
.field private final m_Caches:[Lcom/oneplus/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/oneplus/cache/Cache",
            "<TTKey;TTValue;>;"
        }
    .end annotation
.end field

.field private final m_MemoryCacheCallback:Lcom/oneplus/cache/MemoryCache$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/MemoryCache$Callback",
            "<TTKey;TTValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/oneplus/cache/Cache;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/oneplus/cache/Cache",
            "<TTKey;TTValue;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/oneplus/cache/MultiLevelCache;, "Lcom/oneplus/cache/MultiLevelCache<TTKey;TTValue;>;"
    .local p1, "caches":[Lcom/oneplus/cache/Cache;, "[Lcom/oneplus/cache/Cache<TTKey;TTValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v2, Lcom/oneplus/cache/MultiLevelCache$1;

    invoke-direct {v2, p0}, Lcom/oneplus/cache/MultiLevelCache$1;-><init>(Lcom/oneplus/cache/MultiLevelCache;)V

    iput-object v2, p0, Lcom/oneplus/cache/MultiLevelCache;->m_MemoryCacheCallback:Lcom/oneplus/cache/MemoryCache$Callback;

    .line 44
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 45
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No internal caches."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_1
    iput-object p1, p0, Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;

    .line 47
    array-length v2, p1

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 49
    aget-object v0, p1, v1

    .line 50
    .local v0, "cache":Lcom/oneplus/cache/Cache;, "Lcom/oneplus/cache/Cache<TTKey;TTValue;>;"
    instance-of v2, v0, Lcom/oneplus/cache/MemoryCache;

    if-eqz v2, :cond_2

    .line 51
    check-cast v0, Lcom/oneplus/cache/MemoryCache;

    .end local v0    # "cache":Lcom/oneplus/cache/Cache;, "Lcom/oneplus/cache/Cache<TTKey;TTValue;>;"
    iget-object v2, p0, Lcom/oneplus/cache/MultiLevelCache;->m_MemoryCacheCallback:Lcom/oneplus/cache/MemoryCache$Callback;

    invoke-interface {v0, v2}, Lcom/oneplus/cache/MemoryCache;->addCallback(Lcom/oneplus/cache/MemoryCache$Callback;)V

    .line 47
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 53
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/cache/MultiLevelCache;)[Lcom/oneplus/cache/Cache;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/cache/MultiLevelCache;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/oneplus/cache/MultiLevelCache;, "Lcom/oneplus/cache/MultiLevelCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    iget-object v0, p0, Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/oneplus/cache/Cache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 68
    .local p0, "this":Lcom/oneplus/cache/MultiLevelCache;, "Lcom/oneplus/cache/MultiLevelCache<TTKey;TTValue;>;"
    iget-object v1, p0, Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/oneplus/cache/Cache;->clear()V

    .line 68
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 77
    .local p0, "this":Lcom/oneplus/cache/MultiLevelCache;, "Lcom/oneplus/cache/MultiLevelCache<TTKey;TTValue;>;"
    iget-object v2, p0, Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 79
    iget-object v2, p0, Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;

    aget-object v0, v2, v1

    .line 80
    .local v0, "cache":Lcom/oneplus/cache/Cache;, "Lcom/oneplus/cache/Cache<TTKey;TTValue;>;"
    instance-of v2, v0, Lcom/oneplus/cache/MemoryCache;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 81
    check-cast v2, Lcom/oneplus/cache/MemoryCache;

    iget-object v3, p0, Lcom/oneplus/cache/MultiLevelCache;->m_MemoryCacheCallback:Lcom/oneplus/cache/MemoryCache$Callback;

    invoke-interface {v2, v3}, Lcom/oneplus/cache/MemoryCache;->removeCallback(Lcom/oneplus/cache/MemoryCache$Callback;)V

    .line 82
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/cache/Cache;->close()V

    .line 77
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 84
    .end local v0    # "cache":Lcom/oneplus/cache/Cache;, "Lcom/oneplus/cache/Cache<TTKey;TTValue;>;"
    :cond_1
    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 11
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;J)TTValue;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/cache/MultiLevelCache;, "Lcom/oneplus/cache/MultiLevelCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TTValue;"
    const-wide/16 v8, 0x0

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 92
    .local v4, "startTime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 94
    iget-object v6, p0, Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;

    aget-object v6, v6, v2

    invoke-interface {v6, p1, p2, p3, p4}, Lcom/oneplus/cache/Cache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 95
    .local v3, "value":Ljava/lang/Object;, "TTValue;"
    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 97
    :cond_1
    if-eqz v2, :cond_2

    .line 98
    iget-object v6, p0, Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v6, p1, v3}, Lcom/oneplus/cache/Cache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    move-object p2, v3

    .line 110
    .end local v3    # "value":Ljava/lang/Object;, "TTValue;"
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TTValue;"
    :cond_3
    return-object p2

    .line 101
    .restart local v3    # "value":Ljava/lang/Object;, "TTValue;"
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TTValue;"
    :cond_4
    cmp-long v6, p3, v8

    if-ltz v6, :cond_5

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 104
    .local v0, "currentTime":J
    sub-long v6, v0, v4

    sub-long/2addr p3, v6

    .line 105
    move-wide v4, v0

    .line 106
    cmp-long v6, p3, v8

    if-lez v6, :cond_3

    .line 92
    .end local v0    # "currentTime":J
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/cache/Cache$RemovingPredication",
            "<TTKey;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/oneplus/cache/MultiLevelCache;, "Lcom/oneplus/cache/MultiLevelCache<TTKey;TTValue;>;"
    .local p1, "predication":Lcom/oneplus/cache/Cache$RemovingPredication;, "Lcom/oneplus/cache/Cache$RemovingPredication<TTKey;>;"
    iget-object v1, p0, Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/oneplus/cache/Cache;->remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V

    .line 129
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)Z"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/oneplus/cache/MultiLevelCache;, "Lcom/oneplus/cache/MultiLevelCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    const/4 v1, 0x0

    .line 119
    .local v1, "result":Z
    iget-object v2, p0, Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 120
    iget-object v2, p0, Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lcom/oneplus/cache/Cache;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 119
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 121
    :cond_0
    return v1
.end method
