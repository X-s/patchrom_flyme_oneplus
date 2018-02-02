.class public Lcom/oneplus/drawable/ProgressiveBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressiveBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;,
        Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;,
        Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;,
        Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;,
        Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;
    }
.end annotation


# static fields
.field private static final BITMAP_REGION_DECODER_SIZE:I = 0x2

.field private static final DURATION_FADE_IN_ANIMATION:J = 0xc8L

.field private static final ENABLE_SMOOTH_UPDATE:Z = true

.field private static final EXTRA_DECODING_PADDING:I = 0x2

.field private static final FULL_SIZE:I = 0x1000

.field private static final MAX_ACTIVE_TILE_COUNT:I = 0x40

.field private static final MSG_BITMAP_DECODER_READY:I = 0x2711

.field private static final MSG_INVALIDATE:I = 0x2710

.field private static final MSG_UPDATE_BITMAP_INFO:I = 0x2712

.field private static final MSG_UPDATE_BITMAP_TILE:I = 0x271a

.field private static final MSG_UPDATE_FULL_SIZE_BITMAP:I = 0x271b

.field private static final PRINT_TRACE_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "ProgressiveBitmapDrawable"

.field private static final TILE_SIZE:I = 0x400

.field private static final m_DecodingExecutors:Ljava/util/concurrent/Executor;

.field private static final m_ReleaseExecutors:Ljava/util/concurrent/Executor;


# instance fields
.field private m_BitmapConfig:Landroid/graphics/Bitmap$Config;

.field private m_BitmapDecoderInitTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

