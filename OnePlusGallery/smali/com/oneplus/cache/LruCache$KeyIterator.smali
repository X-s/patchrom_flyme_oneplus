.class final Lcom/oneplus/cache/LruCache$KeyIterator;
.super Ljava/lang/Object;
.source "LruCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/cache/LruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TTKey;>;"
    }
.end annotation


# instance fields
.field private m_Entry:Lcom/oneplus/cache/LruCache$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/LruCache",
            "<TTKey;TTValue;>.CacheEntry;"
        }
    .end annotation
.end field

.field private m_IsFirstEntry:Z

.field final synthetic this$0:Lcom/oneplus/cache/LruCache;


# direct methods
.method public constructor <init>(Lcom/oneplus/cache/LruCache;)V
    .locals 1

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oneplus/cache/LruCache$KeyIterator;->this$0:Lcom/oneplus/cache/LruCache;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/cache/LruCache$KeyIterator;->m_IsFirstEntry:Z

    .line 62
    # getter for: Lcom/oneplus/cache/LruCache;->m_EntryHead:Lcom/oneplus/cache/LruCache$CacheEntry;
    invoke-static {p1}, Lcom/oneplus/cache/LruCache;->access$0(Lcom/oneplus/cache/LruCache;)Lcom/oneplus/cache/LruCache$CacheEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/cache/LruCache$KeyIterator;->m_Entry:Lcom/oneplus/cache/LruCache$CacheEntry;

    .line 63
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    iget-boolean v2, p0, Lcom/oneplus/cache/LruCache$KeyIterator;->m_IsFirstEntry:Z

    if-nez v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/oneplus/cache/LruCache$KeyIterator;->m_Entry:Lcom/oneplus/cache/LruCache$CacheEntry;

    iget-object v2, v2, Lcom/oneplus/cache/LruCache$CacheEntry;->next:Lcom/oneplus/cache/LruCache$CacheEntry;

    if-eqz v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v2, p0, Lcom/oneplus/cache/LruCache$KeyIterator;->m_Entry:Lcom/oneplus/cache/LruCache$CacheEntry;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTKey;"
        }
    .end annotation

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/oneplus/cache/LruCache$KeyIterator;->m_IsFirstEntry:Z

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/oneplus/cache/LruCache$KeyIterator;->m_Entry:Lcom/oneplus/cache/LruCache$CacheEntry;

    iget-object v0, v0, Lcom/oneplus/cache/LruCache$CacheEntry;->next:Lcom/oneplus/cache/LruCache$CacheEntry;

    iput-object v0, p0, Lcom/oneplus/cache/LruCache$KeyIterator;->m_Entry:Lcom/oneplus/cache/LruCache$CacheEntry;

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/oneplus/cache/LruCache$KeyIterator;->m_Entry:Lcom/oneplus/cache/LruCache$CacheEntry;

    iget-object v0, v0, Lcom/oneplus/cache/LruCache$CacheEntry;->key:Ljava/lang/Object;

    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/cache/LruCache$KeyIterator;->m_IsFirstEntry:Z

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot remove key from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
