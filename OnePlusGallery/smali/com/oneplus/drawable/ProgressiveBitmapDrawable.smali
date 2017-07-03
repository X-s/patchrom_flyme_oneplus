.class public Lcom/oneplus/drawable/ProgressiveBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressiveBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;,
        Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;,
        Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;
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

.field private m_ContentResolver:Landroid/content/ContentResolver;

.field private final m_DestDrawingBounds:Landroid/graphics/RectF;

.field private final m_DrawingBounds:Landroid/graphics/Rect;

.field private m_EndTileX:I

.field private m_EndTileY:I

.field private volatile m_FullSizeBitmap:Landroid/graphics/Bitmap;

.field private volatile m_Handler:Landroid/os/Handler;

.field private m_IsBitmapDecoderReady:Z

.field private m_IsHighQualityBitmapEnabled:Z

.field private volatile m_IsReleased:Z

.field private volatile m_Orientation:I

.field private volatile m_OriginalHeight:I

.field private final m_OriginalTilesCache:Lcom/oneplus/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_OriginalWidth:I

.field private m_Paint:Landroid/graphics/Paint;

.field private m_SampleSize:I

.field private m_Source:Ljava/lang/Object;

.field private final m_SrcDrawingBounds:Landroid/graphics/Rect;

.field private m_StartTileX:I