.field private m_BitmapDecoders:[Landroid/graphics/BitmapRegionDecoder;

.field private m_BitmapInfoDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

.field private m_BitmapTilesDecodingTasks:[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

.field private m_CancelStreamOpeningRef:Lcom/oneplus/base/Ref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_ContentResolver:Landroid/content/ContentResolver;

.field private final m_DestDrawingBounds:Landroid/graphics/RectF;

.field private final m_DrawingBounds:Landroid/graphics/Rect;

.field private m_EndTileX:I

.field private m_EndTileY:I

.field private volatile m_FullSizeBitmap:Landroid/graphics/Bitmap;

.field private volatile m_Handler:Landroid/os/Handler;

.field private final m_InvalidateRunnable:Ljava/lang/Runnable;

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

.field private m_TileDecodingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
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

.field private m_Tiles:[[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;

.field private m_UseFullSizeBitmap:Z


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->decodeBitmapInfoAsync()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;)V
    .locals 0
    .param p1, "task"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->decodeTilesAsync(Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->initializeBitmapDecoder()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ReleaseExecutors:Ljava/util/concurrent/Executor;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 194
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 67
    new-instance v0, Lcom/oneplus/base/SimpleRef;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_CancelStreamOpeningRef:Lcom/oneplus/base/Ref;

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    .line 76
    iput-boolean v5, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    .line 79
    iput v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 80
    new-instance v0, Lcom/oneplus/cache/MemoryBitmapLruCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v0, v2, v3}, Lcom/oneplus/cache/MemoryBitmapLruCache;-><init>(J)V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalTilesCache:Lcom/oneplus/cache/LruCache;

    .line 81
    iput v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 83
    iput v5, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_InvalidateRunnable:Ljava/lang/Runnable;

    .line 196
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ContentResolver:Landroid/content/ContentResolver;

    .line 197
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->initialize(Ljava/lang/Object;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/io/StreamSource;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "source"    # Lcom/oneplus/io/StreamSource;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 208
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 67
    new-instance v0, Lcom/oneplus/base/SimpleRef;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_CancelStreamOpeningRef:Lcom/oneplus/base/Ref;

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    .line 76
    iput-boolean v5, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    .line 79
    iput v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 80
    new-instance v0, Lcom/oneplus/cache/MemoryBitmapLruCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v0, v2, v3}, Lcom/oneplus/cache/MemoryBitmapLruCache;-><init>(J)V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalTilesCache:Lcom/oneplus/cache/LruCache;

    .line 81
    iput v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 83
    iput v5, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_InvalidateRunnable:Ljava/lang/Runnable;

    .line 210
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->initialize(Ljava/lang/Object;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 181
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 67
    new-instance v0, Lcom/oneplus/base/SimpleRef;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_CancelStreamOpeningRef:Lcom/oneplus/base/Ref;

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    .line 76
    iput-boolean v5, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    .line 79
    iput v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 80
    new-instance v0, Lcom/oneplus/cache/MemoryBitmapLruCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v0, v2, v3}, Lcom/oneplus/cache/MemoryBitmapLruCache;-><init>(J)V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalTilesCache:Lcom/oneplus/cache/LruCache;

    .line 81
    iput v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 83
    iput v5, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_InvalidateRunnable:Ljava/lang/Runnable;

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->initialize(Ljava/lang/Object;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    .line 181
    return-void
.end method

.method private calculateDecodeRect(Landroid/graphics/Rect;IIIII)V
    .locals 3
    .param p1, "decodeRect"    # Landroid/graphics/Rect;
    .param p2, "tileX"    # I
    .param p3, "tileY"    # I
    .param p4, "tileSize"    # I
    .param p5, "originalWidth"    # I
    .param p6, "originalHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 217
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    sparse-switch v0, :sswitch_data_0

    .line 239
    mul-int v0, p2, p4

    mul-int v1, p3, p4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 240
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 241
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p4

    invoke-static {p6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 215
    :goto_0
    return-void

    .line 220
    :sswitch_0
    mul-int v0, p3, p4

    add-int/lit8 v1, p2, 0x1

    mul-int/2addr v1, p4

    sub-int v1, p6, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 221
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 222
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 223
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 226
    :sswitch_1
    add-int/lit8 v0, p3, 0x1

    mul-int/2addr v0, p4

    sub-int v0, p5, v0

    mul-int v1, p2, p4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 227
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 228
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p4

    invoke-static {p6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 229
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 232
    :sswitch_2
    add-int/lit8 v0, p2, 0x1

    mul-int/2addr v0, p4

    sub-int v0, p5, v0

    add-int/lit8 v1, p3, 0x1

    mul-int/2addr v1, p4

    sub-int v1, p6, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 233
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 234
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 235
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 236
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private cancelDecodingBitmapTiles()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 250
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTasks:[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    if-eqz v1, :cond_1

    .line 252
    iget-object v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 255
    iget-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTasks:[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    const/4 v1, 0x0

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 256
    .local v0, "task":Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "task":Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;
    :cond_0
    monitor-exit v2

    .line 258
    iput-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTasks:[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    .line 259
    iput-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/Queue;

    .line 260
    iput-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    .line 261
    iput-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;

    .line 262
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 248
    :cond_1
    return-void

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private decodeBitmapInfoAsync()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 270
    new-instance v5, Lcom/oneplus/base/SimpleRef;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 271
    .local v5, "widthRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/oneplus/base/SimpleRef;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 272
    .local v1, "heightRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    new-instance v4, Lcom/oneplus/base/SimpleRef;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 275
    .local v4, "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 277
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 278
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 279
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 280
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 281
    invoke-interface {v4}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_0

    invoke-interface {v4}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_2

    .line 283
    :cond_0
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 284
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    invoke-interface {v5}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v1}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v4}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v11

    const/16 v10, 0x2712

    invoke-static {v7, v10, v8, v6, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 268
    return-void

    .line 288
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :try_start_1
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 289
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 313
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_CancelStreamOpeningRef:Lcom/oneplus/base/Ref;

    invoke-interface {v6}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 315
    const-string/jumbo v6, "ProgressiveBitmapDrawable"

    const-string/jumbo v7, "decodeBitmapInfoAsync() - Unknown error"

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 292
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v6, v6, Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v6, :cond_8

    .line 294
    const/4 v2, 0x0

    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_3
    iget-object v8, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 296
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, v2, v5, v1, v4}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->decodeBitmapInfoAsync(Ljava/io/InputStream;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 297
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_1
    if-eqz v7, :cond_1

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception v7

    goto :goto_1

    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v6

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    :goto_2
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_3
    if-eqz v7, :cond_7

    :try_start_8
    throw v7

    :catch_3
    move-exception v8

    if-nez v7, :cond_6

    move-object v7, v8

    goto :goto_3

    :cond_6
    if-eq v7, v8, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    throw v6

    .line 299
    :cond_8
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v6, v6, Lcom/oneplus/io/StreamSource;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v6, :cond_d

    .line 301
    const/4 v2, 0x0

    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_9
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v6, Lcom/oneplus/io/StreamSource;

    iget-object v8, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_CancelStreamOpeningRef:Lcom/oneplus/base/Ref;

    invoke-interface {v6, v8}, Lcom/oneplus/io/StreamSource;->openInputStream(Lcom/oneplus/base/Ref;)Ljava/io/InputStream;

    move-result-object v2

    .line 303
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, v2, v5, v1, v4}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->decodeBitmapInfoAsync(Ljava/io/InputStream;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 304
    if-eqz v2, :cond_9

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    :cond_9
    :goto_4
    if-eqz v7, :cond_1

    :try_start_b
    throw v7
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    :catch_4
    move-exception v7

    goto :goto_4

    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v6

    :try_start_c
    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    :goto_5
    if-eqz v2, :cond_a

    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    :cond_a
    :goto_6
    if-eqz v7, :cond_c

    :try_start_e
    throw v7

    :catch_6
    move-exception v8

    if-nez v7, :cond_b

    move-object v7, v8

    goto :goto_6

    :cond_b
    if-eq v7, v8, :cond_a

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_c
    throw v6

    .line 308
    :cond_d
    const-string/jumbo v6, "ProgressiveBitmapDrawable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "decodeBitmapInfoAsync() - Unknown source : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    .line 309
    return-void

    .line 304
    :catchall_2
    move-exception v6

    goto :goto_5

    .line 297
    :catchall_3
    move-exception v6

    goto :goto_2
.end method

.method private decodeBitmapInfoAsync(Ljava/io/InputStream;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p2, "widthRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    .local p3, "heightRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    .local p4, "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 322
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 323
    invoke-static {p1}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 324
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 325
    invoke-interface {p4}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    invoke-interface {p4}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1

    .line 327
    :cond_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 328
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 319
    :goto_0
    return-void

    .line 332
    :cond_1
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 333
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private decodeTilesAsync(Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;)V
    .locals 22
    .param p1, "task"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    .prologue
    .line 342
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v2, :cond_0

    .line 343
    return-void

    .line 345
    :cond_0
    const-string/jumbo v2, "ProgressiveBitmapDrawable"

    const-string/jumbo v10, "decodeTilesAsync() - Sample size : "

    move-object/from16 v0, p1

    iget v11, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v2, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    :try_start_0
    new-instance v19, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 353
    .local v19, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 354
    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v19

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 356
    move-object/from16 v0, p1

    iget v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 357
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    const/16 v10, 0x5a

    if-eq v2, v10, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    const/16 v10, 0x10e

    if-ne v2, v10, :cond_2

    .line 359
    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 360
    .local v7, "originalWidth":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 369
    .local v8, "originalHeight":I
    :goto_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I

    mul-int/lit16 v6, v2, 0x400

    .line 375
    .local v6, "tileSize":I
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v2, :cond_3

    .line 377
    const-string/jumbo v2, "ProgressiveBitmapDrawable"

    const-string/jumbo v10, "decodeTilesAsync() - Sample size : "

    move-object/from16 v0, p1

    iget v11, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, ", cancelled"

    invoke-static {v2, v10, v11, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v6    # "tileSize":I
    .end local v7    # "originalWidth":I
    .end local v8    # "originalHeight":I
    .end local v19    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_2
    const-string/jumbo v2, "ProgressiveBitmapDrawable"

    const-string/jumbo v10, "decodeTilesAsync() - End"

    invoke-static {v2, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void

    .line 364
    .restart local v19    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 365
    .restart local v7    # "originalWidth":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .restart local v8    # "originalHeight":I
    goto :goto_0

    .line 384
    .restart local v6    # "tileSize":I
    :cond_3
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->decodingQueue:Ljava/util/Queue;

    monitor-enter v10
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 386
    :try_start_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->decodingQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 387
    .local v20, "position":Ljava/lang/Integer;
    if-nez v20, :cond_4

    .line 389
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->decodingQueue:Ljava/util/Queue;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 514
    .end local v6    # "tileSize":I
    .end local v7    # "originalWidth":I
    .end local v8    # "originalHeight":I
    .end local v19    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v20    # "position":Ljava/lang/Integer;
    :catch_0
    move-exception v17

    .line 515
    .local v17, "ex":Ljava/lang/Throwable;
    const-string/jumbo v2, "ProgressiveBitmapDrawable"

    const-string/jumbo v10, "decodeTilesAsync() - Unknown error"

    move-object/from16 v0, v17

    invoke-static {v2, v10, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 392
    .end local v17    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "tileSize":I
    .restart local v7    # "originalWidth":I
    .restart local v8    # "originalHeight":I
    .restart local v19    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v20    # "position":Ljava/lang/Integer;
    :cond_4
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    ushr-int/lit8 v4, v2, 0x10

    .line 393
    .local v4, "tileX":I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    const v11, 0xffff

    and-int v5, v2, v11

    .local v5, "tileY":I
    :try_start_5
    monitor-exit v10

    .line 399
    const/4 v9, 0x0

    .line 400
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I

    const/4 v10, 0x1

    if-ne v2, v10, :cond_5

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalTilesCache:Lcom/oneplus/cache/LruCache;

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v12, v10, v11}, Lcom/oneplus/cache/LruCache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v9, Landroid/graphics/Bitmap;

    .line 403
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_5

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v9, v10, v11

    const/16 v11, 0x271a

    invoke-static {v2, v11, v4, v5, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 384
    .end local v4    # "tileX":I
    .end local v5    # "tileY":I
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v20    # "position":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v10

    throw v2

    .line 411
    .restart local v4    # "tileX":I
    .restart local v5    # "tileY":I
    .restart local v20    # "position":Ljava/lang/Integer;
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v2, :cond_7

    .line 413
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .local v3, "decodeRect":Landroid/graphics/Rect;
    move-object/from16 v2, p0

    .line 414
    invoke-direct/range {v2 .. v8}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->calculateDecodeRect(Landroid/graphics/Rect;IIIII)V

    .line 415
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v10
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 417
    :try_start_6
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v2, :cond_6

    .line 419
    const-string/jumbo v2, "ProgressiveBitmapDrawable"

    const-string/jumbo v11, "decodeTilesAsync() - Sample size : "

    move-object/from16 v0, p1

    iget v12, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string/jumbo v13, ", cancelled before decoding tile"

    invoke-static {v2, v11, v12, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v10
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 424
    :cond_6
    :try_start_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v9

    :goto_3
    :try_start_9
    monitor-exit v10

    .line 486
    :goto_4
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v2, :cond_15

    .line 488
    const-string/jumbo v2, "ProgressiveBitmapDrawable"

    const-string/jumbo v10, "decodeTilesAsync() - Sample size : "

    move-object/from16 v0, p1

    iget v11, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, ", cancelled"

    invoke-static {v2, v10, v11, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 427
    :catch_1
    move-exception v16

    .line 428
    .local v16, "e":Ljava/lang/Throwable;
    :try_start_a
    const-string/jumbo v2, "ProgressiveBitmapDrawable"

    const-string/jumbo v11, "decodeTilesAsync() - Cannot decode by region decoder"

    move-object/from16 v0, v16

    invoke-static {v2, v11, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    .line 415
    .end local v16    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    :try_start_b
    monitor-exit v10

    throw v2

    .line 435
    .end local v3    # "decodeRect":Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_13

    .line 437
    const-string/jumbo v2, "ProgressiveBitmapDrawable"

    const-string/jumbo v10, "decodeTilesAsync() - Decode full size bitmap"

    invoke-static {v2, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v11, 0x1000

    const/16 v12, 0x1000

    const/4 v13, 0x3

    invoke-static {v2, v11, v12, v13, v10}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    .line 464
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_13

    .line 466
    const-string/jumbo v2, "ProgressiveBitmapDrawable"

    const-string/jumbo v10, "decodeTilesAsync() - Decode full size bitmap failed"

    invoke-static {v2, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-void

    .line 440
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v2, v2, Landroid/net/Uri;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    if-eqz v2, :cond_e

    .line 442
    const/4 v10, 0x0

    const/16 v18, 0x0

    .local v18, "inputStream":Ljava/io/InputStream;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v11, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    .line 444
    .local v18, "inputStream":Ljava/io/InputStream;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v11, 0x1000

    const/16 v12, 0x1000

    const/4 v13, 0x3

    move-object/from16 v0, v18

    invoke-static {v0, v11, v12, v13, v2}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 450
    if-eqz v18, :cond_a

    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    :cond_a
    :goto_6
    if-eqz v10, :cond_8

    :try_start_e
    throw v10
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2

    .line 447
    .end local v18    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v17

    .line 448
    .restart local v17    # "ex":Ljava/lang/Throwable;
    const/4 v2, 0x0

    :try_start_f
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    .line 449
    const-string/jumbo v2, "ProgressiveBitmapDrawable"

    const-string/jumbo v10, "decodeTilesAsync() - Unknown error when decoding full size Uri source"

    move-object/from16 v0, v17

    invoke-static {v2, v10, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_5

    .line 450
    .end local v17    # "ex":Ljava/lang/Throwable;
    .restart local v18    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v10

    goto :goto_6

    .end local v18    # "inputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v2

    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catchall_2
    move-exception v10

    move-object/from16 v21, v10

    move-object v10, v2

    move-object/from16 v2, v21

    :goto_7
    if-eqz v18, :cond_b

    :try_start_11
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5

    :cond_b
    :goto_8
    if-eqz v10, :cond_d

    :try_start_12
    throw v10

    :catch_5
    move-exception v11

    if-nez v10, :cond_c

    move-object v10, v11

    goto :goto_8

    :cond_c
    if-eq v10, v11, :cond_b

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_d
    throw v2
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2

    .line 452
    :cond_e
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v2, v2, Lcom/oneplus/io/StreamSource;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0

    if-eqz v2, :cond_8

    .line 454
    const/4 v10, 0x0

    const/16 v18, 0x0

    .local v18, "inputStream":Ljava/io/InputStream;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/io/StreamSource;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_CancelStreamOpeningRef:Lcom/oneplus/base/Ref;

    invoke-interface {v2, v11}, Lcom/oneplus/io/StreamSource;->openInputStream(Lcom/oneplus/base/Ref;)Ljava/io/InputStream;

    move-result-object v18

    .line 456
    .local v18, "inputStream":Ljava/io/InputStream;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v11, 0x1000

    const/16 v12, 0x1000

    const/4 v13, 0x3

    move-object/from16 v0, v18

    invoke-static {v0, v11, v12, v13, v2}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 462
    if-eqz v18, :cond_f

    :try_start_15
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_7

    :cond_f
    :goto_9
    if-eqz v10, :cond_8

    :try_start_16
    throw v10
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    .line 459
    .end local v18    # "inputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v17

    .line 460
    .restart local v17    # "ex":Ljava/lang/Throwable;
    const/4 v2, 0x0

    :try_start_17
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    .line 461
    const-string/jumbo v2, "ProgressiveBitmapDrawable"

    const-string/jumbo v10, "decodeTilesAsync() - Unknown error when decoding full size stream source"

    move-object/from16 v0, v17

    invoke-static {v2, v10, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_0

    goto/16 :goto_5

    .line 462
    .end local v17    # "ex":Ljava/lang/Throwable;
    .restart local v18    # "inputStream":Ljava/io/InputStream;
    :catch_7
    move-exception v10

    goto :goto_9

    .end local v18    # "inputStream":Ljava/io/InputStream;
    :catch_8
    move-exception v2

    :try_start_18
    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :catchall_3
    move-exception v10

    move-object/from16 v21, v10

    move-object v10, v2

    move-object/from16 v2, v21

    :goto_a
    if-eqz v18, :cond_10

    :try_start_19
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_9

    :cond_10
    :goto_b
    if-eqz v10, :cond_12

    :try_start_1a
    throw v10

    :catch_9
    move-exception v11

    if-nez v10, :cond_11

    move-object v10, v11

    goto :goto_b

    :cond_11
    if-eq v10, v11, :cond_10

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_12
    throw v2
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_6

    .line 472
    :cond_13
    :try_start_1b
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v2, :cond_14

    .line 474
    const-string/jumbo v2, "ProgressiveBitmapDrawable"

    const-string/jumbo v10, "decodeTilesAsync() - Sample size : "

    move-object/from16 v0, p1

    iget v11, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, ", cancelled"

    invoke-static {v2, v10, v11, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 479
    :cond_14
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 480
    .restart local v3    # "decodeRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p1

    iget v10, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I

    div-int v10, v7, v10

    int-to-float v10, v10

    div-float/2addr v2, v10

    const/high16 v10, 0x44800000    # 1024.0f

    mul-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    move-object/from16 v9, p0

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-direct/range {v9 .. v15}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->calculateDecodeRect(Landroid/graphics/Rect;IIIII)V

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    iget v10, v3, Landroid/graphics/Rect;->left:I

    iget v11, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v2, v10, v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_4

    .line 493
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    if-eqz v2, :cond_16

    .line 495
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 496
    .local v14, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    int-to-float v2, v2

    invoke-virtual {v14, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 497
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 498
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v2, :cond_16

    .line 500
    const-string/jumbo v2, "ProgressiveBitmapDrawable"

    const-string/jumbo v10, "decodeTilesAsync() - Sample size : "

    move-object/from16 v0, p1

    iget v11, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, ", cancelled"

    invoke-static {v2, v10, v11, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 506
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "matrix":Landroid/graphics/Matrix;
    :cond_16
    if-nez v9, :cond_18

    .line 507
    const-string/jumbo v2, "ProgressiveBitmapDrawable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "decodeTilesAsync() - Fail to decode tile ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_17
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v9, v10, v11

    const/16 v11, 0x271a

    invoke-static {v2, v11, v4, v5, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 508
    :cond_18
    move-object/from16 v0, p1

    iget v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I

    const/4 v10, 0x1

    if-ne v2, v10, :cond_17

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalTilesCache:Lcom/oneplus/cache/LruCache;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v9}, Lcom/oneplus/cache/LruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_0

    goto :goto_c

    .line 462
    .end local v3    # "decodeRect":Landroid/graphics/Rect;
    :catchall_4
    move-exception v2

    goto/16 :goto_a

    .line 450
    :catchall_5
    move-exception v2

    goto/16 :goto_7
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 814
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 812
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 817
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Landroid/graphics/BitmapRegionDecoder;

    invoke-direct {p0, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->onBitmapDecoderReady([Landroid/graphics/BitmapRegionDecoder;)V

    goto :goto_0

    .line 821
    :sswitch_2
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    goto :goto_0

    .line 826
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 827
    .local v0, "params":[Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v4, v5, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->onBitmapInfoUpdated(III)V

    goto :goto_0

    .line 833
    .end local v0    # "params":[Ljava/lang/Object;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 834
    .restart local v0    # "params":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTasks:[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    if-eqz v2, :cond_0

    .line 836
    iget-object v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTasks:[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 838
    .local v1, "task":Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;
    aget-object v6, v0, v3

    if-ne v1, v6, :cond_1

    .line 840
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {p0, v3, v4, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->onBitmapTileUpdated(IILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 836
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 814
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_2
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_3
        0x271a -> :sswitch_4
        0x271b -> :sswitch_0
    .end sparse-switch
.end method

.method private initialize(Ljava/lang/Object;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 861
    if-nez p1, :cond_0

    .line 862
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No bitmap source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_0
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    .line 866
    iput-object p2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 867
    iput-object p3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 870
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 871
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 874
    new-instance v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$2;

    invoke-direct {v0, p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$2;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    .line 858
    return-void
.end method

.method private initializeBitmapDecoder()V
    .locals 13

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 888
    const-string/jumbo v6, "ProgressiveBitmapDrawable"

    const-string/jumbo v7, "initializeBitmapDecoder()"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 890
    .local v4, "time":J
    new-array v0, v9, [Landroid/graphics/BitmapRegionDecoder;

    .line 893
    .local v0, "bitmapRegionDecoders":[Landroid/graphics/BitmapRegionDecoder;
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 895
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v9, :cond_2

    .line 896
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v6

    aput-object v6, v0, v2

    .line 895
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 898
    .end local v2    # "i":I
    :cond_0
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v6, v6, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_7

    .line 900
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v9, :cond_2

    .line 902
    const/4 v3, 0x0

    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_1
    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 904
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x1

    invoke-static {v3, v6}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v6

    aput-object v6, v0, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 905
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move-object v6, v8

    :goto_2
    if-eqz v6, :cond_6

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 922
    .end local v2    # "i":I
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 923
    .local v1, "ex":Ljava/lang/Throwable;
    const-string/jumbo v6, "ProgressiveBitmapDrawable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "initializeBitmapDecoder() - Fail to create region decoder for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", use full size bitmap later"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iput-boolean v10, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_UseFullSizeBitmap:Z

    .line 926
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    :goto_3
    const-string/jumbo v6, "ProgressiveBitmapDrawable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "initializeBitmapDecoder() - Take "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " ms"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    iget-boolean v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_UseFullSizeBitmap:Z

    if-nez v7, :cond_e

    .end local v0    # "bitmapRegionDecoders":[Landroid/graphics/BitmapRegionDecoder;
    :goto_4
    const/16 v7, 0x2711

    invoke-static {v6, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 886
    return-void

    .line 905
    .restart local v0    # "bitmapRegionDecoders":[Landroid/graphics/BitmapRegionDecoder;
    .restart local v2    # "i":I
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v6

    goto :goto_2

    .end local v3    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v6

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    :goto_5
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_6
    if-eqz v7, :cond_5

    :try_start_6
    throw v7

    :catch_3
    move-exception v9

    if-nez v7, :cond_4

    move-object v7, v9

    goto :goto_6

    :cond_4
    if-eq v7, v9, :cond_3

    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_5
    throw v6

    .line 900
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 908
    .end local v2    # "i":I
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_7
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v6, v6, Lcom/oneplus/io/StreamSource;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v6, :cond_d

    .line 910
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    if-ge v2, v9, :cond_2

    .line 912
    const/4 v3, 0x0

    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_7
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v6, Lcom/oneplus/io/StreamSource;

    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_CancelStreamOpeningRef:Lcom/oneplus/base/Ref;

    invoke-interface {v6, v7}, Lcom/oneplus/io/StreamSource;->openInputStream(Lcom/oneplus/base/Ref;)Ljava/io/InputStream;

    move-result-object v3

    .line 914
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x1

    invoke-static {v3, v6}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v6

    aput-object v6, v0, v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 915
    if-eqz v3, :cond_8

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    :cond_8
    move-object v6, v8

    :goto_8
    if-eqz v6, :cond_c

    :try_start_9
    throw v6
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    :catch_4
    move-exception v6

    goto :goto_8

    .end local v3    # "inputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v6

    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    :goto_9
    if-eqz v3, :cond_9

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    :cond_9
    :goto_a
    if-eqz v7, :cond_b

    :try_start_c
    throw v7

    :catch_6
    move-exception v9

    if-nez v7, :cond_a

    move-object v7, v9

    goto :goto_a

    :cond_a
    if-eq v7, v9, :cond_9

    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_b
    throw v6

    .line 910
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 919
    .end local v2    # "i":I
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_d
    const-string/jumbo v6, "ProgressiveBitmapDrawable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "initializeBitmapDecoder() - Unknown source : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_3

    :cond_e
    move-object v0, v8

    .line 927
    goto/16 :goto_4

    .line 915
    .restart local v2    # "i":I
    :catchall_2
    move-exception v6

    move-object v7, v8

    goto :goto_9

    .line 905
    :catchall_3
    move-exception v6

    move-object v7, v8

    goto/16 :goto_5
.end method

.method private isSameSource(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 934
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onBitmapDecoderReady([Landroid/graphics/BitmapRegionDecoder;)V
    .locals 3
    .param p1, "bitmapRegionDecoders"    # [Landroid/graphics/BitmapRegionDecoder;

    .prologue
    .line 963
    iget-boolean v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    if-eqz v1, :cond_2

    .line 965
    if-eqz p1, :cond_1

    .line 967
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 969
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 967
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 973
    .end local v0    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :cond_1
    return-void

    .line 975
    :cond_2
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoders:[Landroid/graphics/BitmapRegionDecoder;

    .line 976
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsBitmapDecoderReady:Z

    .line 977
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 961
    return-void
.end method

.method private onBitmapInfoUpdated(III)V
    .locals 1
    .param p1, "originalWidth"    # I
    .param p2, "originalHeight"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 984
    iget-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 985
    return-void

    .line 986
    :cond_0
    iput p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 987
    iput p2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 988
    iput p3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    .line 989
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 990
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 982
    return-void
.end method

.method private onBitmapTileUpdated(IILandroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 997
    shl-int/lit8 v4, p1, 0x10

    or-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 998
    .local v1, "position":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1000
    iget-object v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;

    aget-object v4, v4, p2

    aget-object v2, v4, p1

    .line 1001
    .local v2, "tile":Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;
    iget-object v4, v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->bitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    const/4 v0, 0x1

    .line 1002
    .local v0, "isFirstUpdate":Z
    :goto_0
    iput-object p3, v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 1003
    iput-boolean v3, v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->isDecoding:Z

    .line 1004
    if-eqz p3, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->isValid:Z

    .line 1007
    iget-boolean v3, v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->isValid:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileX:I

    if-lt p1, v3, :cond_4

    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileX:I

    if-gt p1, v3, :cond_4

    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileY:I

    if-lt p2, v3, :cond_4

    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileY:I

    if-gt p2, v3, :cond_4

    .line 1009
    if-eqz v0, :cond_1

    .line 1010
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->fadeInAnimationStartTime:J

    .line 1011
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 995
    :goto_1
    return-void

    .line 999
    .end local v0    # "isFirstUpdate":Z
    .end local v2    # "tile":Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;
    :cond_2
    return-void

    .line 1001
    .restart local v2    # "tile":Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isFirstUpdate":Z
    goto :goto_0

    .line 1014
    :cond_4
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->fadeInAnimationStartTime:J

    goto :goto_1
.end method

.method private startDecodingBitmapTiles()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v11, 0x2

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    const/4 v10, 0x0

    .line 1118
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 1121
    iget-boolean v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    if-nez v6, :cond_0

    iget v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    if-gtz v6, :cond_1

    .line 1122
    :cond_0
    return-void

    .line 1121
    :cond_1
    iget v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    if-lez v6, :cond_0

    .line 1125
    iget v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    int-to-double v6, v6

    iget v8, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 1126
    .local v1, "tileCountX":I
    iget v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    int-to-double v6, v6

    iget v8, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 1127
    .local v2, "tileCountY":I
    new-instance v6, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/Queue;

    .line 1128
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    .line 1129
    new-array v6, v2, [[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;

    iput-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;

    .line 1130
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 1132
    new-array v3, v1, [Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;

    .line 1133
    .local v3, "tileRow":[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;

    aput-object v3, v6, v5

    .line 1134
    add-int/lit8 v4, v1, -0x1

    .local v4, "x":I
    :goto_1
    if-ltz v4, :cond_2

    .line 1135
    new-instance v6, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;

    invoke-direct {v6, v14}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;)V

    aput-object v6, v3, v4

    .line 1134
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1130
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1139
    .end local v3    # "tileRow":[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;
    .end local v4    # "x":I
    :cond_3
    iget-boolean v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_UseFullSizeBitmap:Z

    if-nez v6, :cond_4

    .line 1141
    new-array v6, v11, [Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    iput-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTasks:[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    .line 1142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v11, :cond_5

    .line 1144
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTasks:[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    new-instance v7, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    iget-object v8, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoders:[Landroid/graphics/BitmapRegionDecoder;

    aget-object v8, v8, v0

    iget v9, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    iget-object v10, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/Queue;

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Landroid/graphics/BitmapRegionDecoder;ILjava/util/Queue;)V

    aput-object v7, v6, v0

    .line 1145
    sget-object v6, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTasks:[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    aget-object v7, v7, v0

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1142
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1150
    .end local v0    # "i":I
    :cond_4
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    new-instance v7, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    iget v8, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    iget-object v9, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/Queue;

    invoke-direct {v7, p0, v14, v8, v9}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Landroid/graphics/BitmapRegionDecoder;ILjava/util/Queue;)V

    aput-object v7, v6, v10

    iput-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTasks:[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    .line 1151
    sget-object v6, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTasks:[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    aget-object v7, v7, v10

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1115
    :cond_5
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 42
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 527
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 528
    return-void

    .line 531
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 532
    .local v11, "clipBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 533
    .local v10, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v36, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(II)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(II)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v35

    if-eqz v35, :cond_1

    .line 539
    return-void

    .line 542
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v27, v35, v36

    .line 543
    .local v27, "relativeSrcLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v29, v35, v36

    .line 544
    .local v29, "relativeSrcTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v28, v35, v36

    .line 545
    .local v28, "relativeSrcRight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v26, v35, v36

    .line 546
    .local v26, "relativeSrcBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v36, v36, v27

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->round(F)I

    move-result v36

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v37, v37, v29

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->round(F)I

    move-result v37

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v28

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->round(F)I

    move-result v38

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v26

    invoke-static/range {v39 .. v39}, Ljava/lang/Math;->round(F)I

    move-result v39

    .line 548
    invoke-virtual/range {v35 .. v39}, Landroid/graphics/Rect;->set(IIII)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 558
    :cond_2
    const/4 v12, 0x0

    .line 559
    .local v12, "drawLater":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapInfoDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    move-object/from16 v35, v0

    if-nez v35, :cond_3

    .line 561
    new-instance v35, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapInfoDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    .line 562
    sget-object v35, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapInfoDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    move-object/from16 v36, v0

    invoke-interface/range {v35 .. v36}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 563
    const/4 v12, 0x1

    .line 567
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsBitmapDecoderReady:Z

    move/from16 v35, v0

    if-nez v35, :cond_5

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoderInitTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    move-object/from16 v35, v0

    if-nez v35, :cond_4

    .line 571
    new-instance v35, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoderInitTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    .line 572
    sget-object v35, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoderInitTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    move-object/from16 v36, v0

    invoke-interface/range {v35 .. v36}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 574
    :cond_4
    const/4 v12, 0x1

    .line 578
    :cond_5
    if-eqz v12, :cond_6

    .line 579
    return-void

    .line 582
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    move/from16 v35, v0

    if-gtz v35, :cond_8

    .line 583
    :cond_7
    return-void

    .line 582
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    move/from16 v35, v0

    if-lez v35, :cond_7

    .line 586
    const/16 v30, 0x1

    .line 587
    .local v30, "sampleSize":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_UseFullSizeBitmap:Z

    move/from16 v35, v0

    if-nez v35, :cond_9

    .line 588
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    move/from16 v36, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v37

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v38

    invoke-static/range {v35 .. v38}, Lcom/oneplus/media/ImageUtils;->calculateSampleSize(IIII)I

    move-result v30

    .line 591
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    .line 593
    const-string/jumbo v35, "ProgressiveBitmapDrawable"

    const-string/jumbo v36, "draw() - Change sample size from "

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    const-string/jumbo v38, " to "

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-static/range {v35 .. v39}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 594
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 595
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    .line 599
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTasks:[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    move-object/from16 v35, v0

    if-nez v35, :cond_b

    .line 600
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->startDecodingBitmapTiles()V

    .line 603
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    move/from16 v35, v0

    div-int v20, v35, v30

    .line 604
    .local v20, "originalWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    move/from16 v35, v0

    div-int v19, v35, v30

    .line 605
    .local v19, "originalHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    .line 606
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v36, v36, v27

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->round(F)I

    move-result v36

    .line 607
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v37, v37, v29

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->round(F)I

    move-result v37

    .line 608
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v28

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->round(F)I

    move-result v38

    .line 609
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v26

    invoke-static/range {v39 .. v39}, Ljava/lang/Math;->round(F)I

    move-result v39

    .line 605
    invoke-virtual/range {v35 .. v39}, Landroid/graphics/Rect;->set(IIII)V

    .line 611
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x44800000    # 1024.0f

    div-float v35, v35, v36

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v35, v0

    add-int/lit8 v14, v35, -0x1

    .line 612
    .local v14, "maxTileX":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x44800000    # 1024.0f

    div-float v35, v35, v36

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v35, v0

    add-int/lit8 v15, v35, -0x1

    .line 613
    .local v15, "maxTileY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x400

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->floor(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileX:I

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x400

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->floor(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileY:I

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x400

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileX:I

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x400

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileY:I

    .line 617
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileX:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, -0x2

    const/16 v36, 0x0

    move/from16 v0, v36

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 618
    .local v23, "paddingStartX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileY:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, -0x2

    const/16 v36, 0x0

    move/from16 v0, v36

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 619
    .local v24, "paddingStartY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileX:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, 0x2

    move/from16 v0, v35

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 620
    .local v21, "paddingEndX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileY:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, 0x2

    move/from16 v0, v35

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 621
    .local v22, "paddingEndY":I
    sub-int v35, v21, v23

    add-int/lit8 v35, v35, 0x1

    sub-int v36, v22, v24

    add-int/lit8 v36, v36, 0x1

    mul-int v35, v35, v36

    const/16 v36, 0x40

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 626
    .local v6, "activeTileCount":I
    move/from16 v34, v22

    .local v34, "y":I
    :goto_0
    move/from16 v0, v34

    move/from16 v1, v24

    if-lt v0, v1, :cond_14

    .line 628
    move/from16 v33, v21

    .local v33, "x":I
    :goto_1
    move/from16 v0, v33

    move/from16 v1, v23

    if-lt v0, v1, :cond_13

    .line 630
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileY:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileY:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_e

    .line 632
    :cond_c
    :goto_2
    shl-int/lit8 v35, v33, 0x10

    or-int v35, v35, v34

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 633
    .local v25, "position":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;

    move-object/from16 v35, v0

    aget-object v35, v35, v34

    aget-object v31, v35, v33

    .line 634
    .local v31, "tile":Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;
    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->isValid:Z

    move/from16 v35, v0

    if-eqz v35, :cond_d

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    if-nez v35, :cond_d

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->isDecoding:Z

    move/from16 v35, v0

    if-eqz v35, :cond_f

    .line 628
    .end local v25    # "position":Ljava/lang/Integer;
    .end local v31    # "tile":Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;
    :cond_d
    :goto_3
    add-int/lit8 v33, v33, -0x1

    goto :goto_1

    .line 630
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileX:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-lt v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileX:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-le v0, v1, :cond_d

    goto :goto_2

    .line 636
    .restart local v25    # "position":Ljava/lang/Integer;
    .restart local v31    # "tile":Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;
    :cond_f
    const/4 v7, 0x1

    .line 639
    .local v7, "addPreDecodingTile":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_12

    .line 641
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->size()I

    move-result v35

    move/from16 v0, v35

    if-lt v0, v6, :cond_12

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 644
    .local v16, "oldPosition":I
    ushr-int/lit8 v17, v16, 0x10

    .line 645
    .local v17, "oldX":I
    const v35, 0xffff

    and-int v18, v16, v35

    .line 646
    .local v18, "oldY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileY:I

    move/from16 v35, v0

    move/from16 v0, v18

    move/from16 v1, v35

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileY:I

    move/from16 v35, v0

    move/from16 v0, v18

    move/from16 v1, v35

    if-le v0, v1, :cond_11

    .line 648
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;

    move-object/from16 v35, v0

    aget-object v35, v35, v18

    aget-object v35, v35, v17

    invoke-virtual/range {v35 .. v35}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->reset()V

    goto :goto_4

    .line 646
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileX:I

    move/from16 v35, v0

    move/from16 v0, v17

    move/from16 v1, v35

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileX:I

    move/from16 v35, v0

    move/from16 v0, v17

    move/from16 v1, v35

    if-gt v0, v1, :cond_10

    .line 655
    const/4 v7, 0x0

    .line 664
    .end local v16    # "oldPosition":I
    .end local v17    # "oldX":I
    .end local v18    # "oldY":I
    :cond_12
    if-eqz v7, :cond_d

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/Queue;

    move-object/from16 v36, v0

    monitor-enter v36

    .line 673
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/Queue;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/Queue;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v36

    .line 676
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->isDecoding:Z

    goto/16 :goto_3

    .line 669
    :catchall_0
    move-exception v35

    monitor-exit v36

    throw v35

    .line 626
    .end local v7    # "addPreDecodingTile":Z
    .end local v25    # "position":Ljava/lang/Integer;
    .end local v31    # "tile":Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;
    :cond_13
    add-int/lit8 v34, v34, -0x1

    goto/16 :goto_0

    .line 684
    .end local v33    # "x":I
    :cond_14
    const/4 v13, 0x0

    .line 685
    .local v13, "isAnimating":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 686
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileY:I

    move/from16 v34, v0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileY:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_1d

    .line 688
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_EndTileX:I

    move/from16 v33, v0

    .restart local v33    # "x":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_StartTileX:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-lt v0, v1, :cond_1c

    .line 691
    shl-int/lit8 v35, v33, 0x10

    or-int v35, v35, v34

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 694
    .restart local v25    # "position":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;

    move-object/from16 v35, v0

    aget-object v35, v35, v34

    aget-object v31, v35, v33

    .line 695
    .restart local v31    # "tile":Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    .line 696
    .local v32, "tileBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->isDecoding:Z

    move/from16 v35, v0

    if-nez v35, :cond_1a

    .line 698
    if-eqz v32, :cond_19

    .line 700
    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->isValid:Z

    move/from16 v35, v0

    if-nez v35, :cond_15

    .line 688
    :goto_7
    add-int/lit8 v33, v33, -0x1

    goto :goto_6

    .line 702
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    .line 705
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v36, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v37, v0

    const/high16 v38, 0x44800000    # 1024.0f

    mul-float v37, v37, v38

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v37, v37, v38

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

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

    .line 706
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x44800000    # 1024.0f

    mul-float v38, v38, v39

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v39, v0

    div-float v38, v38, v39

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

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

    .line 707
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v38, v0

    add-int/lit8 v39, v33, 0x1

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    const/high16 v40, 0x44800000    # 1024.0f

    mul-float v39, v39, v40

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v40, v0

    div-float v39, v39, v40

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

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

    .line 708
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v39, v0

    add-int/lit8 v40, v34, 0x1

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    const/high16 v41, 0x44800000    # 1024.0f

    mul-float v40, v40, v41

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v40, v40, v41

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v40, v0

    add-int v39, v39, v40

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    .line 704
    invoke-virtual/range {v35 .. v39}, Landroid/graphics/RectF;->set(FFFF)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v36, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(FF)F

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v36, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(FF)F

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 713
    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->fadeInAnimationStartTime:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x0

    cmp-long v35, v36, v38

    if-lez v35, :cond_17

    .line 715
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->fadeInAnimationStartTime:J

    move-wide/from16 v38, v0

    sub-long v36, v36, v38

    move-wide/from16 v0, v36

    long-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x43480000    # 200.0f

    div-float v9, v35, v36

    .line 716
    .local v9, "animationProgress":F
    const/high16 v35, 0x3f800000    # 1.0f

    cmpl-float v35, v9, v35

    if-ltz v35, :cond_16

    .line 717
    const/high16 v9, 0x7fc00000    # NaNf

    .line 721
    :cond_16
    :goto_8
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v35

    if-nez v35, :cond_18

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    .line 724
    .local v8, "alpha":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    int-to-float v0, v8

    move/from16 v36, v0

    mul-float v36, v36, v9

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->round(F)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 727
    const/4 v13, 0x1

    .line 757
    .end local v8    # "alpha":I
    .end local v9    # "animationProgress":F
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_1b

    .line 759
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->size()I

    move-result v35

    move/from16 v0, v35

    if-lt v0, v6, :cond_1b

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 762
    .restart local v16    # "oldPosition":I
    ushr-int/lit8 v17, v16, 0x10

    .line 763
    .restart local v17    # "oldX":I
    const v35, 0xffff

    and-int v18, v16, v35

    .line 764
    .restart local v18    # "oldY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;

    move-object/from16 v35, v0

    aget-object v35, v35, v18

    aget-object v35, v35, v17

    invoke-virtual/range {v35 .. v35}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->reset()V

    goto :goto_a

    .line 720
    .end local v16    # "oldPosition":I
    .end local v17    # "oldX":I
    .end local v18    # "oldY":I
    :cond_17
    const/high16 v9, 0x7fc00000    # NaNf

    .restart local v9    # "animationProgress":F
    goto/16 :goto_8

    .line 731
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 732
    const-wide/16 v36, 0x0

    move-wide/from16 v0, v36

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->fadeInAnimationStartTime:J

    goto :goto_9

    .line 737
    .end local v9    # "animationProgress":F
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/Queue;

    move-object/from16 v36, v0

    monitor-enter v36

    .line 741
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/Queue;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/Queue;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v36

    .line 744
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;->isDecoding:Z

    goto/16 :goto_9

    .line 737
    :catchall_1
    move-exception v35

    monitor-exit v36

    throw v35

    .line 749
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/Queue;

    move-object/from16 v36, v0

    monitor-enter v36

    .line 751
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/Queue;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/Queue;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v36

    goto/16 :goto_9

    .line 749
    :catchall_2
    move-exception v35

    monitor-exit v36

    throw v35

    .line 769
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 686
    .end local v25    # "position":Ljava/lang/Integer;
    .end local v31    # "tile":Lcom/oneplus/drawable/ProgressiveBitmapDrawable$Tile;
    .end local v32    # "tileBitmap":Landroid/graphics/Bitmap;
    :cond_1c
    add-int/lit8 v34, v34, -0x1

    goto/16 :goto_5

    .line 774
    .end local v33    # "x":I
    :cond_1d
    if-eqz v13, :cond_1e

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_InvalidateRunnable:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v36

    const-wide/16 v38, 0x32

    add-long v36, v36, v38

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 524
    :cond_1e
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 783
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    if-lez v0, :cond_0

    .line 784
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    return v0

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    .line 787
    :cond_1
    return v1
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 803
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    if-lez v0, :cond_0

    .line 804
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    return v0

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 807
    :cond_1
    return v1
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public isSameSource(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 956
    invoke-direct {p0, p1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->isSameSource(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSameSource(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 945
    invoke-direct {p0, p1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->isSameSource(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1023
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1024
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot called from another thread."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1025
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    if-eqz v1, :cond_1

    .line 1026
    return-void

    .line 1027
    :cond_1
    iput-boolean v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    .line 1028
    iput-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1029
    iput-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    .line 1030
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_CancelStreamOpeningRef:Lcom/oneplus/base/Ref;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1031
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 1032
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoders:[Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_4

    .line 1034
    const-string/jumbo v1, "ProgressiveBitmapDrawable"

    const-string/jumbo v2, "release() - Release decoder"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoders:[Landroid/graphics/BitmapRegionDecoder;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 1037
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    if-eqz v0, :cond_2

    .line 1039
    sget-object v4, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ReleaseExecutors:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$3;

    invoke-direct {v5, p0, v0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$3;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Landroid/graphics/BitmapRegionDecoder;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1035
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1052
    .end local v0    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :cond_3
    iput-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoders:[Landroid/graphics/BitmapRegionDecoder;

    .line 1021
    :cond_4
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1059
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1067
    return-void
.end method

.method public setHighQualityBitmapEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1079
    iget-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1081
    const-string/jumbo v0, "ProgressiveBitmapDrawable"

    const-string/jumbo v1, "setHighQualityBitmapEnabled() - "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1082
    iput-boolean p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    .line 1083
    if-eqz p1, :cond_0

    .line 1084
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 1077
    :cond_0
    return-void
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1096
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 1093
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 1104
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    if-nez p1, :cond_0

    .line 1107
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 1108
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1110
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
