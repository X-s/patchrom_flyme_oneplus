.class Lcom/oneplus/gallery/MediaSetListFragment$18;
.super Lcom/oneplus/media/BitmapPool$Callback;
.source "MediaSetListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaSetListFragment;->decodeSingleCoverImage(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaList;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaSetListFragment;

.field final synthetic val$imageKey:Ljava/lang/String;

.field final synthetic val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2231
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iput-object p2, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    iput-object p3, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->val$imageKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2235
    if-nez p3, :cond_0

    .line 2237
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5400(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onBitmapDecoded() - thumb is null"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->removeImageInCache(Lcom/oneplus/gallery/media/MediaSet;)V
    invoke-static {v3, v4}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1000(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)V

    .line 2243
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->createMediaListCoverImageFromQueue()V
    invoke-static {v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5500(Lcom/oneplus/gallery/MediaSetListFragment;)V

    .line 2274
    :goto_0
    return-void

    .line 2249
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5600(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/util/Hashtable;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->val$imageKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2250
    .local v2, "mediaSetDecodingHandleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2251
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5600(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/util/Hashtable;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->val$imageKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2254
    :cond_1
    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    invoke-static {}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1200()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->val$imageKey:Ljava/lang/String;

    invoke-virtual {v3, v4, p3}, Lcom/oneplus/cache/HybridBitmapLruCache;->add(Ljava/io/Serializable;Landroid/graphics/Bitmap;)Z

    .line 2257
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetCoverStatusTable:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5700(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/util/Hashtable;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    const/4 v0, 0x0

    .line 2261
    .local v0, "coverImageView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->findItemViewForMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;
    invoke-static {v3, v4}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5800(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;

    move-result-object v1

    .line 2262
    .local v1, "itemView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2263
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    iget-object v0, v3, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    .line 2265
    :cond_2
    if-eqz v0, :cond_3

    .line 2267
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2268
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2269
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    const/4 v4, 0x0

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V
    invoke-static {v3, v0, v4}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5000(Lcom/oneplus/gallery/MediaSetListFragment;Landroid/view/View;Z)V

    .line 2273
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$18;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->createMediaListCoverImageFromQueue()V
    invoke-static {v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5500(Lcom/oneplus/gallery/MediaSetListFragment;)V

    goto :goto_0
.end method
