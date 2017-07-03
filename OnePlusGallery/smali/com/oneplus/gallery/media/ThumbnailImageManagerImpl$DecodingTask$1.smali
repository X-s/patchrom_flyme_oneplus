.class Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;
.super Lcom/oneplus/media/BitmapPool$Callback;
.source "ThumbnailImageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 275
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery/media/Media;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getLastModifiedTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 279
    new-instance v0, Lcom/oneplus/gallery/cache/ImageCacheKey;

    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery/media/Media;

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/cache/ImageCacheKey;-><init>(Lcom/oneplus/gallery/media/Media;)V

    .line 280
    .local v0, "key":Lcom/oneplus/gallery/cache/ImageCacheKey;
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    instance-of v1, v1, Lcom/oneplus/cache/HybridBitmapLruCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    check-cast v1, Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-virtual {v1, v0}, Lcom/oneplus/cache/HybridBitmapLruCache;->peek(Ljava/io/Serializable;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, p3, :cond_1

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    invoke-interface {v1, v0, p3}, Lcom/oneplus/cache/Cache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    .end local v0    # "key":Lcom/oneplus/gallery/cache/ImageCacheKey;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->callbackHandler:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

    iget-object v2, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p3, v3}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;->callOnThumbnailImageDecoded(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;Landroid/graphics/Bitmap;Z)V

    .line 287
    return-void

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecoder:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v1, p2}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 260
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery/media/Media;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getLastModifiedTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 264
    new-instance v0, Lcom/oneplus/gallery/cache/ImageCacheKey;

    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery/media/Media;

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/cache/ImageCacheKey;-><init>(Lcom/oneplus/gallery/media/Media;)V

    .line 265
    .local v0, "key":Lcom/oneplus/gallery/cache/ImageCacheKey;
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    instance-of v1, v1, Lcom/oneplus/cache/HybridBitmapLruCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    check-cast v1, Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-virtual {v1, v0}, Lcom/oneplus/cache/HybridBitmapLruCache;->peek(Ljava/io/Serializable;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, p3, :cond_1

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    invoke-interface {v1, v0, p3}, Lcom/oneplus/cache/Cache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .end local v0    # "key":Lcom/oneplus/gallery/cache/ImageCacheKey;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->callbackHandler:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

    iget-object v2, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p3, v3}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;->callOnThumbnailImageDecoded(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;Landroid/graphics/Bitmap;Z)V

    .line 272
    return-void

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v1, v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecoder:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v1, p2}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    goto :goto_0
.end method
