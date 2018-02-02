.class public Lcom/oneplus/media/BitmapPool;
.super Ljava/lang/Object;
.source "BitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/media/BitmapPool$1;,
        Lcom/oneplus/media/BitmapPool$BitmapInfo;,
        Lcom/oneplus/media/BitmapPool$Callback;,
        Lcom/oneplus/media/BitmapPool$DecodingHandle;,
        Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

.field public static final DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

.field private static final DURATION_PERIODIC_CALLBACK:J = 0x64L

.field public static final FLAG_ASYNC:I = 0x1

.field public static final FLAG_NO_EMBEDDED_THUMB:I = 0x10

.field public static final FLAG_OPAQUE:I = 0x8

.field public static final FLAG_PERIODIC_CALLBACK:I = 0x40

.field public static final FLAG_PREFER_QUALITY_OVER_SPEED:I = 0x4

.field public static final FLAG_URGENT:I = 0x2

.field public static final FLAG_USE_EMBEDDED_THUMB_ONLY:I = 0x20

.field private static final MAX_DECODING_TIME:J = 0xbb8L

.field public static final MEDIA_TYPE_PHOTO:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x3

.field private static final PRINT_TRACE_LOG:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final VIDEO_DECODE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

.field private final m_ActivateHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_BitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final m_BitmapInfos:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Lcom/oneplus/media/BitmapPool$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

.field private volatile m_BitmapQueueTail:Lcom/oneplus/media/BitmapPool$BitmapInfo;

.field private final m_CanUseEmbeddedThumbnail:Z

.field private final m_Capacity:J

.field private volatile m_ContentResolver:Landroid/content/ContentResolver;

.field private volatile m_CurrentSize:J

.field private volatile m_DecodingExecutor:Ljava/util/concurrent/Executor;

.field private final m_DecodingRunnable:Ljava/lang/Runnable;

.field private final m_DecodingThreadCount:I

.field private final m_IdleCapacity:J

.field private final m_IsPeriodicCallbacksNeeded:Z

.field private final m_Lock:Ljava/lang/Object;

.field private final m_Opaque:Z

.field private final m_PendingDecodingQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/media/BitmapPool$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PeriodicHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PreferQualityOverSpeed:Z

.field private final m_UseEmbeddedThumbnailOnly:Z


