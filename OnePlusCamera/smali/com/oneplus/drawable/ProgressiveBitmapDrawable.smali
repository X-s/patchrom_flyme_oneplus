.class public Lcom/oneplus/drawable/ProgressiveBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressiveBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;,
        Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;,
        Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;
    }
.end annotation


# static fields
.field private static final DECODING_TILE_BITMAP:Landroid/graphics/Bitmap;

.field private static final EXTRA_DECODING_PADDING:I = 0x2

.field private static final INVALID_TILE_BITMAP:Landroid/graphics/Bitmap;

.field private static final MAX_ACTIVE_TILE_COUNT:I = 0x80

.field private static final MSG_BITMAP_DECODER_READY:I = 0x2711

.field private static final MSG_INVALIDATE:I = 0x2710

.field private static final MSG_UPDATE_BITMAP_INFO:I = 0x2712

.field private static final MSG_UPDATE_BITMAP_TILE:I = 0x271a

.field private static final MSG_UPDATE_FULL_SIZE_BITMAP:I = 0x271b

.field private static final PRINT_TRACE_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "ProgressiveBitmapDrawable"

.field private static final TILE_SIZE:I = 0x100

.field private static final m_DecodingExecutors:Ljava/util/concurrent/Executor;


# instance fields
.field private m_BitmapConfig:Landroid/graphics/Bitmap$Config;

.field private m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private m_BitmapDecoderInitTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

.field private m_BitmapInfoDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

.field private m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

.field private final m_DestDrawingBounds:Landroid/graphics/RectF;

.field private final m_DrawingBounds:Landroid/graphics/Rect;

.field private volatile m_FullSizeBitmap:Landroid/graphics/Bitmap;

.field private volatile m_Handler:Landroid/os/Handler;

.field private m_IsBitmapDecoderReady:Z

.field private m_IsHighQualityBitmapEnabled:Z

.field private volatile m_IsReleased:Z

.field private volatile m_Orientation:I

.field private volatile m_OriginalHeight:I

.field private volatile m_OriginalWidth:I

.field private m_Paint:Landroid/graphics/Paint;

.field private m_SampleSize:I

.field private m_Source:Ljava/lang/Object;

.field private final m_SrcDrawingBounds:Landroid/graphics/Rect;

.field private m_ThumbnailBitmap:Landroid/graphics/Bitmap;