.field private m_StartTileY:I

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

    .line 40
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->INVALID_TILE_BITMAP:Landroid/graphics/Bitmap;

    .line 41
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->DECODING_TILE_BITMAP:Landroid/graphics/Bitmap;

    .line 50
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 153
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    .line 66
    iput-boolean v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    .line 69
    iput v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 70
    new-instance v0, Lcom/oneplus/cache/MemoryBitmapLruCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v0, v2, v3}, Lcom/oneplus/cache/MemoryBitmapLruCache;-><init>(J)V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalTilesCache:Lcom/oneplus/cache/LruCache;

    .line 71
    iput v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 73
    iput v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    .line 155
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ContentResolver:Landroid/content/ContentResolver;

    .line 156
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->initialize(Ljava/lang/Object;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 141
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    .line 66
    iput-boolean v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    .line 69
    iput v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 70
    new-instance v0, Lcom/oneplus/cache/MemoryBitmapLruCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v0, v2, v3}, Lcom/oneplus/cache/MemoryBitmapLruCache;-><init>(J)V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalTilesCache:Lcom/oneplus/cache/LruCache;

    .line 71
    iput v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 73
    iput v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->initialize(Ljava/lang/Object;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    .line 144
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->decodeBitmapInfoAsync()V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V
    .locals 0

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->initializeBitmapDecoder()V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;Landroid/graphics/BitmapRegionDecoder;ILjava/util/LinkedList;)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->decodeTilesAsync(Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;Landroid/graphics/BitmapRegionDecoder;ILjava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0, p1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private cancelDecodingBitmapTiles()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 168
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    .line 165
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    .line 171
    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    .line 172
    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    .line 173
    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    .line 174
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 176
    :cond_0
    return-void

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private decodeBitmapInfoAsync()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/16 v11, 0x10e

    const/16 v10, 0x5a

    const/4 v9, 0x1

    .line 182
    const/4 v5, 0x0

    .line 183
    .local v5, "width":I
    const/4 v1, 0x0

    .line 184
    .local v1, "height":I
    const/4 v4, 0x0

    .line 187
    .local v4, "orientation":I
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 189
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 190
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 191
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 192
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/lang/String;)I

    move-result v4

    .line 193
    if-eq v4, v10, :cond_0

    if-ne v4, v11, :cond_2

    .line 195
    :cond_0
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 196
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v7, 0x2712

    new-array v8, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v5, v1, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 235
    :goto_1
    return-void

    .line 200
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :try_start_1
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 201
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 203
    goto :goto_0

    .line 204
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v6, v6, Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_9

    .line 206
    :try_start_2
    iget-object v8, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 208
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_3
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 209
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 210
    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v4

    .line 211
    const/4 v6, 0x0

    invoke-static {v2, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 212
    if-eq v4, v10, :cond_4

    if-ne v4, v11, :cond_5

    .line 214
    :cond_4
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 215
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    :goto_2
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v6

    :goto_3
    if-nez v7, :cond_7

    :goto_4
    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 230
    :catch_0
    move-exception v0

    .line 232
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v6, "ProgressiveBitmapDrawable"

    const-string v7, "decodeBitmapInfoAsync() - Unknown error"

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 219
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_5
    :try_start_6
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 220
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 222
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v6

    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_6
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    goto :goto_3

    .end local v2    # "inputStream":Ljava/io/InputStream;
    :cond_7
    if-eq v7, v6, :cond_8

    :try_start_8
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    move-object v6, v7

    goto :goto_4

    .line 226
    :cond_9
    const-string v6, "ProgressiveBitmapDrawable"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "decodeBitmapInfoAsync() - Unknown source : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1
.end method

.method private decodeTilesAsync(Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;Landroid/graphics/BitmapRegionDecoder;ILjava/util/LinkedList;)V
    .locals 23
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
    .line 242
    .local p4, "decodingQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v3, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Sample size : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    if-eqz p2, :cond_c

    .line 252
    :try_start_0
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 253
    .local v9, "decodeRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 256
    .local v7, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, p3

    mul-int/lit16 v0, v0, 0x100

    move/from16 v16, v0

    .line 257
    .local v16, "tileSize":I
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 258
    .local v12, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v12, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 259
    const/4 v3, 0x1

    iput-boolean v3, v12, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    iput-object v3, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 261
    move/from16 v0, p3

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 262
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 263
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    .line 265
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 266
    .local v14, "originalWidth":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 276
    .local v13, "originalHeight":I
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v3, :cond_4

    .line 278
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Sample size : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ", cancelled"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "decodeRect":Landroid/graphics/Rect;
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "originalHeight":I
    .end local v14    # "originalWidth":I
    .end local v16    # "tileSize":I
    :goto_2
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - End"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    .restart local v9    # "decodeRect":Landroid/graphics/Rect;
    .restart local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v16    # "tileSize":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 271
    .restart local v14    # "originalWidth":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .restart local v13    # "originalHeight":I
    goto :goto_1

    .line 285
    :cond_4
    monitor-enter p4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    :try_start_2
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 288
    .local v15, "position":Ljava/lang/Integer;
    if-nez v15, :cond_5

    .line 290
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->wait()V

    .line 291
    monitor-exit p4

    goto :goto_1

    .line 285
    .end local v15    # "position":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 378
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "decodeRect":Landroid/graphics/Rect;
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "originalHeight":I
    .end local v14    # "originalWidth":I
    .end local v16    # "tileSize":I
    :catch_0
    move-exception v10

    .line 380
    .local v10, "ex":Ljava/lang/Throwable;
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Unknown error"

    invoke-static {v3, v4, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 293
    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    .restart local v9    # "decodeRect":Landroid/graphics/Rect;
    .restart local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "originalHeight":I
    .restart local v14    # "originalWidth":I
    .restart local v15    # "position":Ljava/lang/Integer;
    .restart local v16    # "tileSize":I
    :cond_5
    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    ushr-int/lit8 v17, v3, 0x10

    .line 294
    .local v17, "tileX":I
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0xffff

    and-int v18, v3, v4

    .line 285
    .local v18, "tileY":I
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 301
    :try_start_5
    # getter for: Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I
    invoke-static/range {p1 .. p1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->access$0(Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalTilesCache:Lcom/oneplus/cache/LruCache;

    const/4 v4, 0x0

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v3, v15, v4, v0, v1}, Lcom/oneplus/cache/LruCache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 304
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_6

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v4, 0x271a

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v4, v0, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 312
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    sparse-switch v3, :sswitch_data_0

    .line 334
    mul-int v3, v17, v16

    mul-int v4, v18, v16

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 335
    iget v3, v9, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v16

    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 336
    iget v3, v9, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v16

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 339
    :goto_3
    monitor-enter p2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 341
    :try_start_6
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v3, :cond_7

    .line 343
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Sample size : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ", cancelled before decoding tile"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    monitor-exit p2

    goto/16 :goto_2

    .line 339
    :catchall_1
    move-exception v3

    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3

    .line 315
    :sswitch_0
    mul-int v3, v18, v16

    add-int/lit8 v4, v17, 0x1

    mul-int v4, v4, v16

    sub-int v4, v13, v4

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 316
    iget v3, v9, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v16

    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 317
    iget v3, v9, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v16

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 318
    const/4 v3, 0x0

    iget v4, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 321
    :sswitch_1
    add-int/lit8 v3, v18, 0x1

    mul-int v3, v3, v16

    sub-int v3, v14, v3

    mul-int v4, v17, v16

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 322
    iget v3, v9, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v16

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 323
    iget v3, v9, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v16

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 324
    const/4 v3, 0x0

    iget v4, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 327
    :sswitch_2
    add-int/lit8 v3, v17, 0x1

    mul-int v3, v3, v16

    sub-int v3, v14, v3

    add-int/lit8 v4, v18, 0x1

    mul-int v4, v4, v16

    sub-int v4, v13, v4

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 328
    iget v3, v9, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v16

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 329
    iget v3, v9, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v16

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 330
    const/4 v3, 0x0

    iget v4, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 331
    const/4 v3, 0x0

    iget v4, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->top:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_3

    .line 346
    :cond_7
    :try_start_8
    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v12}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 339
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 350
    :try_start_9
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v3, :cond_8

    .line 352
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Sample size : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ", cancelled"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 357
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    if-eqz v3, :cond_9

    .line 359
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 360
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v3, :cond_9

    .line 362
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Sample size : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ", cancelled"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 368
    :cond_9
    if-nez v2, :cond_b

    .line 370
    sget-object v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->INVALID_TILE_BITMAP:Landroid/graphics/Bitmap;

    .line 371
    const-string v3, "ProgressiveBitmapDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "decodeTilesAsync() - Fail to decode tile ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v4, 0x271a

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v4, v0, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 373
    :cond_b
    # getter for: Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I
    invoke-static/range {p1 .. p1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->access$0(Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalTilesCache:Lcom/oneplus/cache/LruCache;

    invoke-virtual {v3, v15, v2}, Lcom/oneplus/cache/LruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_4

    .line 385
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "decodeRect":Landroid/graphics/Rect;
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "originalHeight":I
    .end local v14    # "originalWidth":I
    .end local v15    # "position":Ljava/lang/Integer;
    .end local v16    # "tileSize":I
    .end local v17    # "tileX":I
    .end local v18    # "tileY":I
    :cond_c
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Decode directly"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x1000

    const/16 v5, 0x1000

    const/4 v6, 0x3

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5, v6, v8}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 407
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_d
    :goto_5
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-nez v3, :cond_0

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v4, 0x271b

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 391
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v3, v3, Landroid/net/Uri;

    if-eqz v3, :cond_12

    .line 393
    const/4 v4, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v5, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v11

    .line 395
    .local v11, "inputStream":Ljava/io/InputStream;
    const/16 v3, 0x1000

    const/16 v5, 0x1000

    const/4 v6, 0x3

    :try_start_b
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v3, v5, v6, v8}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-object v2

    .line 396
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_d

    :try_start_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_5

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v3

    :goto_6
    if-nez v4, :cond_10

    :goto_7
    :try_start_d
    throw v3
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    .line 397
    :catch_1
    move-exception v10

    .line 399
    .restart local v10    # "ex":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 400
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Unknown error"

    invoke-static {v3, v4, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 396
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :catchall_3
    move-exception v3

    if-eqz v11, :cond_f

    :try_start_e
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    :cond_f
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    goto :goto_6

    .end local v11    # "inputStream":Ljava/io/InputStream;
    :cond_10
    if-eq v4, v3, :cond_11

    :try_start_f
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    :cond_11
    move-object v3, v4

    goto :goto_7

    .line 404
    :cond_12
    const/4 v2, 0x0

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_5

    .line 312
    nop

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

    .line 699
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 702
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    invoke-direct {p0, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->onBitmapDecoderReady(Landroid/graphics/BitmapRegionDecoder;)V

    goto :goto_0

    .line 706
    :sswitch_1
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    goto :goto_0

    .line 711
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 712
    .local v0, "params":[Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    aget-object v1, v0, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->onBitmapInfoUpdated(III)V

    goto :goto_0

    .line 718
    .end local v0    # "params":[Ljava/lang/Object;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 719
    .restart local v0    # "params":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    aget-object v2, v0, v4

    if-ne v1, v2, :cond_0

    .line 720
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v3, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->onBitmapTileUpdated(IILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 699
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
    .line 737
    if-nez p1, :cond_0

    .line 738
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bitmap source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_0
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    .line 742
    iput-object p2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 743
    iput-object p3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 746
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 747
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 750
    new-instance v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    .line 758
    return-void
.end method

.method private initializeBitmapDecoder()V
    .locals 10

    .prologue
    .line 764
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v6, "initializeBitmapDecoder()"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 766
    .local v4, "time":J
    const/4 v0, 0x0

    .line 769
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 770
    iget-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v3, v6}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 785
    :cond_0
    :goto_0
    const-string v3, "ProgressiveBitmapDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initializeBitmapDecoder() - Take "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v6, 0x2711

    invoke-static {v3, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 787
    return-void

    .line 771
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v3, v3, Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_5

    .line 773
    const/4 v6, 0x0

    :try_start_2
    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v7, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 775
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x1

    :try_start_3
    invoke-static {v2, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 776
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    if-nez v6, :cond_3

    :goto_1
    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 781
    :catch_0
    move-exception v1

    .line 783
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v3, "initializeBitmapDecoder()"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Fail to create region decoder for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 776
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v2    # "inputStream":Ljava/io/InputStream;
    :cond_3
    if-eq v6, v3, :cond_4

    :try_start_7
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object v3, v6

    goto :goto_1

    .line 779
    :cond_5
    const-string v3, "ProgressiveBitmapDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initializeBitmapDecoder() - Unknown source : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0
.end method

.method private isSameSource(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onBitmapDecoderReady(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .param p1, "decoder"    # Landroid/graphics/BitmapRegionDecoder;

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    if-eqz v0, :cond_1

    .line 824
    if-eqz p1, :cond_0

    .line 825
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsBitmapDecoderReady:Z

    .line 830
    if-eqz p1, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method private onBitmapInfoUpdated(III)V
    .locals 0
    .param p1, "originalWidth"    # I
    .param p2, "originalHeight"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 838
    iput p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 839
    iput p2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 840
    iput p3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    .line 841
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 842
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 843
    return-void
.end method

.method private onBitmapTileUpdated(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 849
    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 850
    .local v0, "position":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    aget-object v1, v1, p2

    aput-object p3, v1, p1

    .line 855
    sget-object v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->INVALID_TILE_BITMAP:Landroid/graphics/Bitmap;

    if-eq p3, v1, :cond_0

    iget v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileX:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileX:I

    if-gt p1, v1, :cond_0

    iget v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileY:I

    if-lt p2, v1, :cond_0

    iget v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileY:I

    if-gt p2, v1, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method private startDecodingBitmapTiles()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    .line 946
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 949
    iget-boolean v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    if-gtz v3, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 953
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

    .line 954
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

    .line 955
    .local v1, "tileCountY":I
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    .line 956
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    .line 957
    new-array v3, v1, [[Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    .line 958
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    if-lt v2, v1, :cond_2

    .line 962
    new-instance v3, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    iget-object v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    iget v5, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Landroid/graphics/BitmapRegionDecoder;ILjava/util/LinkedList;)V

    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    .line 963
    sget-object v3, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 959
    :cond_2
    iget-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    new-array v4, v0, [Landroid/graphics/Bitmap;

    aput-object v4, v3, v2

    .line 958
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 39
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 422
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 427
    .local v9, "clipBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 428
    .local v8, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_0

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v25, v32, v33

    .line 438
    .local v25, "relativeSrcLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v27, v32, v33

    .line 439
    .local v27, "relativeSrcTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v26, v32, v33

    .line 440
    .local v26, "relativeSrcRight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v24, v32, v33

    .line 441
    .local v24, "relativeSrcBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    if-eqz v32, :cond_2

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v25

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v33

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v34, v34, v27

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v34

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v26

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v36, v36, v24

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->round(F)I

    move-result v36

    .line 443
    invoke-virtual/range {v32 .. v36}, Landroid/graphics/Rect;->set(IIII)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 453
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    if-eqz v32, :cond_3

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v25

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v33

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v34, v34, v27

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v34

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v26

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v36, v36, v24

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->round(F)I

    move-result v36

    .line 455
    invoke-virtual/range {v32 .. v36}, Landroid/graphics/Rect;->set(IIII)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 466
    :cond_3
    const/4 v11, 0x0

    .line 467
    .local v11, "drawLater":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapInfoDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    move-object/from16 v32, v0

    if-nez v32, :cond_4

    .line 469
    new-instance v32, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapInfoDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    .line 470
    sget-object v32, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapInfoDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    move-object/from16 v33, v0

    invoke-interface/range {v32 .. v33}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 471
    const/4 v11, 0x1

    .line 475
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsBitmapDecoderReady:Z

    move/from16 v32, v0

    if-nez v32, :cond_6

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoderInitTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    move-object/from16 v32, v0

    if-nez v32, :cond_5

    .line 479
    new-instance v32, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoderInitTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    .line 480
    sget-object v32, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoderInitTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    move-object/from16 v33, v0

    invoke-interface/range {v32 .. v33}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 482
    :cond_5
    const/4 v11, 0x1

    .line 486
    :cond_6
    if-nez v11, :cond_0

    .line 490
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    move/from16 v32, v0

    if-lez v32, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    move/from16 v32, v0

    if-lez v32, :cond_0

    .line 494
    const/16 v28, 0x2

    .line 495
    .local v28, "sampleSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    move/from16 v32, v0

    div-int v10, v32, v28

    .line 496
    .local v10, "displayWidth":I
    :goto_1
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v32

    move/from16 v0, v32

    if-lt v10, v0, :cond_7

    const/16 v32, 0x100

    move/from16 v0, v28

    move/from16 v1, v32

    if-le v0, v1, :cond_a

    .line 501
    :cond_7
    shr-int/lit8 v28, v28, 0x1

    .line 504
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    .line 506
    const-string v32, "ProgressiveBitmapDrawable"

    const-string v33, "draw() - Change sample size from "

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    const-string v35, " to "

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-static/range {v32 .. v36}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 507
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 508
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    .line 512
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    move-object/from16 v32, v0

    if-nez v32, :cond_9

    .line 513
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->startDecodingBitmapTiles()V

    .line 516
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    move/from16 v32, v0

    div-int v18, v32, v28

    .line 517
    .local v18, "originalWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    move/from16 v32, v0

    div-int v17, v32, v28

    .line 518
    .local v17, "originalHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    .line 519
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v25

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v33

    .line 520
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v34, v34, v27

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v34

    .line 521
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v26

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    .line 522
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v36, v36, v24

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->round(F)I

    move-result v36

    .line 518
    invoke-virtual/range {v32 .. v36}, Landroid/graphics/Rect;->set(IIII)V

    .line 524
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x43800000    # 256.0f

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    add-int/lit8 v12, v32, -0x1

    .line 525
    .local v12, "maxTileX":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x43800000    # 256.0f

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    add-int/lit8 v13, v32, -0x1

    .line 526
    .local v13, "maxTileY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    move/from16 v0, v32

    div-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->floor(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileX:I

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    move/from16 v0, v32

    div-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->floor(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileY:I

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    move/from16 v0, v32

    div-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileX:I

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    move/from16 v0, v32

    div-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileY:I

    .line 530
    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileX:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x2

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 531
    .local v21, "paddingStartX":I
    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileY:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x2

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 532
    .local v22, "paddingStartY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileX:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 533
    .local v19, "paddingEndX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileY:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 534
    .local v20, "paddingEndY":I
    sub-int v32, v19, v21

    add-int/lit8 v32, v32, 0x1

    sub-int v33, v20, v22

    add-int/lit8 v33, v33, 0x1

    mul-int v32, v32, v33

    const/16 v33, 0x80

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 539
    .local v6, "activeTileCount":I
    move/from16 v31, v20

    .local v31, "y":I
    :goto_2
    move/from16 v0, v31

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileY:I

    move/from16 v31, v0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileY:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_0

    .line 599
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileX:I

    move/from16 v30, v0

    .local v30, "x":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileX:I

    move/from16 v32, v0

    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_13

    .line 597
    add-int/lit8 v31, v31, -0x1

    goto :goto_3

    .line 498
    .end local v6    # "activeTileCount":I
    .end local v12    # "maxTileX":I
    .end local v13    # "maxTileY":I
    .end local v17    # "originalHeight":I
    .end local v18    # "originalWidth":I
    .end local v19    # "paddingEndX":I
    .end local v20    # "paddingEndY":I
    .end local v21    # "paddingStartX":I
    .end local v22    # "paddingStartY":I
    .end local v30    # "x":I
    .end local v31    # "y":I
    :cond_a
    shl-int/lit8 v28, v28, 0x1

    .line 499
    shr-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 541
    .restart local v6    # "activeTileCount":I
    .restart local v12    # "maxTileX":I
    .restart local v13    # "maxTileY":I
    .restart local v17    # "originalHeight":I
    .restart local v18    # "originalWidth":I
    .restart local v19    # "paddingEndX":I
    .restart local v20    # "paddingEndY":I
    .restart local v21    # "paddingStartX":I
    .restart local v22    # "paddingStartY":I
    .restart local v31    # "y":I
    :cond_b
    move/from16 v30, v19

    .restart local v30    # "x":I
    :goto_5
    move/from16 v0, v30

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 539
    add-int/lit8 v31, v31, -0x1

    goto :goto_2

    .line 543
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileY:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileY:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileX:I

    move/from16 v32, v0

    move/from16 v0, v30

    move/from16 v1, v32

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileX:I

    move/from16 v32, v0

    move/from16 v0, v30

    move/from16 v1, v32

    if-le v0, v1, :cond_f

    .line 545
    :cond_d
    shl-int/lit8 v32, v30, 0x10

    or-int v32, v32, v31

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 546
    .local v23, "position":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    aget-object v32, v32, v31

    aget-object v32, v32, v30

    if-nez v32, :cond_f

    .line 548
    const/4 v7, 0x1

    .line 551
    .local v7, "addPreDecodingTile":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_e

    .line 553
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v0, v6, :cond_10

    .line 576
    :cond_e
    :goto_7
    if-eqz v7, :cond_f

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 585
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->notifyAll()V

    .line 581
    monitor-exit v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    aget-object v32, v32, v31

    sget-object v33, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->DECODING_TILE_BITMAP:Landroid/graphics/Bitmap;

    aput-object v33, v32, v30

    .line 541
    .end local v7    # "addPreDecodingTile":Z
    .end local v23    # "position":Ljava/lang/Integer;
    :cond_f
    add-int/lit8 v30, v30, -0x1

    goto/16 :goto_5

    .line 555
    .restart local v7    # "addPreDecodingTile":Z
    .restart local v23    # "position":Ljava/lang/Integer;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 556
    .local v14, "oldPosition":I
    ushr-int/lit8 v15, v14, 0x10

    .line 557
    .local v15, "oldX":I
    const v32, 0xffff

    and-int v16, v14, v32

    .line 558
    .local v16, "oldY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileY:I

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-lt v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileY:I

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-gt v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileX:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-lt v15, v0, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileX:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-le v15, v0, :cond_12

    .line 560
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    aget-object v32, v32, v16

    const/16 v33, 0x0

    aput-object v33, v32, v15

    goto/16 :goto_6

    .line 567
    :cond_12
    const/4 v7, 0x0

    .line 570
    goto/16 :goto_7

    .line 581
    .end local v14    # "oldPosition":I
    .end local v15    # "oldX":I
    .end local v16    # "oldY":I
    :catchall_0
    move-exception v32

    :try_start_1
    monitor-exit v33
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v32

    .line 602
    .end local v7    # "addPreDecodingTile":Z
    .end local v23    # "position":Ljava/lang/Integer;
    :cond_13
    shl-int/lit8 v32, v30, 0x10

    or-int v32, v32, v31

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 605
    .restart local v23    # "position":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    aget-object v32, v32, v31

    aget-object v29, v32, v30

    .line 606
    .local v29, "tileBitmap":Landroid/graphics/Bitmap;
    sget-object v32, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->DECODING_TILE_BITMAP:Landroid/graphics/Bitmap;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_17

    .line 608
    if-eqz v29, :cond_16

    .line 610
    sget-object v32, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->INVALID_TILE_BITMAP:Landroid/graphics/Bitmap;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_14

    .line 599
    :goto_8
    add-int/lit8 v30, v30, -0x1

    goto/16 :goto_4

    .line 612
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    .line 615
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x43800000    # 256.0f

    mul-float v34, v34, v35

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v34, v34, v35

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    add-int v33, v33, v34

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    .line 616
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x43800000    # 256.0f

    mul-float v35, v35, v36

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    .line 617
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    add-int/lit8 v36, v30, 0x1

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    const/high16 v37, 0x43800000    # 256.0f

    mul-float v36, v36, v37

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v36, v36, v37

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

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

    .line 618
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    add-int/lit8 v37, v31, 0x1

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    const/high16 v38, 0x43800000    # 256.0f

    mul-float v37, v37, v38

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v37, v37, v38

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

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

    .line 614
    invoke-virtual/range {v32 .. v36}, Landroid/graphics/RectF;->set(FFFF)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v33, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(FF)F

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(FF)F

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 646
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_15

    .line 648
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v0, v6, :cond_18

    .line 658
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 626
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 630
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->notifyAll()V

    .line 626
    monitor-exit v33
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    aget-object v32, v32, v31

    sget-object v33, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->DECODING_TILE_BITMAP:Landroid/graphics/Bitmap;

    aput-object v33, v32, v30

    goto :goto_9

    .line 626
    :catchall_1
    move-exception v32

    :try_start_3
    monitor-exit v33
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v32

    .line 638
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 640
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 638
    monitor-exit v33

    goto :goto_9

    :catchall_2
    move-exception v32

    monitor-exit v33
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v32

    .line 650
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 651
    .restart local v14    # "oldPosition":I
    ushr-int/lit8 v15, v14, 0x10

    .line 652
    .restart local v15    # "oldX":I
    const v32, 0xffff

    and-int v16, v14, v32

    .line 653
    .restart local v16    # "oldY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    aget-object v32, v32, v16

    const/16 v33, 0x0

    aput-object v33, v32, v15

    goto/16 :goto_a
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    if-lez v0, :cond_0

    .line 669
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 672
    :goto_0
    return v0

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    .line 672
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    if-lez v0, :cond_0

    .line 689
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 692
    :goto_0
    return v0

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 692
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public isSameSource(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 815
    invoke-direct {p0, p1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->isSameSource(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSameSource(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 804
    invoke-direct {p0, p1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->isSameSource(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 865
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 866
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot called from another thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    if-eqz v0, :cond_2

    .line 882
    :cond_1
    :goto_0
    return-void

    .line 869
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    .line 870
    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 871
    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    .line 872
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 873
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_1

    .line 875
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v1

    .line 877
    :try_start_0
    const-string v0, "ProgressiveBitmapDrawable"

    const-string v2, "release() - Release decoder"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 875
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    goto :goto_0

    .line 875
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 889
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 890
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 897
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 898
    return-void
.end method

.method public setHighQualityBitmapEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    if-eq v0, p1, :cond_0

    .line 909
    const-string v0, "ProgressiveBitmapDrawable"

    const-string v1, "setHighQualityBitmapEnabled() - "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 910
    iput-boolean p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    .line 911
    if-eqz p1, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 914
    :cond_0
    return-void
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 923
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 924
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 925
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 932
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    if-nez p1, :cond_0

    .line 935
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 936
    :cond_0
    const/4 v0, 0x1

    .line 938
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
