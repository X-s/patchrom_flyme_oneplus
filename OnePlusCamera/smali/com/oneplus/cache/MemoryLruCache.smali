.class public abstract Lcom/oneplus/cache/MemoryLruCache;
.super Lcom/oneplus/cache/LruCache;
.source "MemoryLruCache.java"

# interfaces
.implements Lcom/oneplus/cache/MemoryCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "TValue:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/cache/LruCache",
        "<TTKey;TTValue;>;",
        "Lcom/oneplus/cache/MemoryCache",
        "<TTKey;TTValue;>;"
    }
.end annotation


# instance fields
.field private final m_Callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/cache/MemoryCache$Callback",
            "<TTKey;TTValue;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "capacity"    # J

    .prologue
    .line 23
    .local p0, "this":Lcom/oneplus/cache/MemoryLruCache;, "Lcom/oneplus/cache/MemoryLruCache<TTKey;TTValue;>;"
    invoke-direct {p0, p1, p2}, Lcom/oneplus/cache/LruCache;-><init>(J)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/cache/MemoryLruCache;->m_Callbacks:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/cache/MemoryCache$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/cache/MemoryCache$Callback",
            "<TTKey;TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/oneplus/cache/MemoryLruCache;, "Lcom/oneplus/cache/MemoryLruCache<TTKey;TTValue;>;"
    .local p1, "callback":Lcom/oneplus/cache/MemoryCache$Callback;, "Lcom/oneplus/cache/MemoryCache$Callback<TTKey;TTValue;>;"
    iget-object v1, p0, Lcom/oneplus/cache/MemoryLruCache;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/cache/MemoryLruCache;->m_Callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 29
    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected addEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/oneplus/cache/MemoryLruCache;, "Lcom/oneplus/cache/MemoryLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    iget-object v1, p0, Lcom/oneplus/cache/MemoryLruCache;->m_Callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/oneplus/cache/MemoryLruCache;->m_Callbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/cache/MemoryCache$Callback;

    invoke-interface {v1, p0, p1, p2}, Lcom/oneplus/cache/MemoryCache$Callback;->onEntryAdded(Lcom/oneplus/cache/MemoryCache;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 44
    :cond_0
    return-object p2
.end method

.method protected get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0
    .param p2, "obj"    # Ljava/lang/Object;
    .param p4, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;",
            "Ljava/lang/Object;",
            "TTValue;J)TTValue;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/oneplus/cache/MemoryLruCache;, "Lcom/oneplus/cache/MemoryLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TTValue;"
    return-object p2
.end method

.method public peek(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)TTValue;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/oneplus/cache/MemoryLruCache;, "Lcom/oneplus/cache/MemoryLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    invoke-super {p0, p1}, Lcom/oneplus/cache/LruCache;->peek(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback(Lcom/oneplus/cache/MemoryCache$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/cache/MemoryCache$Callback",
            "<TTKey;TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/oneplus/cache/MemoryLruCache;, "Lcom/oneplus/cache/MemoryLruCache<TTKey;TTValue;>;"
    .local p1, "callback":Lcom/oneplus/cache/MemoryCache$Callback;, "Lcom/oneplus/cache/MemoryCache$Callback<TTKey;TTValue;>;"
    iget-object v1, p0, Lcom/oneplus/cache/MemoryLruCache;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/cache/MemoryLruCache;->m_Callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 67
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected removeEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/oneplus/cache/MemoryLruCache;, "Lcom/oneplus/cache/MemoryLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    iget-object v1, p0, Lcom/oneplus/cache/MemoryLruCache;->m_Callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/oneplus/cache/MemoryLruCache;->m_Callbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/cache/MemoryCache$Callback;

    invoke-interface {v1, p0, p1, p2}, Lcom/oneplus/cache/MemoryCache$Callback;->onEntryRemoved(Lcom/oneplus/cache/MemoryCache;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method