.field private m_TileDecodingQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_TileUsageQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_Tiles:[[Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->INVALID_TILE_BITMAP:Landroid/graphics/Bitmap;

    .line 36
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->DECODING_TILE_BITMAP:Landroid/graphics/Bitmap;

    .line 45
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 131
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    .line 59
    iput-boolean v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    .line 62
    iput v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 63
    iput v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 65
    iput v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->initialize(Ljava/lang/Object;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->decodeBitmapInfoAsync()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->initializeBitmapDecoder()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;Landroid/graphics/BitmapRegionDecoder;ILjava/util/LinkedList;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable;
    .param p1, "x1"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;
    .param p2, "x2"    # Landroid/graphics/BitmapRegionDecoder;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/util/LinkedList;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->decodeTilesAsync(Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;Landroid/graphics/BitmapRegionDecoder;ILjava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private cancelDecodingBitmapTiles()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 144
    iget-object v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    .line 147
    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    .line 148
    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    .line 149
    check-cast v0, [[Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 152
    :cond_0
    return-void

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private decodeBitmapInfoAsync()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 158
    const/4 v4, 0x0

    .line 159
    .local v4, "width":I
    const/4 v1, 0x0

    .line 160
    .local v1, "height":I
    const/4 v3, 0x0

    .line 163
    .local v3, "orientation":I
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 165
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 166
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 167
    iget-object v5, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 168
    iget-object v5, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/lang/String;)I

    move-result v3

    .line 169
    const/16 v5, 0x5a

    if-eq v3, v5, :cond_0

    const/16 v5, 0x10e

    if-ne v3, v5, :cond_1

    .line 171
    :cond_0
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 172
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    iget-object v5, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v6, 0x2712

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v4, v1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 191
    :goto_1
    return-void

    .line 176
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :try_start_1
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 177
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0

    .line 182
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    const-string v5, "ProgressiveBitmapDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decodeBitmapInfoAsync() - Unknown source : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 188
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v5, "ProgressiveBitmapDrawable"

    const-string v6, "decodeBitmapInfoAsync() - Unknown error"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private decodeTilesAsync(Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;Landroid/graphics/BitmapRegionDecoder;ILjava/util/LinkedList;)V
    .locals 17
    .param p1, "task"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;
    .param p2, "decoder"    # Landroid/graphics/BitmapRegionDecoder;
    .param p3, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;",
            "Landroid/graphics/BitmapRegionDecoder;",
            "I",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p4, "decodingQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v2, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const-string v2, "ProgressiveBitmapDrawable"

    const-string v3, "decodeTilesAsync() - Sample size : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    if-eqz p2, :cond_9

    .line 208
    :try_start_0
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 209
    .local v8, "decodeRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 212
    .local v6, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, p3

    mul-int/lit16 v14, v0, 0x100

    .line 213
    .local v14, "tileSize":I
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 214
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 215
    const/4 v2, 0x1

    iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    iput-object v2, v10, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 217
    move/from16 v0, p3

    iput v0, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 218
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 219
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_3

    .line 221
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 222
    .local v12, "originalWidth":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 232
    .local v11, "originalHeight":I
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v2, :cond_4

    .line 234
    const-string v2, "ProgressiveBitmapDrawable"

    const-string v3, "decodeTilesAsync() - Sample size : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ", cancelled"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "decodeRect":Landroid/graphics/Rect;
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "originalHeight":I
    .end local v12    # "originalWidth":I
    .end local v14    # "tileSize":I
    :goto_2
    const-string v2, "ProgressiveBitmapDrawable"

    const-string v3, "decodeTilesAsync() - End"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    .restart local v8    # "decodeRect":Landroid/graphics/Rect;
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v14    # "tileSize":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 227
    .restart local v12    # "originalWidth":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .restart local v11    # "originalHeight":I
    goto :goto_1

    .line 240
    :cond_4
    monitor-enter p4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 242
    :try_start_2
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 243
    .local v13, "position":Ljava/lang/Integer;
    if-nez v13, :cond_5

    .line 245
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->wait()V

    .line 246
    monitor-exit p4

    goto :goto_1

    .line 250
    .end local v13    # "position":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 311
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "decodeRect":Landroid/graphics/Rect;
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "originalHeight":I
    .end local v12    # "originalWidth":I
    .end local v14    # "tileSize":I
    :catch_0
    move-exception v9

    .line 313
    .local v9, "ex":Ljava/lang/Throwable;
    const-string v2, "ProgressiveBitmapDrawable"

    const-string v3, "decodeTilesAsync() - Unknown error"

    invoke-static {v2, v3, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 248
    .end local v9    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    .restart local v8    # "decodeRect":Landroid/graphics/Rect;
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "originalHeight":I
    .restart local v12    # "originalWidth":I
    .restart local v13    # "position":Ljava/lang/Integer;
    .restart local v14    # "tileSize":I
    :cond_5
    :try_start_4
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shr-int/lit8 v15, v2, 0x10

    .line 249
    .local v15, "tileX":I
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0xffff

    and-int v16, v2, v3

    .line 250
    .local v16, "tileY":I
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    :try_start_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    sparse-switch v2, :sswitch_data_0

    .line 277
    mul-int v2, v15, v14

    mul-int v3, v16, v14

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 278
    iget v2, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v14

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 279
    iget v2, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v14

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 282
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v10}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 285
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v2, :cond_6

    .line 287
    const-string v2, "ProgressiveBitmapDrawable"

    const-string v3, "decodeTilesAsync() - Sample size : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ", cancelled"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 258
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :sswitch_0
    mul-int v2, v16, v14

    add-int/lit8 v3, v15, 0x1

    mul-int/2addr v3, v14

    sub-int v3, v11, v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 259
    iget v2, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v14

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 260
    iget v2, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v14

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 261
    const/4 v2, 0x0

    iget v3, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v8, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 264
    :sswitch_1
    add-int/lit8 v2, v16, 0x1

    mul-int/2addr v2, v14

    sub-int v2, v12, v2

    mul-int v3, v15, v14

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 265
    iget v2, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v14

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 266
    iget v2, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v14

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 267
    const/4 v2, 0x0

    iget v3, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v8, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 270
    :sswitch_2
    add-int/lit8 v2, v15, 0x1

    mul-int/2addr v2, v14

    sub-int v2, v12, v2

    add-int/lit8 v3, v16, 0x1

    mul-int/2addr v3, v14

    sub-int v3, v11, v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 271
    iget v2, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v14

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 272
    iget v2, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v14

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 273
    const/4 v2, 0x0

    iget v3, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 274
    const/4 v2, 0x0

    iget v3, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v8, Landroid/graphics/Rect;->top:I

    goto/16 :goto_3

    .line 292
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    if-eqz v2, :cond_7

    .line 294
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 295
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v2, :cond_7

    .line 297
    const-string v2, "ProgressiveBitmapDrawable"

    const-string v3, "decodeTilesAsync() - Sample size : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ", cancelled"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 303
    :cond_7
    if-nez v1, :cond_8

    .line 305
    sget-object v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->INVALID_TILE_BITMAP:Landroid/graphics/Bitmap;

    .line 306
    const-string v2, "ProgressiveBitmapDrawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeTilesAsync() - Fail to decode tile ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v3, 0x271a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    move/from16 v0, v16

    invoke-static {v2, v3, v15, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 318
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "decodeRect":Landroid/graphics/Rect;
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "originalHeight":I
    .end local v12    # "originalWidth":I
    .end local v13    # "position":Ljava/lang/Integer;
    .end local v14    # "tileSize":I
    .end local v15    # "tileX":I
    .end local v16    # "tileY":I
    :cond_9
    const-string v2, "ProgressiveBitmapDrawable"

    const-string v3, "decodeTilesAsync() - Decode directly"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x1000

    const/16 v4, 0x1000

    const/4 v5, 0x3

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4, v5, v7}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 328
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_4
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-nez v2, :cond_0

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v3, 0x271b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 325
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 255
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 593
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 596
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    invoke-direct {p0, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->onBitmapDecoderReady(Landroid/graphics/BitmapRegionDecoder;)V

    goto :goto_0

    .line 600
    :sswitch_1
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    goto :goto_0

    .line 605
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 606
    .local v0, "params":[Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    aget-object v1, v0, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->onBitmapInfoUpdated(III)V

    goto :goto_0

    .line 612
    .end local v0    # "params":[Ljava/lang/Object;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 613
    .restart local v0    # "params":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    aget-object v2, v0, v4

    if-ne v1, v2, :cond_0

    .line 614
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v3, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->onBitmapTileUpdated(IILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 593
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_1
        0x2711 -> :sswitch_0
        0x2712 -> :sswitch_2
        0x271a -> :sswitch_3
    .end sparse-switch
.end method

.method private initialize(Ljava/lang/Object;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 631
    if-nez p1, :cond_0

    .line 632
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bitmap source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_0
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    .line 636
    iput-object p2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 637
    iput-object p3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 640
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 641
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 644
    new-instance v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    .line 652
    return-void
.end method

.method private initializeBitmapDecoder()V
    .locals 8

    .prologue
    .line 658
    const-string v4, "ProgressiveBitmapDrawable"

    const-string v5, "initializeBitmapDecoder()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 660
    .local v2, "time":J
    const/4 v0, 0x0

    .line 663
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 664
    iget-object v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 672
    :goto_0
    const-string v4, "ProgressiveBitmapDrawable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeBitmapDecoder() - Take "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v5, 0x2711

    invoke-static {v4, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 674
    return-void

    .line 666
    :cond_0
    :try_start_1
    const-string v4, "ProgressiveBitmapDrawable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeBitmapDecoder() - Unknown source : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 668
    :catch_0
    move-exception v1

    .line 670
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v4, "initializeBitmapDecoder()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to create region decoder for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onBitmapDecoderReady(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .param p1, "decoder"    # Landroid/graphics/BitmapRegionDecoder;

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    if-eqz v0, :cond_1

    .line 682
    if-eqz p1, :cond_0

    .line 683
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsBitmapDecoderReady:Z

    .line 688
    if-eqz p1, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method private onBitmapInfoUpdated(III)V
    .locals 0
    .param p1, "originalWidth"    # I
    .param p2, "originalHeight"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 696
    iput p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 697
    iput p2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 698
    iput p3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    .line 699
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 700
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 701
    return-void
.end method

.method private onBitmapTileUpdated(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 707
    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 708
    .local v0, "position":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    aget-object v1, v1, p2

    aput-object p3, v1, p1

    .line 713
    sget-object v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->INVALID_TILE_BITMAP:Landroid/graphics/Bitmap;

    if-eq p3, v1, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method private startDecodingBitmapTiles()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    .line 800
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 803
    iget-boolean v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    if-gtz v3, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    int-to-double v4, v3

    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 808
    .local v0, "tileCountX":I
    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    int-to-double v4, v3

    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 809
    .local v1, "tileCountY":I
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    .line 810
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    .line 811
    new-array v3, v1, [[Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    .line 812
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 813
    iget-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    new-array v4, v0, [Landroid/graphics/Bitmap;

    aput-object v4, v3, v2

    .line 812
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 816
    :cond_2
    new-instance v3, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    iget-object v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    iget v5, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Landroid/graphics/BitmapRegionDecoder;ILjava/util/LinkedList;)V

    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    .line 817
    sget-object v3, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 348
    .local v7, "clipBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 349
    .local v6, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_0

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v25, v34, v35

    .line 359
    .local v25, "relativeSrcLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v27, v34, v35

    .line 360
    .local v27, "relativeSrcTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v26, v34, v35

    .line 361
    .local v26, "relativeSrcRight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v24, v34, v35

    .line 362
    .local v24, "relativeSrcBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    if-eqz v34, :cond_2

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v25

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v36, v36, v27

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->round(F)I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v37, v37, v26

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->round(F)I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v24

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->round(F)I

    move-result v38

    invoke-virtual/range {v34 .. v38}, Landroid/graphics/Rect;->set(IIII)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 374
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    if-eqz v34, :cond_3

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v25

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v36, v36, v27

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->round(F)I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v37, v37, v26

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->round(F)I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v24

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->round(F)I

    move-result v38

    invoke-virtual/range {v34 .. v38}, Landroid/graphics/Rect;->set(IIII)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 387
    :cond_3
    const/4 v9, 0x0

    .line 388
    .local v9, "drawLater":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapInfoDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    move-object/from16 v34, v0

    if-nez v34, :cond_4

    .line 390
    new-instance v34, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapInfoDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    .line 391
    sget-object v34, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapInfoDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    move-object/from16 v35, v0

    invoke-interface/range {v34 .. v35}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 392
    const/4 v9, 0x1

    .line 396
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsBitmapDecoderReady:Z

    move/from16 v34, v0

    if-nez v34, :cond_6

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoderInitTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    move-object/from16 v34, v0

    if-nez v34, :cond_5

    .line 400
    new-instance v34, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoderInitTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    .line 401
    sget-object v34, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoderInitTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    move-object/from16 v35, v0

    invoke-interface/range {v34 .. v35}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 403
    :cond_5
    const/4 v9, 0x1

    .line 407
    :cond_6
    if-nez v9, :cond_0

    .line 411
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    move/from16 v34, v0

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    move/from16 v34, v0

    if-lez v34, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    move/from16 v34, v0

    if-lez v34, :cond_0

    .line 415
    const/16 v28, 0x2

    .line 416
    .local v28, "sampleSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    move/from16 v34, v0

    div-int v8, v34, v28

    .line 417
    .local v8, "displayWidth":I
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v34

    move/from16 v0, v34

    if-lt v8, v0, :cond_7

    const/16 v34, 0x100

    move/from16 v0, v28

    move/from16 v1, v34

    if-gt v0, v1, :cond_7

    .line 419
    shl-int/lit8 v28, v28, 0x1

    .line 420
    shr-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 422
    :cond_7
    shr-int/lit8 v28, v28, 0x1

    .line 425
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    .line 427
    const-string v34, "ProgressiveBitmapDrawable"

    const-string v35, "draw() - Change sample size from "

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const-string v37, " to "

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-static/range {v34 .. v38}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 429
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    .line 433
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    move-object/from16 v34, v0

    if-nez v34, :cond_9

    .line 434
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->startDecodingBitmapTiles()V

    .line 437
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    move/from16 v34, v0

    div-int v18, v34, v28

    .line 438
    .local v18, "originalWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    move/from16 v34, v0

    div-int v17, v34, v28

    .line 439
    .local v17, "originalHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v25

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v36, v36, v27

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->round(F)I

    move-result v36

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v37, v37, v26

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->round(F)I

    move-result v37

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v24

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->round(F)I

    move-result v38

    invoke-virtual/range {v34 .. v38}, Landroid/graphics/Rect;->set(IIII)V

    .line 445
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x43800000    # 256.0f

    div-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v34, v0

    add-int/lit8 v12, v34, -0x1

    .line 446
    .local v12, "maxTileX":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x43800000    # 256.0f

    div-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v34, v0

    add-int/lit8 v13, v34, -0x1

    .line 447
    .local v13, "maxTileY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x100

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->floor(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v29, v0

    .line 448
    .local v29, "startTileX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x100

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->floor(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v30, v0

    .line 449
    .local v30, "startTileY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x100

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 450
    .local v10, "endTileX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x100

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 451
    .local v11, "endTileY":I
    const/16 v34, 0x0

    add-int/lit8 v35, v29, -0x2

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 452
    .local v21, "paddingStartX":I
    const/16 v34, 0x0

    add-int/lit8 v35, v30, -0x2

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 453
    .local v22, "paddingStartY":I
    add-int/lit8 v34, v10, 0x2

    move/from16 v0, v34

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 454
    .local v19, "paddingEndX":I
    add-int/lit8 v34, v11, 0x2

    move/from16 v0, v34

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 455
    .local v20, "paddingEndY":I
    move/from16 v33, v20

    .local v33, "y":I
    :goto_2
    move/from16 v0, v33

    move/from16 v1, v22

    if-lt v0, v1, :cond_e

    .line 457
    move/from16 v32, v19

    .local v32, "x":I
    :goto_3
    move/from16 v0, v32

    move/from16 v1, v21

    if-lt v0, v1, :cond_d

    .line 459
    move/from16 v0, v33

    move/from16 v1, v30

    if-lt v0, v1, :cond_a

    move/from16 v0, v33

    if-gt v0, v11, :cond_a

    move/from16 v0, v32

    move/from16 v1, v29

    if-lt v0, v1, :cond_a

    move/from16 v0, v32

    if-le v0, v10, :cond_c

    .line 461
    :cond_a
    shl-int/lit8 v34, v32, 0x10

    or-int v34, v34, v33

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 462
    .local v23, "position":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    aget-object v34, v34, v33

    aget-object v34, v34, v32

    if-nez v34, :cond_c

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 469
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->notifyAll()V

    .line 471
    monitor-exit v35
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    aget-object v34, v34, v33

    sget-object v35, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->DECODING_TILE_BITMAP:Landroid/graphics/Bitmap;

    aput-object v35, v34, v32

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_b

    .line 477
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/LinkedList;->size()I

    move-result v34

    const/16 v35, 0x80

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_b

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 480
    .local v14, "oldPosition":I
    shr-int/lit8 v15, v14, 0x10

    .line 481
    .local v15, "oldX":I
    const v34, 0xffff

    and-int v16, v14, v34

    .line 482
    .local v16, "oldY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    aget-object v34, v34, v16

    const/16 v35, 0x0

    aput-object v35, v34, v15

    goto :goto_4

    .line 471
    .end local v14    # "oldPosition":I
    .end local v15    # "oldX":I
    .end local v16    # "oldY":I
    :catchall_0
    move-exception v34

    :try_start_1
    monitor-exit v35
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v34

    .line 485
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 457
    .end local v23    # "position":Ljava/lang/Integer;
    :cond_c
    add-int/lit8 v32, v32, -0x1

    goto/16 :goto_3

    .line 455
    :cond_d
    add-int/lit8 v33, v33, -0x1

    goto/16 :goto_2

    .line 492
    .end local v32    # "x":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 493
    move/from16 v33, v11

    :goto_5
    move/from16 v0, v33

    move/from16 v1, v30

    if-lt v0, v1, :cond_0

    .line 495
    move/from16 v32, v10

    .restart local v32    # "x":I
    :goto_6
    move/from16 v0, v32

    move/from16 v1, v29

    if-lt v0, v1, :cond_13

    .line 498
    shl-int/lit8 v34, v32, 0x10

    or-int v34, v34, v33

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 499
    .restart local v23    # "position":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    aget-object v34, v34, v33

    aget-object v31, v34, v32

    .line 500
    .local v31, "tileBitmap":Landroid/graphics/Bitmap;
    sget-object v34, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->DECODING_TILE_BITMAP:Landroid/graphics/Bitmap;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_11

    .line 502
    if-eqz v31, :cond_10

    .line 504
    sget-object v34, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->INVALID_TILE_BITMAP:Landroid/graphics/Bitmap;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_f

    .line 495
    :goto_7
    add-int/lit8 v32, v32, -0x1

    goto :goto_6

    .line 506
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v36, v0

    const/high16 v37, 0x43800000    # 256.0f

    mul-float v36, v36, v37

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v36, v36, v37

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    add-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v37, v0

    const/high16 v38, 0x43800000    # 256.0f

    mul-float v37, v37, v38

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v37, v37, v38

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v37, v37, v38

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    add-int v36, v36, v37

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v37, v0

    add-int/lit8 v38, v32, 0x1

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x43800000    # 256.0f

    mul-float v38, v38, v39

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v39, v0

    div-float v38, v38, v39

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    add-int/lit8 v39, v33, 0x1

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    const/high16 v40, 0x43800000    # 256.0f

    mul-float v39, v39, v40

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v40, v0

    div-float v39, v39, v40

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    add-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    invoke-virtual/range {v34 .. v38}, Landroid/graphics/RectF;->set(FFFF)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v35, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(FF)F

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v35, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(FF)F

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 540
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_12

    .line 542
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/LinkedList;->size()I

    move-result v34

    const/16 v35, 0x80

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_12

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 545
    .restart local v14    # "oldPosition":I
    shr-int/lit8 v15, v14, 0x10

    .line 546
    .restart local v15    # "oldX":I
    const v34, 0xffff

    and-int v16, v14, v34

    .line 547
    .restart local v16    # "oldY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    aget-object v34, v34, v16

    const/16 v35, 0x0

    aput-object v35, v34, v15

    goto :goto_9

    .line 520
    .end local v14    # "oldPosition":I
    .end local v15    # "oldX":I
    .end local v16    # "oldY":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 524
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->notifyAll()V

    .line 526
    monitor-exit v35
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    aget-object v34, v34, v33

    sget-object v35, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->DECODING_TILE_BITMAP:Landroid/graphics/Bitmap;

    aput-object v35, v34, v32

    goto :goto_8

    .line 526
    :catchall_1
    move-exception v34

    :try_start_3
    monitor-exit v35
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v34

    .line 532
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 534
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 536
    monitor-exit v35

    goto/16 :goto_8

    :catchall_2
    move-exception v34

    monitor-exit v35
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v34

    .line 552
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 493
    .end local v23    # "position":Ljava/lang/Integer;
    .end local v31    # "tileBitmap":Landroid/graphics/Bitmap;
    :cond_13
    add-int/lit8 v33, v33, -0x1

    goto/16 :goto_5
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    if-lez v0, :cond_0

    .line 563
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 566
    :goto_0
    return v0

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    .line 566
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    if-lez v0, :cond_0

    .line 583
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 586
    :goto_0
    return v0

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 586
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 723
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 724
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot called from another thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    if-eqz v0, :cond_2

    .line 736
    :cond_1
    :goto_0
    return-void

    .line 727
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    .line 728
    iput-object v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 729
    iput-object v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    .line 730
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 731
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 734
    iput-object v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 743
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 744
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 752
    return-void
.end method

.method public setHighQualityBitmapEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    if-eq v0, p1, :cond_0

    .line 763
    const-string v0, "ProgressiveBitmapDrawable"

    const-string v1, "setHighQualityBitmapEnabled() - "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 764
    iput-boolean p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    .line 765
    if-eqz p1, :cond_0

    .line 766
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 768
    :cond_0
    return-void
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 778
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 779
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 786
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    if-nez p1, :cond_0

    .line 789
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 790
    :cond_0
    const/4 v0, 0x1

    .line 792
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
