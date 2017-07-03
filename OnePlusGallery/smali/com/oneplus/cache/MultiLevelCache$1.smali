.class Lcom/oneplus/cache/MultiLevelCache$1;
.super Ljava/lang/Object;
.source "MultiLevelCache.java"

# interfaces
.implements Lcom/oneplus/cache/MemoryCache$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/cache/MultiLevelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/cache/MemoryCache$Callback",
        "<TTKey;TTValue;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/cache/MultiLevelCache;


# direct methods
.method constructor <init>(Lcom/oneplus/cache/MultiLevelCache;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/cache/MultiLevelCache$1;->this$0:Lcom/oneplus/cache/MultiLevelCache;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryAdded(Lcom/oneplus/cache/MemoryCache;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/cache/MemoryCache",
            "<TTKey;TTValue;>;TTKey;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "cache":Lcom/oneplus/cache/MemoryCache;, "Lcom/oneplus/cache/MemoryCache<TTKey;TTValue;>;"
    .local p2, "key":Ljava/lang/Object;, "TTKey;"
    .local p3, "value":Ljava/lang/Object;, "TTValue;"
    return-void
.end method

.method public onEntryRemoved(Lcom/oneplus/cache/MemoryCache;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/cache/MemoryCache",
            "<TTKey;TTValue;>;TTKey;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "cache":Lcom/oneplus/cache/MemoryCache;, "Lcom/oneplus/cache/MemoryCache<TTKey;TTValue;>;"
    .local p2, "key":Ljava/lang/Object;, "TTKey;"
    .local p3, "value":Ljava/lang/Object;, "TTValue;"
    iget-object v2, p0, Lcom/oneplus/cache/MultiLevelCache$1;->this$0:Lcom/oneplus/cache/MultiLevelCache;

    # getter for: Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;
    invoke-static {v2}, Lcom/oneplus/cache/MultiLevelCache;->access$0(Lcom/oneplus/cache/MultiLevelCache;)[Lcom/oneplus/cache/Cache;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 33
    :goto_1
    return-void

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/oneplus/cache/MultiLevelCache$1;->this$0:Lcom/oneplus/cache/MultiLevelCache;

    # getter for: Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;
    invoke-static {v2}, Lcom/oneplus/cache/MultiLevelCache;->access$0(Lcom/oneplus/cache/MultiLevelCache;)[Lcom/oneplus/cache/Cache;

    move-result-object v2

    aget-object v0, v2, v1

    .line 27
    .local v0, "candCache":Lcom/oneplus/cache/Cache;, "Lcom/oneplus/cache/Cache<TTKey;TTValue;>;"
    if-ne v0, p1, :cond_1

    iget-object v2, p0, Lcom/oneplus/cache/MultiLevelCache$1;->this$0:Lcom/oneplus/cache/MultiLevelCache;

    # getter for: Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;
    invoke-static {v2}, Lcom/oneplus/cache/MultiLevelCache;->access$0(Lcom/oneplus/cache/MultiLevelCache;)[Lcom/oneplus/cache/Cache;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 29
    iget-object v2, p0, Lcom/oneplus/cache/MultiLevelCache$1;->this$0:Lcom/oneplus/cache/MultiLevelCache;

    # getter for: Lcom/oneplus/cache/MultiLevelCache;->m_Caches:[Lcom/oneplus/cache/Cache;
    invoke-static {v2}, Lcom/oneplus/cache/MultiLevelCache;->access$0(Lcom/oneplus/cache/MultiLevelCache;)[Lcom/oneplus/cache/Cache;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-interface {v2, p2, p3}, Lcom/oneplus/cache/Cache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
