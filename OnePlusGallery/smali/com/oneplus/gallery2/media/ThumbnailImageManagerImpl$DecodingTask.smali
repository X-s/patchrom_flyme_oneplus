.class final Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;
.super Ljava/lang/Object;
.source "ThumbnailImageManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecodingTask"
.end annotation


# instance fields
.field private final bitmapDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field public volatile bitmapDecodingHandle:Lcom/oneplus/base/Handle;

.field public volatile cache:Lcom/oneplus/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/Cache",
            "<",
            "Lcom/oneplus/gallery2/media/MediaCacheKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public volatile callback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

.field public volatile callbackHandler:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;

.field public volatile centerCrop:Z

.field public volatile decoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

.field public volatile decodingHandle:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;

.field public volatile flags:I

.field public volatile isInvalidated:Z

.field public volatile media:Lcom/oneplus/gallery2/media/Media;

.field public volatile mediaHeight:I

.field public volatile mediaWidth:I

.field public volatile startTime:J

.field public volatile targetHeight:I

.field public volatile targetWidth:I

.field final synthetic this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;


# direct methods
.method private constructor <init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;)V
    .locals 2

    .prologue
    .line 326
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask$1;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->startTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;
    .param p2, "x1"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$1;

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;Lcom/oneplus/base/Handle;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Landroid/graphics/Bitmap;
    .param p4, "x4"    # Z

    .prologue
    .line 326
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V
    .locals 6
    .param p1, "decodingHandle"    # Lcom/oneplus/base/Handle;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 359
    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getLastModifiedTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;

    move-result-object v0

    .line 364
    .local v0, "key":Lcom/oneplus/gallery2/media/MediaCacheKey;
    if-eqz v0, :cond_1

    .line 366
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    instance-of v1, v1, Lcom/oneplus/cache/HybridBitmapLruCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    check-cast v1, Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-virtual {v1, v0}, Lcom/oneplus/cache/HybridBitmapLruCache;->peek(Ljava/io/Serializable;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, p3, :cond_1

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    invoke-interface {v1, v0, p3}, Lcom/oneplus/cache/Cache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 371
    .end local v0    # "key":Lcom/oneplus/gallery2/media/MediaCacheKey;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->callbackHandler:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p3, v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->callOnThumbnailImageDecoded(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;Landroid/graphics/Bitmap;Z)V

    .line 372
    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->decodingHandle:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    move-object/from16 v0, p0

    # invokes: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->onDecodingTaskCompleted(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)V
    invoke-static {v2, v0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->access$600(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->mediaWidth:I

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->mediaHeight:I

    if-gtz v2, :cond_3

    .line 388
    :cond_2
    const-string v2, "ThumbnailImageManager"

    const-string v3, "Unknown media size"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5, v9}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 392
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->targetWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->mediaWidth:I

    int-to-float v3, v3

    div-float v24, v2, v3

    .line 393
    .local v24, "ratioX1":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->targetHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->mediaHeight:I

    int-to-float v3, v3

    div-float v26, v2, v3

    .line 394
    .local v26, "ratioY1":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->targetHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->mediaWidth:I

    int-to-float v3, v3

    div-float v25, v2, v3

    .line 395
    .local v25, "ratioX2":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->targetWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->mediaHeight:I

    int-to-float v3, v3

    div-float v27, v2, v3

    .line 397
    .local v27, "ratioY2":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->centerCrop:Z

    if-eqz v2, :cond_4

    .line 399
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v22

    .line 400
    .local v22, "ratio1":F
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v23

    .line 407
    .local v23, "ratio2":F
    :goto_1
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 408
    .local v19, "ratio":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->mediaWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v19

    float-to-int v6, v2

    .line 409
    .local v6, "targetWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->mediaHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v19

    float-to-int v7, v2

    .line 412
    .local v7, "targetHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    if-eqz v2, :cond_6

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;

    move-result-object v17

    .line 415
    .local v17, "cacheKey":Lcom/oneplus/gallery2/media/MediaCacheKey;
    if-eqz v17, :cond_6

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    const/4 v3, 0x0

    const-wide/16 v12, 0x3e8

    move-object/from16 v0, v17

    invoke-interface {v2, v0, v3, v12, v13}, Lcom/oneplus/cache/Cache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/graphics/Bitmap;

    .line 418
    .local v29, "thumb":Landroid/graphics/Bitmap;
    if-eqz v29, :cond_6

    .line 420
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_5

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_5

    .line 422
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v2, v3, v1, v5}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    # invokes: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->sleepForNextDecoding()V
    invoke-static {v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->access$800(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;)V

    goto/16 :goto_0

    .line 404
    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .end local v17    # "cacheKey":Lcom/oneplus/gallery2/media/MediaCacheKey;
    .end local v19    # "ratio":F
    .end local v22    # "ratio1":F
    .end local v23    # "ratio2":F
    .end local v29    # "thumb":Landroid/graphics/Bitmap;
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v22

    .line 405
    .restart local v22    # "ratio1":F
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v23

    .restart local v23    # "ratio2":F
    goto :goto_1

    .line 427
    .restart local v6    # "targetWidth":I
    .restart local v7    # "targetHeight":I
    .restart local v17    # "cacheKey":Lcom/oneplus/gallery2/media/MediaCacheKey;
    .restart local v19    # "ratio":F
    .restart local v29    # "thumb":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/oneplus/cache/Cache;->remove(Ljava/lang/Object;)Z

    .line 433
    .end local v17    # "cacheKey":Lcom/oneplus/gallery2/media/MediaCacheKey;
    .end local v29    # "thumb":Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->decodingHandle:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    move-object/from16 v0, p0

    # invokes: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->onDecodingTaskCompleted(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)V
    invoke-static {v2, v0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->access$600(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)V

    goto/16 :goto_0

    .line 440
    :cond_7
    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$8;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 515
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5, v9}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_0

    .line 472
    .restart local v29    # "thumb":Landroid/graphics/Bitmap;
    :cond_8
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->isInvalidated:Z

    .line 473
    const-string v2, "ThumbnailImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is invalidated, decode again"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 447
    .end local v29    # "thumb":Landroid/graphics/Bitmap;
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery2/media/Media;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/oneplus/gallery2/media/Media;->openInputStream(I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v28

    .local v28, "stream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 449
    const/4 v8, 0x0

    .line 450
    .local v8, "decodingFlags":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->decoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    iget-boolean v2, v2, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->canUseEmbeddedThumbnail:Z

    if-nez v2, :cond_9

    .line 451
    or-int/lit8 v8, v8, 0x2

    .line 452
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->decoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    iget-boolean v2, v2, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->opaque:Z

    if-eqz v2, :cond_a

    .line 453
    or-int/lit8 v8, v8, 0x10

    .line 454
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->decoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    iget-boolean v2, v2, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->preferQualityOverSpeed:Z

    if-eqz v2, :cond_b

    .line 455
    or-int/lit8 v8, v8, 0x1

    .line 456
    :cond_b
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v28

    invoke-static {v0, v6, v7, v8, v2}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v29

    .line 457
    .restart local v29    # "thumb":Landroid/graphics/Bitmap;
    if-eqz v28, :cond_c

    if-eqz v3, :cond_d

    :try_start_3
    invoke-virtual/range {v28 .. v28}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 463
    .end local v8    # "decodingFlags":I
    .end local v28    # "stream":Ljava/io/InputStream;
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->decodingHandle:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    move-object/from16 v0, p0

    # invokes: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->onDecodingTaskCompleted(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)V
    invoke-static {v2, v0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->access$600(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)V

    goto/16 :goto_0

    .line 457
    .restart local v8    # "decodingFlags":I
    .restart local v28    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v30

    .local v30, "x2":Ljava/lang/Throwable;
    :try_start_4
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 458
    .end local v8    # "decodingFlags":I
    .end local v28    # "stream":Ljava/io/InputStream;
    .end local v29    # "thumb":Landroid/graphics/Bitmap;
    .end local v30    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v18

    .line 460
    .local v18, "ex":Ljava/lang/Throwable;
    const/16 v29, 0x0

    .line 461
    .restart local v29    # "thumb":Landroid/graphics/Bitmap;
    const-string v2, "ThumbnailImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 457
    .end local v18    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "decodingFlags":I
    .restart local v28    # "stream":Ljava/io/InputStream;
    :cond_d
    :try_start_5
    invoke-virtual/range {v28 .. v28}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 447
    .end local v29    # "thumb":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 457
    :catchall_0
    move-exception v3

    move-object/from16 v31, v3

    move-object v3, v2

    move-object/from16 v2, v31

    :goto_3
    if-eqz v28, :cond_e

    if-eqz v3, :cond_f

    :try_start_7
    invoke-virtual/range {v28 .. v28}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_e
    :goto_4
    :try_start_8
    throw v2

    :catch_3
    move-exception v30

    .restart local v30    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v30    # "x2":Ljava/lang/Throwable;
    :cond_f
    invoke-virtual/range {v28 .. v28}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    .line 468
    .end local v8    # "decodingFlags":I
    .end local v28    # "stream":Ljava/io/InputStream;
    .restart local v29    # "thumb":Landroid/graphics/Bitmap;
    :cond_10
    monitor-enter p0

    .line 470
    :try_start_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->isInvalidated:Z

    if-nez v2, :cond_8

    .line 471
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 476
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v2, v3, v1, v5}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    .line 477
    if-eqz v29, :cond_0

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    # invokes: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->sleepForNextDecoding()V
    invoke-static {v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->access$800(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;)V

    goto/16 :goto_0

    .line 474
    :catchall_1
    move-exception v2

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v2

    .line 484
    .end local v29    # "thumb":Landroid/graphics/Bitmap;
    :pswitch_1
    const/4 v8, 0x1

    .line 485
    .restart local v8    # "decodingFlags":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_11

    .line 486
    or-int/lit8 v8, v8, 0x2

    .line 487
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 488
    .local v4, "contentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getFileSize()J

    move-result-wide v20

    .line 489
    .local v20, "fileSize":J
    if-eqz v4, :cond_14

    .line 491
    const-wide/32 v2, 0x40000000

    cmp-long v2, v20, v2

    if-ltz v2, :cond_13

    .line 492
    # getter for: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_LargeVideoThumbDecoder:Lcom/oneplus/media/BitmapPool;
    invoke-static {}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->access$900()Lcom/oneplus/media/BitmapPool;

    move-result-object v2

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->callbackHandler:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;

    invoke-virtual/range {v2 .. v10}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingHandle:Lcom/oneplus/base/Handle;

    .line 507
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    # invokes: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->sleepForNextDecoding()V
    invoke-static {v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->access$800(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;)V

    goto/16 :goto_0

    .line 494
    :cond_13
    # getter for: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_VideoThumbDecoder:Lcom/oneplus/media/BitmapPool;
    invoke-static {}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->access$1000()Lcom/oneplus/media/BitmapPool;

    move-result-object v2

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->callbackHandler:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;

    invoke-virtual/range {v2 .. v10}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingHandle:Lcom/oneplus/base/Handle;

    goto :goto_5

    .line 498
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v10

    .line 499
    .local v10, "filePath":Ljava/lang/String;
    if-eqz v10, :cond_12

    .line 501
    const-wide/32 v2, 0x40000000

    cmp-long v2, v20, v2

    if-ltz v2, :cond_15

    .line 502
    # getter for: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_LargeVideoThumbDecoder:Lcom/oneplus/media/BitmapPool;
    invoke-static {}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->access$900()Lcom/oneplus/media/BitmapPool;

    move-result-object v9

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->callbackHandler:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;

    move-object/from16 v16, v0

    move v12, v6

    move v13, v7

    move v14, v8

    invoke-virtual/range {v9 .. v16}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingHandle:Lcom/oneplus/base/Handle;

    goto :goto_5

    .line 504
    :cond_15
    # getter for: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_VideoThumbDecoder:Lcom/oneplus/media/BitmapPool;
    invoke-static {}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->access$1000()Lcom/oneplus/media/BitmapPool;

    move-result-object v9

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->callbackHandler:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;

    move-object/from16 v16, v0

    move v12, v6

    move v13, v7

    move v14, v8

    invoke-virtual/range {v9 .. v16}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingHandle:Lcom/oneplus/base/Handle;

    goto :goto_5

    .line 510
    .end local v10    # "filePath":Ljava/lang/String;
    :cond_16
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5, v9}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_0

    .line 457
    .end local v4    # "contentUri":Landroid/net/Uri;
    .end local v20    # "fileSize":J
    .restart local v28    # "stream":Ljava/io/InputStream;
    :catchall_2
    move-exception v2

    goto/16 :goto_3

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