# direct methods
.method static synthetic -get0(Lcom/oneplus/media/BitmapPool;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_IsPeriodicCallbacksNeeded:Z

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/media/BitmapPool;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/media/BitmapPool;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/media/BitmapPool;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_PeriodicHandlers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$DecodingHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/media/BitmapPool$DecodingHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->cancelDecoding(Lcom/oneplus/media/BitmapPool$DecodingHandle;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->deactivate(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    .locals 0
    .param p1, "bitmapInfo"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->decodeBitmap(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x1000000

    const/4 v7, 0x1

    .line 84
    new-instance v0, Lcom/oneplus/media/BitmapPool;

    const-string/jumbo v1, "ThumbnailBitmapPool"

    const-wide/32 v2, 0x4000000

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V

    sput-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    .line 88
    new-instance v0, Lcom/oneplus/media/BitmapPool;

    const-string/jumbo v1, "SmallThumbnailBitmapPool"

    const-wide/32 v2, 0x2000000

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x4

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V

    sput-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "capacity"    # J
    .param p4, "idleCapacity"    # J
    .param p6, "config"    # Landroid/graphics/Bitmap$Config;
    .param p7, "decodingThreadCount"    # I
    .param p8, "flags"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->VIDEO_DECODE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_ActivateHandles:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    .line 106
    new-instance v0, Lcom/oneplus/media/BitmapPool$1;

    invoke-direct {v0, p0}, Lcom/oneplus/media/BitmapPool$1;-><init>(Lcom/oneplus/media/BitmapPool;)V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingRunnable:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    .line 351
    cmp-long v0, p2, v4

    if-gez v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid capacity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    cmp-long v0, p4, v4

    if-gez v0, :cond_1

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid idle capacity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1
    if-nez p6, :cond_2

    .line 356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No bitmap configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_2
    if-gtz p7, :cond_3

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid decoding count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_3
    if-eqz p1, :cond_4

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    .line 360
    iput-wide p2, p0, Lcom/oneplus/media/BitmapPool;->m_Capacity:J

    .line 361
    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/media/BitmapPool;->m_IdleCapacity:J

    .line 362
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_IsPeriodicCallbacksNeeded:Z

    .line 363
    iput-object p6, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 364
    iput p7, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingThreadCount:I

    .line 365
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_Opaque:Z

    .line 366
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_PreferQualityOverSpeed:Z

    .line 367
    and-int/lit8 v0, p8, 0x10

    if-nez v0, :cond_8

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_CanUseEmbeddedThumbnail:Z

    .line 368
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_9

    :goto_5
    iput-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_UseEmbeddedThumbnailOnly:Z

    .line 369
    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_CanUseEmbeddedThumbnail:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_UseEmbeddedThumbnailOnly:Z

    if-eqz v0, :cond_a

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot use both FLAG_NO_EMBEDDED_THUMB and FLAG_USE_EMBEDDED_THUMB_ONLY flags."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    .restart local p1    # "name":Ljava/lang/String;
    :cond_4
    const-string/jumbo p1, "BitmapPool"

    goto :goto_0

    .end local p1    # "name":Ljava/lang/String;
    :cond_5
    move v0, v2

    .line 362
    goto :goto_1

    :cond_6
    move v0, v2

    .line 365
    goto :goto_2

    :cond_7
    move v0, v2

    .line 366
    goto :goto_3

    :cond_8
    move v0, v2

    .line 367
    goto :goto_4

    :cond_9
    move v1, v2

    .line 368
    goto :goto_5

    .line 371
    :cond_a
    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_IsPeriodicCallbacksNeeded:Z

    if-eqz v0, :cond_b

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_PeriodicHandlers:Ljava/util/List;

    .line 349
    :goto_6
    return-void

    .line 374
    :cond_b
    iput-object v3, p0, Lcom/oneplus/media/BitmapPool;->m_PeriodicHandlers:Ljava/util/List;

    goto :goto_6
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;I)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "capacity"    # J
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;
    .param p5, "decodingThreadCount"    # I

    .prologue
    .line 309
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;II)V

    .line 307
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;II)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "capacity"    # J
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;
    .param p5, "decodingThreadCount"    # I
    .param p6, "flags"    # I

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    .line 329
    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V

    .line 327
    return-void
.end method

.method private addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    .locals 1
    .param p1, "bitmapInfo"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 408
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object p1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueTail:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-nez v0, :cond_1

    .line 411
    iput-object p1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueTail:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 412
    :cond_1
    iput-object p1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 403
    return-void
.end method

.method private callOnBitmapDecoded(Lcom/oneplus/media/BitmapPool$DecodingHandle;Z)V
    .locals 8
    .param p1, "handle"    # Lcom/oneplus/media/BitmapPool$DecodingHandle;
    .param p2, "async"    # Z

    .prologue
    .line 420
    iget-object v5, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callback:Lcom/oneplus/media/BitmapPool$Callback;

    if-nez v5, :cond_0

    .line 421
    return-void

    .line 422
    :cond_0
    iget-object v2, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 423
    .local v2, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    if-eqz v2, :cond_4

    iget-boolean v5, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    if-eqz v5, :cond_4

    .line 427
    iget-object v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 428
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 430
    iget v5, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxWidth:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-lt v5, v6, :cond_1

    iget v5, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxHeight:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 431
    :cond_1
    iget v5, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxWidth:I

    iget v6, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxHeight:I

    invoke-static {v1, v5, v6}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 435
    :cond_2
    iget-object v3, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callbackHandler:Landroid/os/Handler;

    .line 436
    .local v3, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_6

    if-nez p2, :cond_3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-eq v5, v6, :cond_6

    .line 438
    :cond_3
    move-object v0, v1

    .line 439
    .local v0, "actualBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/oneplus/media/BitmapPool$3;

    invoke-direct {v4, p0, v2, p1, v0}, Lcom/oneplus/media/BitmapPool$3;-><init>(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;Lcom/oneplus/media/BitmapPool$DecodingHandle;Landroid/graphics/Bitmap;)V

    .line 459
    .local v4, "r":Ljava/lang/Runnable;
    iget-object v5, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->periodicHandler:Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;

    if-nez v5, :cond_5

    .line 460
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    .end local v0    # "actualBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "r":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 424
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_4
    return-void

    .line 462
    .restart local v0    # "actualBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "handler":Landroid/os/Handler;
    .restart local v4    # "r":Ljava/lang/Runnable;
    :cond_5
    iget-object v5, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->periodicHandler:Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;

    invoke-virtual {v5, v4}, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->schedule(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 466
    .end local v0    # "actualBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "r":Ljava/lang/Runnable;
    :cond_6
    iget-object v6, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v6

    .line 468
    :try_start_0
    iget-boolean v5, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    if-eqz v5, :cond_7

    .line 470
    iget-object v5, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 471
    iget-object v7, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callback:Lcom/oneplus/media/BitmapPool$Callback;

    iget-object v5, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, p1, v5, v1}, Lcom/oneplus/media/BitmapPool$Callback;->onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 475
    :cond_7
    :goto_1
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    goto :goto_0

    .line 472
    :cond_8
    :try_start_1
    iget-object v5, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    instance-of v5, v5, Landroid/net/Uri;

    if-eqz v5, :cond_7

    .line 473
    iget-object v7, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callback:Lcom/oneplus/media/BitmapPool$Callback;

    iget-object v5, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v7, p1, v5, v1}, Lcom/oneplus/media/BitmapPool$Callback;->onBitmapDecoded(Lcom/oneplus/base/Handle;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 466
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private cancelDecoding(Lcom/oneplus/media/BitmapPool$DecodingHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/media/BitmapPool$DecodingHandle;

    .prologue
    .line 484
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 486
    :try_start_0
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 487
    .local v0, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    .line 492
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    iget-object v3, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 494
    invoke-direct {p0, v0}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 482
    return-void

    :cond_0
    monitor-exit v2

    .line 488
    return-void

    :cond_1
    monitor-exit v2

    .line 490
    return-void

    .line 484
    .end local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private checkDecodingExecutor()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 513
    return-void

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 517
    iget v0, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingThreadCount:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 510
    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private deactivate(Lcom/oneplus/base/Handle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 525
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "deactivate()"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-wide v2, p0, Lcom/oneplus/media/BitmapPool;->m_IdleCapacity:J

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/media/BitmapPool;->shrink(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 523
    return-void

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private decode(Landroid/content/Context;Ljava/lang/Object;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "mediaType"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "flags"    # I
    .param p7, "callback"    # Lcom/oneplus/media/BitmapPool$Callback;
    .param p8, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 627
    if-nez p2, :cond_0

    .line 629
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "decode() - No media source"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const/4 v1, 0x0

    return-object v1

    .line 632
    :cond_0
    instance-of v1, p2, Landroid/net/Uri;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 634
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "decode() - No context"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const/4 v1, 0x0

    return-object v1

    .line 637
    :cond_1
    if-eqz p4, :cond_2

    if-nez p5, :cond_3

    .line 639
    :cond_2
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decode() - Invalid size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v1, 0x0

    return-object v1

    .line 642
    :cond_3
    if-nez p7, :cond_4

    .line 643
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "decode() - No call-back"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_4
    if-gez p4, :cond_5

    .line 645
    const p4, 0x7fffffff

    .line 646
    :cond_5
    if-gez p5, :cond_6

    .line 647
    const p5, 0x7fffffff

    .line 651
    :cond_6
    iget-object v9, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v9

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 659
    .local v2, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    if-eqz v2, :cond_9

    .line 661
    invoke-direct {p0, v2}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 662
    iget-boolean v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    if-eqz v1, :cond_b

    .line 665
    iget v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    if-lt v1, p4, :cond_8

    iget v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    if-lt v1, p5, :cond_8

    .line 669
    new-instance v0, Lcom/oneplus/media/BitmapPool$DecodingHandle;

    move-object v1, p0

    move v3, p4

    move v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool$DecodingHandle;-><init>(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;IILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)V

    .line 670
    .local v0, "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    iget-object v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-direct {p0, v2}, Lcom/oneplus/media/BitmapPool;->addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 672
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 676
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 679
    :cond_7
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 680
    return-object v0

    .line 686
    .end local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    :cond_8
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    .line 687
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    :cond_9
    :goto_0
    if-nez v2, :cond_e

    .line 715
    new-instance v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .end local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    invoke-direct {v2, p2, p3}, Lcom/oneplus/media/BitmapPool$BitmapInfo;-><init>(Ljava/lang/Object;I)V

    .line 718
    .restart local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :goto_1
    iput p4, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    .line 719
    iput p5, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    .line 720
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    invoke-direct {p0, v2}, Lcom/oneplus/media/BitmapPool;->addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 724
    new-instance v0, Lcom/oneplus/media/BitmapPool$DecodingHandle;

    move-object v1, p0

    move v3, p4

    move v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool$DecodingHandle;-><init>(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;IILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)V

    .line 725
    .restart local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    iget-object v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool;->checkDecodingExecutor()V

    .line 731
    and-int/lit8 v1, p6, 0x2

    if-nez v1, :cond_f

    .line 732
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 735
    :goto_2
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 738
    instance-of v1, p2, Landroid/net/Uri;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_ContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_a

    .line 739
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_ContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    monitor-exit v9

    .line 743
    return-object v0

    .line 692
    .end local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    :cond_b
    :try_start_2
    iget-object v7, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 693
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_d

    iget v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    if-lt v1, p4, :cond_d

    iget v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    if-lt v1, p5, :cond_d

    .line 697
    new-instance v0, Lcom/oneplus/media/BitmapPool$DecodingHandle;

    move-object v1, p0

    move v3, p4

    move v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool$DecodingHandle;-><init>(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;IILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)V

    .line 698
    .restart local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    invoke-direct {p0, v2}, Lcom/oneplus/media/BitmapPool;->addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 699
    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/oneplus/media/BitmapPool;->callOnBitmapDecoded(Lcom/oneplus/media/BitmapPool$DecodingHandle;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v9

    .line 700
    return-object v0

    .line 699
    :cond_c
    const/4 v1, 0x0

    goto :goto_3

    .line 706
    .end local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    :cond_d
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    .line 707
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    if-eqz v7, :cond_9

    .line 709
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    neg-int v1, v1

    int-to-long v4, v1

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/BitmapPool;->updateCurrentSize(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 651
    .end local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1

    .line 717
    .restart local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :cond_e
    :try_start_4
    new-instance v8, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    invoke-direct {v8, v2}, Lcom/oneplus/media/BitmapPool$BitmapInfo;-><init>(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .end local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .local v8, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    move-object v2, v8

    .end local v8    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .restart local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    goto/16 :goto_1

    .line 734
    .restart local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    :cond_f
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private decodeBitmap(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    .locals 22
    .param p1, "bitmapInfo"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .prologue
    .line 847
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v15

    .line 849
    :try_start_0
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    move/from16 v18, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v18, :cond_0

    monitor-exit v15

    .line 850
    return-void

    :cond_0
    monitor-exit v15

    .line 854
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    .line 855
    .local v14, "source":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 856
    .local v11, "filePath":Ljava/lang/String;
    const/4 v6, 0x0

    .line 857
    .local v6, "contentUri":Landroid/net/Uri;
    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_3

    move-object v11, v14

    .line 858
    check-cast v11, Ljava/lang/String;

    .line 874
    .end local v6    # "contentUri":Landroid/net/Uri;
    .end local v11    # "filePath":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .line 875
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const-wide/16 v16, 0x0

    .line 876
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .local v16, "startTime":J
    :goto_1
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->renainingDecodingTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v15, v18, v20

    if-lez v15, :cond_2

    .line 878
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 881
    :try_start_1
    move-object/from16 v0, p1

    iget v15, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->mediaType:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    packed-switch v15, :pswitch_data_0

    .line 947
    :cond_1
    :goto_2
    :pswitch_0
    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/oneplus/media/BitmapPool;->m_UseEmbeddedThumbnailOnly:Z

    if-eqz v15, :cond_c

    .line 968
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 970
    :try_start_2
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    if-eqz v15, :cond_10

    .line 977
    if-eqz v4, :cond_d

    .line 978
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/oneplus/media/BitmapPool;->updateCurrentSize(J)V

    .line 981
    :goto_3
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    .line 982
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 985
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_f

    .line 987
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v12, v15, -0x1

    .local v12, "i":I
    :goto_4
    if-ltz v12, :cond_e

    .line 988
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/media/BitmapPool$DecodingHandle;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v15, v1}, Lcom/oneplus/media/BitmapPool;->callOnBitmapDecoded(Lcom/oneplus/media/BitmapPool$DecodingHandle;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 987
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 847
    .end local v12    # "i":I
    .end local v14    # "source":Ljava/lang/Object;
    .end local v16    # "startTime":J
    :catchall_0
    move-exception v18

    monitor-exit v15

    throw v18

    .line 859
    .restart local v6    # "contentUri":Landroid/net/Uri;
    .restart local v11    # "filePath":Ljava/lang/String;
    .restart local v14    # "source":Ljava/lang/Object;
    :cond_3
    instance-of v15, v14, Landroid/net/Uri;

    if-eqz v15, :cond_4

    move-object v6, v14

    .line 860
    check-cast v6, Landroid/net/Uri;

    .local v6, "contentUri":Landroid/net/Uri;
    goto :goto_0

    .line 863
    .local v6, "contentUri":Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "decodeBitmap() - Unknown source : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    return-void

    .line 885
    .end local v6    # "contentUri":Landroid/net/Uri;
    .end local v11    # "filePath":Ljava/lang/String;
    .restart local v16    # "startTime":J
    :pswitch_1
    if-eqz v11, :cond_5

    .line 886
    :try_start_3
    move-object/from16 v0, p1

    iget v15, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v15, v1}, Lcom/oneplus/media/BitmapPool;->decodePhoto(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 887
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    if-eqz v6, :cond_1

    .line 888
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->m_ContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v15, v6, v1, v2}, Lcom/oneplus/media/BitmapPool;->decodePhoto(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 894
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->VIDEO_DECODE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v15}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v15

    if-eqz v15, :cond_8

    .line 898
    if-eqz v11, :cond_7

    .line 899
    :try_start_4
    move-object/from16 v0, p1

    iget v15, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v15, v1}, Lcom/oneplus/media/BitmapPool;->decodeVideo(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    .line 905
    :cond_6
    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->VIDEO_DECODE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v15}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 944
    :catch_0
    move-exception v10

    .line 945
    .local v10, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "decodeBitmap() - Fail to decode "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 900
    .end local v10    # "ex":Ljava/lang/Throwable;
    :cond_7
    if-eqz v6, :cond_6

    .line 901
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->m_ContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v15, v6, v1, v2}, Lcom/oneplus/media/BitmapPool;->decodeVideo(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v4

    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_5

    .line 904
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v15

    .line 905
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->VIDEO_DECODE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/Semaphore;->release()V

    .line 904
    throw v15

    .line 912
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 914
    :try_start_8
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    if-eqz v15, :cond_b

    .line 916
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v15

    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v15, v0, :cond_a

    .line 920
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 921
    .local v13, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/media/BitmapPool$BitmapInfo;>;"
    :cond_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 923
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 924
    .local v5, "candBitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    iget v15, v5, Lcom/oneplus/media/BitmapPool$BitmapInfo;->mediaType:I

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_9

    .line 926
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v15, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 927
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v15, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 932
    .end local v5    # "candBitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .end local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/media/BitmapPool$BitmapInfo;>;"
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v8, v20, v16

    .line 933
    .local v8, "duration":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->renainingDecodingTime:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v8

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->renainingDecodingTime:J

    .line 934
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_DecodingRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v8    # "duration":J
    :cond_b
    :try_start_9
    monitor-exit v18

    .line 936
    return-void

    .line 912
    :catchall_2
    move-exception v15

    monitor-exit v18

    throw v15
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 949
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    sub-long v8, v18, v16

    .line 950
    .restart local v8    # "duration":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->renainingDecodingTime:J

    move-wide/from16 v18, v0

    sub-long v18, v18, v8

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->renainingDecodingTime:J

    .line 951
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->renainingDecodingTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v15, v18, v20

    if-gtz v15, :cond_2

    .line 953
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "decodeBitmap() - Fail to decode "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", retry"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-wide/16 v18, 0x64

    :try_start_a
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 959
    :catch_1
    move-exception v7

    .local v7, "ex":Ljava/lang/InterruptedException;
    goto/16 :goto_1

    .line 980
    .end local v7    # "ex":Ljava/lang/InterruptedException;
    .end local v8    # "duration":J
    :cond_d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "decodeBitmap() - Fail to decode "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/16 :goto_3

    .line 968
    :catchall_3
    move-exception v15

    monitor-exit v18

    throw v15

    .line 989
    .restart local v12    # "i":I
    :cond_e
    :try_start_c
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 993
    .end local v12    # "i":I
    :cond_f
    if-nez v4, :cond_10

    .line 997
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v15, v14}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :cond_10
    monitor-exit v18

    .line 844
    return-void

    .line 881
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getCachedBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1035
    if-nez p1, :cond_0

    .line 1036
    return-object v3

    .line 1037
    :cond_0
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1039
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1040
    .local v0, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    if-eqz v0, :cond_1

    .line 1042
    invoke-direct {p0, v0}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 1043
    invoke-direct {p0, v0}, Lcom/oneplus/media/BitmapPool;->addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 1044
    iget-boolean v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    if-nez v1, :cond_1

    .line 1045
    iget-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :cond_1
    monitor-exit v2

    .line 1048
    return-object v3

    .line 1037
    .end local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private invalidate(Ljava/lang/Object;)V
    .locals 6
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 1104
    if-nez p1, :cond_0

    .line 1105
    return-void

    .line 1106
    :cond_0
    iget-object v3, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1108
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    .local v0, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    if-nez v0, :cond_1

    monitor-exit v3

    .line 1110
    return-void

    .line 1111
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    .line 1112
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    invoke-direct {p0, v0}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 1114
    iget-boolean v2, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    if-eqz v2, :cond_3

    .line 1118
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1119
    new-instance v1, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    invoke-direct {v1, v0}, Lcom/oneplus/media/BitmapPool$BitmapInfo;-><init>(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 1120
    .end local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .local v1, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    invoke-direct {p0, v1}, Lcom/oneplus/media/BitmapPool;->addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 1122
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1123
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingRunnable:Ljava/lang/Runnable;

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .end local v1    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .restart local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :cond_2
    :goto_0
    monitor-exit v3

    .line 1102
    return-void

    .line 1129
    :cond_3
    :try_start_2
    iget-object v2, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 1130
    iget-object v2, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    neg-int v2, v2

    int-to-long v4, v2

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/BitmapPool;->updateCurrentSize(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1106
    .end local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    .locals 3
    .param p1, "bitmapInfo"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .prologue
    const/4 v2, 0x0

    .line 1149
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-ne v0, p1, :cond_0

    .line 1150
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueTail:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-ne v0, p1, :cond_1

    .line 1152
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueTail:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1153
    :cond_1
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-eqz v0, :cond_2

    .line 1154
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iget-object v1, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1155
    :cond_2
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-eqz v0, :cond_3

    .line 1156
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iget-object v1, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1157
    :cond_3
    iput-object v2, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1158
    iput-object v2, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1147
    return-void
.end method

.method private updateCurrentSize(J)V
    .locals 3
    .param p1, "diff"    # J

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/oneplus/media/BitmapPool;->m_IdleCapacity:J

    :goto_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oneplus/media/BitmapPool;->updateCurrentSize(JJ)V

    .line 1173
    return-void

    .line 1175
    :cond_0
    iget-wide v0, p0, Lcom/oneplus/media/BitmapPool;->m_Capacity:J

    goto :goto_0
.end method

.method private updateCurrentSize(JJ)V
    .locals 11
    .param p1, "capacity"    # J
    .param p3, "diff"    # J

    .prologue
    .line 1179
    iget-object v5, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v5

    .line 1182
    :try_start_0
    iget-wide v2, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    .line 1183
    .local v2, "oldSize":J
    iget-wide v6, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    add-long/2addr v6, p3

    iput-wide v6, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    .line 1188
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueTail:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1189
    .local v0, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :goto_0
    iget-wide v6, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    cmp-long v4, v6, p1

    if-lez v4, :cond_1

    if-eqz v0, :cond_1

    .line 1191
    iget-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1194
    .local v1, "prevBitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :try_start_1
    iget-boolean v4, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 1198
    iget-wide v2, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    .line 1199
    iget-wide v6, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    iget-object v4, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    int-to-long v8, v4

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    .line 1200
    iget-object v4, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    iget-object v6, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    invoke-direct {p0, v0}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1208
    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 1207
    :catchall_0
    move-exception v4

    .line 1208
    move-object v0, v1

    .line 1207
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1179
    .end local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .end local v1    # "prevBitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .end local v2    # "oldSize":J
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .restart local v2    # "oldSize":J
    :cond_1
    monitor-exit v5

    .line 1177
    return-void
.end method


# virtual methods
.method public final activate()Lcom/oneplus/base/Handle;
    .locals 4

    .prologue
    .line 384
    new-instance v0, Lcom/oneplus/media/BitmapPool$2;

    const-string/jumbo v1, "ActivateBitmapPool"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/media/BitmapPool$2;-><init>(Lcom/oneplus/media/BitmapPool;Ljava/lang/String;)V

    .line 392
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 396
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "activate()"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 398
    return-object v0

    .line 392
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public canUseEmbeddedThumbnail()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_CanUseEmbeddedThumbnail:Z

    return v0
.end method

.method public decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "mediaType"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "flags"    # I
    .param p7, "callback"    # Lcom/oneplus/media/BitmapPool$Callback;
    .param p8, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 619
    invoke-direct/range {p0 .. p8}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Ljava/lang/Object;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public decode(Landroid/content/Context;Landroid/net/Uri;IIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "mediaType"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "callback"    # Lcom/oneplus/media/BitmapPool$Callback;
    .param p7, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 593
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mediaType"    # I
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I
    .param p5, "flags"    # I
    .param p6, "callback"    # Lcom/oneplus/media/BitmapPool$Callback;
    .param p7, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 569
    if-nez p2, :cond_0

    .line 570
    invoke-static {p1}, Lcom/oneplus/io/FileUtils;->isVideoFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x3

    .line 572
    :cond_0
    :goto_0
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Ljava/lang/Object;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0

    .line 570
    :cond_1
    const/4 p2, 0x1

    goto :goto_0
.end method

.method public decode(Ljava/lang/String;IIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mediaType"    # I
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I
    .param p5, "callback"    # Lcom/oneplus/media/BitmapPool$Callback;
    .param p6, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 548
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method protected decodePhoto(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 777
    const/4 v1, 0x0

    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 779
    .local v1, "stream":Ljava/io/InputStream;
    iget-boolean v2, p0, Lcom/oneplus/media/BitmapPool;->m_PreferQualityOverSpeed:Z

    if-eqz v2, :cond_5

    .line 781
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapPool;->getDecodeFlags()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p3, p4, v2, v4}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 782
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v2, v4, :cond_2

    .line 787
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0

    .line 783
    :cond_1
    return-object v0

    .line 784
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 787
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    throw v3

    :catch_1
    move-exception v3

    goto :goto_1

    .line 784
    :cond_4
    return-object v2

    .line 786
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapPool;->getDecodeFlags()I

    move-result v2

    iget-object v4, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p3, p4, v2, v4}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    .line 787
    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    throw v3

    :catch_2
    move-exception v3

    goto :goto_2

    .line 786
    :cond_7
    return-object v2

    .line 787
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_3
    if-eqz v1, :cond_8

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_8
    :goto_4
    if-eqz v3, :cond_a

    throw v3

    :catch_4
    move-exception v4

    if-nez v3, :cond_9

    move-object v3, v4

    goto :goto_4

    :cond_9
    if-eq v3, v4, :cond_8

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_3
.end method

.method protected decodePhoto(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 756
    iget-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_PreferQualityOverSpeed:Z

    if-eqz v1, :cond_1

    .line 758
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapPool;->getDecodeFlags()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v1, v2}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 759
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 760
    return-object v0

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 763
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapPool;->getDecodeFlags()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v1, v2}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected decodeVideo(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 825
    const/4 v2, 0x0

    .line 826
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    const/4 v0, 0x0

    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string/jumbo v4, "r"

    invoke-virtual {p1, p2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 828
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 829
    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v3, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 830
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 831
    .local v1, "frame":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 832
    invoke-static {v1, p3, p4}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v4

    .line 839
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 836
    :catchall_0
    move-exception v4

    move-object v2, v3

    .line 837
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "frame":Landroid/graphics/Bitmap;
    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_1
    if-eqz v2, :cond_1

    .line 838
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 836
    :cond_1
    throw v4

    .line 839
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "frame":Landroid/graphics/Bitmap;
    .restart local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 837
    :cond_2
    if-eqz v3, :cond_3

    .line 838
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 832
    :cond_3
    return-object v4

    .line 839
    :cond_4
    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    move-object v4, v5

    :goto_2
    if-eqz v4, :cond_6

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception v4

    goto :goto_2

    .line 837
    :cond_6
    if-eqz v3, :cond_7

    .line 838
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 833
    :cond_7
    return-object v5

    .line 839
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "frame":Landroid/graphics/Bitmap;
    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_2
    move-exception v4

    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_3
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_4
    if-eqz v0, :cond_8

    :try_start_7
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_8
    :goto_5
    if-eqz v5, :cond_a

    :try_start_8
    throw v5

    .line 836
    :catchall_2
    move-exception v4

    goto :goto_1

    .line 839
    :catch_3
    move-exception v6

    if-nez v5, :cond_9

    move-object v5, v6

    goto :goto_5

    :cond_9
    if-eq v5, v6, :cond_8

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_a
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .restart local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_3
    move-exception v4

    goto :goto_4

    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_4

    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_3
.end method

.method protected decodeVideo(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 800
    const/4 v0, 0x0

    .line 803
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 805
    .end local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 809
    if-eqz v1, :cond_0

    .line 810
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 805
    :cond_0
    return-object v2

    .line 808
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_0
    move-exception v2

    .line 809
    .end local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_0
    if-eqz v0, :cond_1

    .line 810
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 808
    :cond_1
    throw v2

    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_0
.end method

.method public getCachedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->getCachedBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1017
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->getCachedBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDecodeFlags()I
    .locals 2

    .prologue
    .line 1058
    const/4 v0, 0x0

    .line 1059
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_PreferQualityOverSpeed:Z

    if-eqz v1, :cond_0

    .line 1060
    const/4 v0, 0x1

    .line 1061
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_CanUseEmbeddedThumbnail:Z

    if-nez v1, :cond_3

    .line 1062
    or-int/lit8 v0, v0, 0x2

    .line 1065
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_Opaque:Z

    if-eqz v1, :cond_2

    .line 1066
    or-int/lit8 v0, v0, 0x10

    .line 1067
    :cond_2
    return v0

    .line 1063
    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_UseEmbeddedThumbnailOnly:Z

    if-eqz v1, :cond_1

    .line 1064
    or-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public getTargetConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public invalidate(Landroid/net/Uri;)V
    .locals 0
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 1097
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/Object;)V

    .line 1095
    return-void
.end method

.method public invalidate(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1087
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/Object;)V

    .line 1085
    return-void
.end method

.method public preferQualityOverSpeed()Z
    .locals 1

    .prologue
    .line 1142
    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_PreferQualityOverSpeed:Z

    return v0
.end method

.method public shrink(J)V
    .locals 3
    .param p1, "targetSize"    # J

    .prologue
    .line 1168
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/media/BitmapPool;->updateCurrentSize(JJ)V

    .line 1166
    return-void
.end method

.method public useEmbeddedThumbnailOnly()Z
    .locals 1

    .prologue
    .line 1221
    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_UseEmbeddedThumbnailOnly:Z

    return v0
.end method
