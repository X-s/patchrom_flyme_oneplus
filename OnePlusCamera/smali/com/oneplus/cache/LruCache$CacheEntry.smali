.class final Lcom/oneplus/cache/LruCache$CacheEntry;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/cache/LruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheEntry"
.end annotation


# instance fields
.field public volatile info:Ljava/lang/Object;

.field public volatile key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTKey;"
        }
    .end annotation
.end field

.field public volatile next:Lcom/oneplus/cache/LruCache$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/LruCache",
            "<TTKey;TTValue;>.CacheEntry;"
        }
    .end annotation
.end field

.field public volatile previous:Lcom/oneplus/cache/LruCache$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/LruCache",
            "<TTKey;TTValue;>.CacheEntry;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/cache/LruCache;

.field public volatile valueSize:J


# direct methods
.method private constructor <init>(Lcom/oneplus/cache/LruCache;)V
    .locals 0

    .prologue
    .line 44
    .local p0, "this":Lcom/oneplus/cache/LruCache$CacheEntry;, "Lcom/oneplus/cache/LruCache<TTKey;TTValue;>.CacheEntry;"
    iput-object p1, p0, Lcom/oneplus/cache/LruCache$CacheEntry;->this$0:Lcom/oneplus/cache/LruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/cache/LruCache;Lcom/oneplus/cache/LruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/cache/LruCache;
    .param p2, "x1"    # Lcom/oneplus/cache/LruCache$1;

    .prologue
    .line 44
    .local p0, "this":Lcom/oneplus/cache/LruCache$CacheEntry;, "Lcom/oneplus/cache/LruCache<TTKey;TTValue;>.CacheEntry;"
    invoke-direct {p0, p1}, Lcom/oneplus/cache/LruCache$CacheEntry;-><init>(Lcom/oneplus/cache/LruCache;)V

    return-void
.end method
