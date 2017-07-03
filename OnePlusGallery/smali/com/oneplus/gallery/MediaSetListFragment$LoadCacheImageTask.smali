.class final Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaSetListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadCacheImageTask"
.end annotation


# static fields
.field private static final TIME_OUT:J = 0x320L


# instance fields
.field private volatile callback:Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;

.field private volatile callbackHandler:Landroid/os/Handler;

.field private volatile defaultBitmap:Landroid/graphics/Bitmap;

.field private volatile key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/os/Handler;Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callbackHandler"    # Landroid/os/Handler;
    .param p4, "callback"    # Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->key:Ljava/lang/String;

    .line 305
    iput-object p2, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 306
    iput-object p3, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->callbackHandler:Landroid/os/Handler;

    .line 307
    iput-object p4, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->callback:Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;

    .line 308
    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;)Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->callback:Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 313
    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    invoke-static {}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1200()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->defaultBitmap:Landroid/graphics/Bitmap;

    const-wide/16 v4, 0x320

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oneplus/cache/HybridBitmapLruCache;->get(Ljava/io/Serializable;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 315
    .local v0, "bitmapInCache":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->callbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->callbackHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 317
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->callbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask$1;-><init>(Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->callback:Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->callback:Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;

    invoke-interface {v1, v0}, Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;->onCacheImageLoaded(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
