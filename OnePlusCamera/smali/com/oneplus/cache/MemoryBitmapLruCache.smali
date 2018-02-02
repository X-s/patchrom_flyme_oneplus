.class public Lcom/oneplus/cache/MemoryBitmapLruCache;
.super Lcom/oneplus/cache/MemoryLruCache;
.source "MemoryBitmapLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/cache/MemoryLruCache",
        "<TTKey;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "capacity"    # J

    .prologue
    .line 17
    .local p0, "this":Lcom/oneplus/cache/MemoryBitmapLruCache;, "Lcom/oneplus/cache/MemoryBitmapLruCache<TTKey;>;"
    invoke-direct {p0, p1, p2}, Lcom/oneplus/cache/MemoryLruCache;-><init>(J)V

    .line 15
    return-void
.end method


# virtual methods
.method protected getSizeInBytes(Ljava/lang/Object;Landroid/graphics/Bitmap;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 25
    .local p0, "this":Lcom/oneplus/cache/MemoryBitmapLruCache;, "Lcom/oneplus/cache/MemoryBitmapLruCache<TTKey;>;"
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected bridge synthetic getSizeInBytes(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 23
    .local p0, "this":Lcom/oneplus/cache/MemoryBitmapLruCache;, "Lcom/oneplus/cache/MemoryBitmapLruCache<TTKey;>;"
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/cache/MemoryBitmapLruCache;->getSizeInBytes(Ljava/lang/Object;Landroid/graphics/Bitmap;)J

    move-result-wide v0

    return-wide v0
.end method
