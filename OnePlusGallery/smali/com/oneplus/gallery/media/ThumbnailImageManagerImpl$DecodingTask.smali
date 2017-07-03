.class final Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;
.super Ljava/lang/Object;
.source "ThumbnailImageManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecodingTask"
.end annotation


# instance fields
.field public volatile bitmapDecoder:Lcom/oneplus/media/BitmapPool;

.field private final bitmapDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field public volatile bitmapDecodingHandle:Lcom/oneplus/base/Handle;

.field public volatile cache:Lcom/oneplus/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/Cache",
            "<",
            "Lcom/oneplus/gallery/cache/ImageCacheKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public volatile callback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

.field public volatile callbackHandler:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

.field public volatile centerCrop:Z

.field public volatile decodingHandle:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;

.field public volatile flags:I

.field public volatile media:Lcom/oneplus/gallery/media/Media;

.field public volatile startTime:J

.field public volatile targetHeight:I

.field public volatile targetWidth:I

.field final synthetic this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;


# direct methods
.method private constructor <init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)V
    .locals 2

    .prologue
    .line 252
    iput-object p1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask$1;-><init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->startTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;
    .param p2, "x1"    # Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$1;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;-><init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->decodingHandle:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    move-object/from16 v0, p0

    # invokes: Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->onDecodingTaskCompleted(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;)V
    invoke-static {v2, v0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->access$700(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    if-eqz v2, :cond_2

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    new-instance v3, Lcom/oneplus/gallery/cache/ImageCacheKey;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery/media/Media;

    invoke-direct {v3, v9}, Lcom/oneplus/gallery/cache/ImageCacheKey;-><init>(Lcom/oneplus/gallery/media/Media;)V

    const/4 v9, 0x0

    const-wide/16 v12, 0x3e8

    invoke-interface {v2, v3, v9, v12, v13}, Lcom/oneplus/cache/Cache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/Bitmap;

    .line 316
    .local v26, "thumb":Landroid/graphics/Bitmap;
    if-eqz v26, :cond_2

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->callbackHandler:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1, v3}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;->callOnThumbnailImageDecoded(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;Landroid/graphics/Bitmap;Z)V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->sleepForNextDecoding()V
    invoke-static {v2}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->access$800(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)V

    goto :goto_0

    .line 325
    .end local v26    # "thumb":Landroid/graphics/Bitmap;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->decodingHandle:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    move-object/from16 v0, p0

    # invokes: Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->onDecodingTaskCompleted(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;)V
    invoke-static {v2, v0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->access$700(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;)V

    goto :goto_0

    .line 332
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecoder:Lcom/oneplus/media/BitmapPool;

    if-eqz v2, :cond_0

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/Media;->getWidth()I

    move-result v18

    .line 336
    .local v18, "originalWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/Media;->getHeight()I

    move-result v17

    .line 337
    .local v17, "originalHeight":I
    if-lez v18, :cond_4

    if-gtz v17, :cond_5

    .line 339
    :cond_4
    const-string v2, "ThumbnailImageManager"

    const-string v3, "Unknown media size"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->callbackHandler:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

    const/4 v3, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v9}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;->callOnThumbnailImageDecoded(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 343
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->targetWidth:I

    int-to-float v2, v2

    move/from16 v0, v18

    int-to-float v3, v0

    div-float v22, v2, v3

    .line 344
    .local v22, "ratioX1":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->targetHeight:I

    int-to-float v2, v2

    move/from16 v0, v17

    int-to-float v3, v0

    div-float v24, v2, v3

    .line 345
    .local v24, "ratioY1":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->targetHeight:I

    int-to-float v2, v2

    move/from16 v0, v18

    int-to-float v3, v0

    div-float v23, v2, v3

    .line 346
    .local v23, "ratioX2":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->targetWidth:I

    int-to-float v2, v2

    move/from16 v0, v17

    int-to-float v3, v0

    div-float v25, v2, v3

    .line 348
    .local v25, "ratioY2":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->centerCrop:Z

    if-eqz v2, :cond_8

    .line 350
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 351
    .local v20, "ratio1":F
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 358
    .local v21, "ratio2":F
    :goto_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 359
    .local v19, "ratio":F
    move/from16 v0, v18

    int-to-float v2, v0

    mul-float v2, v2, v19

    float-to-int v6, v2

    .line 360
    .local v6, "targetWidth":I
    move/from16 v0, v17

    int-to-float v2, v0

    mul-float v2, v2, v19

    float-to-int v7, v2

    .line 363
    .local v7, "targetHeight":I
    const/4 v8, 0x1

    .line 364
    .local v8, "decodingFlags":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 365
    or-int/lit8 v8, v8, 0x2

    .line 368
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v10

    .line 369
    .local v10, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/media/MediaType;->VIDEO:Lcom/oneplus/gallery/media/MediaType;

    if-ne v2, v3, :cond_9

    const/4 v5, 0x3

    .line 371
    .local v5, "mediaType":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 372
    .local v4, "contentUri":Landroid/net/Uri;
    if-eqz v4, :cond_a

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecoder:Lcom/oneplus/media/BitmapPool;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->callbackHandler:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

    .end local v10    # "filePath":Ljava/lang/String;
    invoke-virtual/range {v2 .. v10}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingHandle:Lcom/oneplus/base/Handle;

    .line 382
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->sleepForNextDecoding()V
    invoke-static {v2}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->access$800(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)V

    goto/16 :goto_0

    .line 355
    .end local v4    # "contentUri":Landroid/net/Uri;
    .end local v5    # "mediaType":I
    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .end local v8    # "decodingFlags":I
    .end local v19    # "ratio":F
    .end local v20    # "ratio1":F
    .end local v21    # "ratio2":F
    :cond_8
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 356
    .restart local v20    # "ratio1":F
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .restart local v21    # "ratio2":F
    goto/16 :goto_1

    .line 369
    .restart local v6    # "targetWidth":I
    .restart local v7    # "targetHeight":I
    .restart local v8    # "decodingFlags":I
    .restart local v10    # "filePath":Ljava/lang/String;
    .restart local v19    # "ratio":F
    :cond_9
    const/4 v5, 0x1

    goto :goto_2

    .line 378
    .restart local v4    # "contentUri":Landroid/net/Uri;
    .restart local v5    # "mediaType":I
    :cond_a
    if-eqz v10, :cond_7

    .line 379
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecoder:Lcom/oneplus/media/BitmapPool;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->callbackHandler:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

    move-object/from16 v16, v0

    move v11, v5

    move v12, v6

    move v13, v7

    move v14, v8

    invoke-virtual/range {v9 .. v16}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingHandle:Lcom/oneplus/base/Handle;

    goto :goto_3

    .line 385
    .end local v10    # "filePath":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->callbackHandler:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

    const/4 v3, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v9}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;->callOnThumbnailImageDecoded(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_0
.end method
