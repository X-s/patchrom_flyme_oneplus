.class Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask$1;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;

.field final synthetic val$bitmapInCache:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask$1;->this$0:Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;

    iput-object p2, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask$1;->val$bitmapInCache:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask$1;->this$0:Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->callback:Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->access$1300(Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;)Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask$1;->this$0:Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->callback:Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;->access$1300(Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;)Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask$1;->val$bitmapInCache:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;->onCacheImageLoaded(Landroid/graphics/Bitmap;)V

    .line 324
    :cond_0
    return-void
.end method
