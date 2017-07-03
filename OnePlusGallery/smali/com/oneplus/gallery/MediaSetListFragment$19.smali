.class Lcom/oneplus/gallery/MediaSetListFragment$19;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaSetListFragment;->decodeGridCoverImage(IIILcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaList;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaSetListFragment;

.field final synthetic val$canvas:Landroid/graphics/Canvas;

.field final synthetic val$completedMediaCountRef:Lcom/oneplus/base/Ref;

.field final synthetic val$coverWidth:I

.field final synthetic val$gridCover:Landroid/graphics/Bitmap;

.field final synthetic val$gridPerRow:I

.field final synthetic val$gridSize:I

.field final synthetic val$imageKey:Ljava/lang/String;

.field final synthetic val$index:I

.field final synthetic val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

.field final synthetic val$targetMediaCount:I


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/base/Ref;ILcom/oneplus/gallery/media/MediaSet;IIILandroid/graphics/Canvas;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 2360
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iput-object p2, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$completedMediaCountRef:Lcom/oneplus/base/Ref;

    iput p3, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$index:I

    iput-object p4, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    iput p5, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$gridSize:I

    iput p6, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$coverWidth:I

    iput p7, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$gridPerRow:I

    iput-object p8, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$canvas:Landroid/graphics/Canvas;

    iput-object p9, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$imageKey:Ljava/lang/String;

    iput p10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$targetMediaCount:I

    iput-object p11, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$gridCover:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 15
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2365
    iget-object v11, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$completedMediaCountRef:Lcom/oneplus/base/Ref;

    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$completedMediaCountRef:Lcom/oneplus/base/Ref;

    invoke-interface {v10}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 2367
    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5900(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onThumbnailImageDecoded() - thumbnail "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$index:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iget-object v13, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1900(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    iget v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$index:I

    iget v11, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$gridSize:I

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$coverWidth:I

    rem-int v7, v10, v11

    .line 2371
    .local v7, "rectLeft":I
    iget v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$index:I

    iget v11, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$gridPerRow:I

    div-int/2addr v10, v11

    iget v11, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$gridSize:I

    mul-int v8, v10, v11

    .line 2374
    .local v8, "rectTop":I
    if-eqz p3, :cond_5

    .line 2376
    const/4 v1, 0x0

    .line 2377
    .local v1, "bitmapRectLeft":I
    const/4 v2, 0x0

    .line 2378
    .local v2, "bitmapRectTop":I
    const/4 v9, 0x0

    .line 2379
    .local v9, "shortSide":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-lt v10, v11, :cond_4

    .line 2381
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 2382
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v2, v10, 0x2

    .line 2389
    :goto_0
    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$canvas:Landroid/graphics/Canvas;

    new-instance v11, Landroid/graphics/Rect;

    add-int v12, v1, v9

    add-int v13, v2, v9

    invoke-direct {v11, v1, v2, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    iget v13, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$gridSize:I

    add-int/2addr v13, v7

    iget v14, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$gridSize:I

    add-int/2addr v14, v8

    invoke-direct {v12, v7, v8, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2406
    .end local v1    # "bitmapRectLeft":I
    .end local v2    # "bitmapRectTop":I
    .end local v9    # "shortSide":I
    :goto_1
    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$canvas:Landroid/graphics/Canvas;

    new-instance v11, Landroid/graphics/Rect;

    iget v12, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$gridSize:I

    add-int/2addr v12, v7

    iget v13, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$gridSize:I

    add-int/2addr v13, v8

    invoke-direct {v11, v7, v8, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v12, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_ShadowPaint:Landroid/graphics/Paint;
    invoke-static {v12}, Lcom/oneplus/gallery/MediaSetListFragment;->access$6100(Lcom/oneplus/gallery/MediaSetListFragment;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2409
    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;
    invoke-static {v10}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5600(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/util/Hashtable;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$imageKey:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2410
    .local v5, "mediaSetDecodingHandleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;"
    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2411
    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;
    invoke-static {v10}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5600(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/util/Hashtable;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$imageKey:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    :cond_0
    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$completedMediaCountRef:Lcom/oneplus/base/Ref;

    invoke-interface {v10}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$targetMediaCount:I

    if-lt v10, v11, :cond_1

    .line 2416
    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    invoke-static {}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1200()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$imageKey:Ljava/lang/String;

    iget-object v12, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$gridCover:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11, v12}, Lcom/oneplus/cache/HybridBitmapLruCache;->add(Ljava/io/Serializable;Landroid/graphics/Bitmap;)Z

    .line 2417
    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$imageKey:Ljava/lang/String;

    iget-object v11, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v11}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2418
    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    invoke-static {}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1200()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v11}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$gridCover:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11, v12}, Lcom/oneplus/cache/HybridBitmapLruCache;->add(Ljava/io/Serializable;Landroid/graphics/Bitmap;)Z

    .line 2422
    :cond_1
    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetCoverStatusTable:Ljava/util/Hashtable;
    invoke-static {v10}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5700(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/util/Hashtable;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2425
    const/4 v3, 0x0

    .line 2426
    .local v3, "coverImageView":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iget-object v11, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->findItemViewForMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;
    invoke-static {v10, v11}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5800(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;

    move-result-object v4

    .line 2427
    .local v4, "itemView":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 2428
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    iget-object v3, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    .line 2430
    :cond_2
    if-eqz v3, :cond_3

    .line 2432
    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$gridCover:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2433
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2434
    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    const/4 v11, 0x0

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V
    invoke-static {v10, v3, v11}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5000(Lcom/oneplus/gallery/MediaSetListFragment;Landroid/view/View;Z)V

    .line 2438
    :cond_3
    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->createMediaListCoverImageFromQueue()V
    invoke-static {v10}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5500(Lcom/oneplus/gallery/MediaSetListFragment;)V

    .line 2440
    return-void

    .line 2386
    .end local v3    # "coverImageView":Landroid/widget/ImageView;
    .end local v4    # "itemView":Landroid/view/View;
    .end local v5    # "mediaSetDecodingHandleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;"
    .restart local v1    # "bitmapRectLeft":I
    .restart local v2    # "bitmapRectTop":I
    .restart local v9    # "shortSide":I
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 2387
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v1, v10, 0x2

    goto/16 :goto_0

    .line 2393
    .end local v1    # "bitmapRectLeft":I
    .end local v2    # "bitmapRectTop":I
    .end local v9    # "shortSide":I
    :cond_5
    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/oneplus/gallery/MediaSetListFragment;->access$6000(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onThumbnailImageDecoded() - thumb is null : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iget-object v13, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1900(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iget-object v11, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->removeImageInCache(Lcom/oneplus/gallery/media/MediaSet;)V
    invoke-static {v10, v11}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1000(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)V

    .line 2399
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 2400
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 2401
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2402
    iget-object v10, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$canvas:Landroid/graphics/Canvas;

    new-instance v11, Landroid/graphics/Rect;

    iget v12, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$gridSize:I

    add-int/2addr v12, v7

    iget v13, p0, Lcom/oneplus/gallery/MediaSetListFragment$19;->val$gridSize:I

    add-int/2addr v13, v8

    invoke-direct {v11, v7, v8, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v10, v11, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1
.end method
