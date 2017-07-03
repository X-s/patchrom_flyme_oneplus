.class public Lcom/oneplus/media/BitmapPool;
.super Ljava/lang/Object;
.source "BitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x1000000

    const/4 v7, 0x1

    .line 84
    new-instance v0, Lcom/oneplus/media/BitmapPool;

    const-string v1, "ThumbnailBitmapPool"

    const-wide/32 v2, 0x4000000

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V

    sput-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    .line 88
    new-instance v0, Lcom/oneplus/media/BitmapPool;

    const-string v1, "SmallThumbnailBitmapPool"

    const-wide/32 v2, 0x2000000

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x4

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V

    sput-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

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

    const/4 v2, 0x0

    const/4 v1, 0x1

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

    const-string v2, "Invalid capacity : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

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

    const-string v2, "Invalid idle capacity : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

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

    const-string v1, "No bitmap configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_2
    if-gtz p7, :cond_3

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid decoding count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

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

    const-string v1, "Cannot use both FLAG_NO_EMBEDDED_THUMB and FLAG_USE_EMBEDDED_THUMB_ONLY flags."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    .restart local p1    # "name":Ljava/lang/String;
    :cond_4
    const-string p1, "BitmapPool"

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

    .line 375
    :goto_6
    return-void

    .line 374
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_PeriodicHandlers:Ljava/util/List;

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

    .line 310
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
    .line 329
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V

    .line 330
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/media/BitmapPool;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcom/oneplus/media/BitmapPool;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->decodeBitmap(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/media/BitmapPool;)Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_IsPeriodicCallbacksNeeded:Z

    return v0
.end method

.method static synthetic access$4(Lcom/oneplus/media/BitmapPool;)Ljava/util/List;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_PeriodicHandlers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$DecodingHandle;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->cancelDecoding(Lcom/oneplus/media/BitmapPool$DecodingHandle;)V

    return-void
.end method

.method static synthetic access$6(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/base/Handle;)V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->deactivate(Lcom/oneplus/base/Handle;)V

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

    .line 413
    return-void
.end method

.method private callOnBitmapDecoded(Lcom/oneplus/media/BitmapPool$DecodingHandle;Z)V
    .locals 8
    .param p1, "handle"    # Lcom/oneplus/media/BitmapPool$DecodingHandle;
    .param p2, "async"    # Z

    .prologue
    .line 420
    iget-object v5, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callback:Lcom/oneplus/media/BitmapPool$Callback;

    if-nez v5, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v2, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 423
    .local v2, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    if-eqz v2, :cond_0

    iget-boolean v5, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    if-eqz v5, :cond_0

    .line 427
    iget-object v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 428
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 430
    iget v5, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxWidth:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-lt v5, v6, :cond_2

    iget v5, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxHeight:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 431
    :cond_2
    iget v5, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxWidth:I

    iget v6, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxHeight:I

    invoke-static {v1, v5, v6}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 435
    :cond_3
    iget-object v3, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callbackHandler:Landroid/os/Handler;

    .line 436
    .local v3, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_6

    if-nez p2, :cond_4

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-eq v5, v6, :cond_6

    .line 438
    :cond_4
    move-object v0, v1

    .line 439
    .local v0, "actualBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/oneplus/media/BitmapPool$3;

    invoke-direct {v4, p0, v2, p1, v0}, Lcom/oneplus/media/BitmapPool$3;-><init>(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;Lcom/oneplus/media/BitmapPool$DecodingHandle;Landroid/graphics/Bitmap;)V

    .line 457
    .local v4, "r":Ljava/lang/Runnable;
    iget-object v5, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->periodicHandler:Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;

    if-nez v5, :cond_5

    .line 458
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 460
    :cond_5
    iget-object v5, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->periodicHandler:Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;

    invoke-virtual {v5, v4}, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->schedule(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 464
    .end local v0    # "actualBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "r":Ljava/lang/Runnable;
    :cond_6
    iget-object v6, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v6

    .line 466
    :try_start_0
    iget-boolean v5, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    if-eqz v5, :cond_7

    .line 468
    iget-object v5, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 469
    iget-object v7, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callback:Lcom/oneplus/media/BitmapPool$Callback;

    iget-object v5, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, p1, v5, v1}, Lcom/oneplus/media/BitmapPool$Callback;->onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 473
    :cond_7
    :goto_1
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 464
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 470
    :cond_8
    :try_start_1
    iget-object v5, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    instance-of v5, v5, Landroid/net/Uri;

    if-eqz v5, :cond_7

    .line 471
    iget-object v7, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callback:Lcom/oneplus/media/BitmapPool$Callback;

    iget-object v5, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v7, p1, v5, v1}, Lcom/oneplus/media/BitmapPool$Callback;->onBitmapDecoded(Lcom/oneplus/base/Handle;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private cancelDecoding(Lcom/oneplus/media/BitmapPool$DecodingHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/media/BitmapPool$DecodingHandle;

    .prologue
    .line 482
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 484
    :try_start_0
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 485
    .local v0, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    if-nez v1, :cond_1

    .line 486
    :cond_0
    monitor-exit v2

    .line 494
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 488
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 482
    .end local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 489
    .restart local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    .line 490
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    iget-object v3, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 492
    invoke-direct {p0, v0}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 482
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private checkDecodingExecutor()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 515
    iget v0, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingThreadCount:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    .line 512
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private deactivate(Lcom/oneplus/base/Handle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 523
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    const-string v2, "deactivate()"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-wide v2, p0, Lcom/oneplus/media/BitmapPool;->m_IdleCapacity:J

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/media/BitmapPool;->shrink(J)V

    .line 523
    :cond_0
    monitor-exit v1

    .line 531
    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    .line 625
    if-nez p2, :cond_0

    .line 627
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    const-string v3, "decode() - No media source"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/4 v0, 0x0

    .line 741
    :goto_0
    return-object v0

    .line 630
    :cond_0
    instance-of v1, p2, Landroid/net/Uri;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    const-string v3, "decode() - No context"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/4 v0, 0x0

    goto :goto_0

    .line 635
    :cond_1
    if-eqz p4, :cond_2

    if-nez p5, :cond_3

    .line 637
    :cond_2
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "decode() - Invalid size : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const/4 v0, 0x0

    goto :goto_0

    .line 640
    :cond_3
    if-nez p7, :cond_4

    .line 641
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    const-string v3, "decode() - No call-back"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_4
    if-gez p4, :cond_5

    .line 643
    const p4, 0x7fffffff

    .line 644
    :cond_5
    if-gez p5, :cond_6

    .line 645
    const p5, 0x7fffffff

    .line 649
    :cond_6
    iget-object v9, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v9

    .line 656
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 657
    .local v2, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    if-eqz v2, :cond_9

    .line 659
    invoke-direct {p0, v2}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 660
    iget-boolean v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    if-eqz v1, :cond_b

    .line 663
    iget v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    if-lt v1, p4, :cond_8

    iget v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    if-lt v1, p5, :cond_8

    .line 667
    new-instance v0, Lcom/oneplus/media/BitmapPool$DecodingHandle;

    move-object v1, p0

    move v3, p4

    move v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool$DecodingHandle;-><init>(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;IILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)V

    .line 668
    .local v0, "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    iget-object v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-direct {p0, v2}, Lcom/oneplus/media/BitmapPool;->addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 670
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 674
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 677
    :cond_7
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 678
    monitor-exit v9

    goto/16 :goto_0

    .line 649
    .end local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    .end local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 684
    .restart local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :cond_8
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    .line 685
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    :cond_9
    :goto_1
    if-nez v2, :cond_e

    .line 713
    new-instance v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .end local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    invoke-direct {v2, p2, p3}, Lcom/oneplus/media/BitmapPool$BitmapInfo;-><init>(Ljava/lang/Object;I)V

    .line 716
    .restart local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :goto_2
    iput p4, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    .line 717
    iput p5, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    .line 718
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    invoke-direct {p0, v2}, Lcom/oneplus/media/BitmapPool;->addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 722
    new-instance v0, Lcom/oneplus/media/BitmapPool$DecodingHandle;

    move-object v1, p0

    move v3, p4

    move v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool$DecodingHandle;-><init>(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;IILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)V

    .line 723
    .restart local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    iget-object v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool;->checkDecodingExecutor()V

    .line 729
    and-int/lit8 v1, p6, 0x2

    if-nez v1, :cond_f

    .line 730
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 733
    :goto_3
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 736
    instance-of v1, p2, Landroid/net/Uri;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_ContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_a

    .line 737
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_ContentResolver:Landroid/content/ContentResolver;

    .line 649
    :cond_a
    monitor-exit v9

    goto/16 :goto_0

    .line 690
    .end local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    :cond_b
    iget-object v7, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 691
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_d

    iget v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    if-lt v1, p4, :cond_d

    iget v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    if-lt v1, p5, :cond_d

    .line 695
    new-instance v0, Lcom/oneplus/media/BitmapPool$DecodingHandle;

    move-object v1, p0

    move v3, p4

    move v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool$DecodingHandle;-><init>(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;IILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)V

    .line 696
    .restart local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    invoke-direct {p0, v2}, Lcom/oneplus/media/BitmapPool;->addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 697
    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/oneplus/media/BitmapPool;->callOnBitmapDecoded(Lcom/oneplus/media/BitmapPool$DecodingHandle;Z)V

    .line 698
    monitor-exit v9

    goto/16 :goto_0

    .line 697
    :cond_c
    const/4 v1, 0x0

    goto :goto_4

    .line 704
    .end local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    :cond_d
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    .line 705
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    if-eqz v7, :cond_9

    .line 707
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    neg-int v1, v1

    int-to-long v4, v1

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/BitmapPool;->updateCurrentSize(J)V

    goto/16 :goto_1

    .line 715
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_e
    new-instance v8, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    invoke-direct {v8, v2}, Lcom/oneplus/media/BitmapPool$BitmapInfo;-><init>(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .end local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .local v8, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    move-object v2, v8

    .end local v8    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .restart local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    goto/16 :goto_2

    .line 732
    .restart local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    :cond_f
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private decodeBitmap(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    .locals 20
    .param p1, "bitmapInfo"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .prologue
    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 847
    :try_start_0
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 848
    monitor-exit v17

    .line 1005
    :goto_0
    return-void

    .line 845
    :cond_0
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 852
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    .line 853
    .local v13, "source":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 854
    .local v10, "filePath":Ljava/lang/String;
    const/4 v6, 0x0

    .line 855
    .local v6, "contentUri":Landroid/net/Uri;
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object v10, v13

    .line 856
    check-cast v10, Ljava/lang/String;

    .line 872
    :goto_1
    const/4 v4, 0x0

    .line 874
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->renainingDecodingTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_6

    .line 966
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 968
    :try_start_1
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 975
    if-eqz v4, :cond_10

    .line 976
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/media/BitmapPool;->updateCurrentSize(J)V

    .line 979
    :goto_3
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    .line 980
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 983
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_2

    .line 985
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v11, v16, -0x1

    .local v11, "i":I
    :goto_4
    if-gez v11, :cond_11

    .line 987
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 991
    .end local v11    # "i":I
    :cond_2
    if-nez v4, :cond_3

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 966
    :cond_3
    monitor-exit v17

    goto :goto_0

    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v16

    .line 845
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "contentUri":Landroid/net/Uri;
    .end local v10    # "filePath":Ljava/lang/String;
    .end local v13    # "source":Ljava/lang/Object;
    :catchall_1
    move-exception v16

    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v16

    .line 857
    .restart local v6    # "contentUri":Landroid/net/Uri;
    .restart local v10    # "filePath":Ljava/lang/String;
    .restart local v13    # "source":Ljava/lang/Object;
    :cond_4
    instance-of v0, v13, Landroid/net/Uri;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    move-object v6, v13

    .line 858
    check-cast v6, Landroid/net/Uri;

    goto :goto_1

    .line 861
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "decodeBitmap() - Unknown source : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 876
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 879
    .local v14, "startTime":J
    :try_start_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->mediaType:I

    move/from16 v16, v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    packed-switch v16, :pswitch_data_0

    .line 945
    :cond_7
    :goto_5
    :pswitch_0
    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/media/BitmapPool;->m_UseEmbeddedThumbnailOnly:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 947
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v8, v16, v14

    .line 948
    .local v8, "duration":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->renainingDecodingTime:J

    move-wide/from16 v16, v0

    sub-long v16, v16, v8

    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->renainingDecodingTime:J

    .line 949
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->renainingDecodingTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_1

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "decodeBitmap() - Fail to decode "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", retry"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-wide/16 v16, 0x64

    :try_start_4
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 956
    :catch_0
    move-exception v16

    goto/16 :goto_2

    .line 883
    .end local v8    # "duration":J
    :pswitch_1
    if-eqz v10, :cond_8

    .line 884
    :try_start_5
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v10, v1, v2}, Lcom/oneplus/media/BitmapPool;->decodePhoto(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_5

    .line 885
    :cond_8
    if-eqz v6, :cond_7

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_ContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/oneplus/media/BitmapPool;->decodePhoto(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 887
    goto/16 :goto_5

    .line 892
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->VIDEO_DECODE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result v16

    if-eqz v16, :cond_b

    .line 896
    if-eqz v10, :cond_a

    .line 897
    :try_start_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v10, v1, v2}, Lcom/oneplus/media/BitmapPool;->decodeVideo(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v4

    .line 903
    :cond_9
    :goto_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->VIDEO_DECODE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_5

    .line 941
    :catch_1
    move-exception v7

    .line 943
    .local v7, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "decodeBitmap() - Fail to decode "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 898
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_a
    if-eqz v6, :cond_9

    .line 899
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_ContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/oneplus/media/BitmapPool;->decodeVideo(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v4

    .line 900
    goto :goto_6

    .line 902
    :catchall_2
    move-exception v16

    .line 903
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->VIDEO_DECODE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/Semaphore;->release()V

    .line 904
    throw v16

    .line 910
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    .line 912
    :try_start_a
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    move/from16 v16, v0

    if-eqz v16, :cond_e

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_d

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 919
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/media/BitmapPool$BitmapInfo;>;"
    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_f

    .line 930
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/media/BitmapPool$BitmapInfo;>;"
    :cond_d
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    sub-long v8, v18, v14

    .line 931
    .restart local v8    # "duration":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->renainingDecodingTime:J

    move-wide/from16 v18, v0

    sub-long v18, v18, v8

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->renainingDecodingTime:J

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_DecodingRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 934
    .end local v8    # "duration":J
    :cond_e
    monitor-exit v17

    goto/16 :goto_0

    .line 910
    :catchall_3
    move-exception v16

    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v16
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    .line 921
    .restart local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/media/BitmapPool$BitmapInfo;>;"
    :cond_f
    :try_start_c
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 922
    .local v5, "candBitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    iget v0, v5, Lcom/oneplus/media/BitmapPool$BitmapInfo;->mediaType:I

    move/from16 v16, v0

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_7

    .line 978
    .end local v5    # "candBitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/media/BitmapPool$BitmapInfo;>;"
    .end local v14    # "startTime":J
    :cond_10
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "decodeBitmap() - Fail to decode "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 986
    .restart local v11    # "i":I
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/media/BitmapPool$DecodingHandle;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/media/BitmapPool;->callOnBitmapDecoded(Lcom/oneplus/media/BitmapPool$DecodingHandle;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 985
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_4

    .line 879
    nop

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
    const/4 v1, 0x0

    .line 1033
    if-nez p1, :cond_0

    .line 1046
    :goto_0
    return-object v1

    .line 1035
    :cond_0
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1037
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1038
    .local v0, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    if-eqz v0, :cond_1

    .line 1040
    invoke-direct {p0, v0}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 1041
    invoke-direct {p0, v0}, Lcom/oneplus/media/BitmapPool;->addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 1042
    iget-boolean v3, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    if-nez v3, :cond_1

    .line 1043
    iget-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    monitor-exit v2

    goto :goto_0

    .line 1035
    .end local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private invalidate(Ljava/lang/Object;)V
    .locals 6
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 1102
    if-nez p1, :cond_0

    .line 1131
    :goto_0
    return-void

    .line 1104
    :cond_0
    iget-object v3, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1106
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1107
    .local v0, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    if-nez v0, :cond_1

    .line 1108
    monitor-exit v3

    goto :goto_0

    .line 1104
    .end local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1109
    .restart local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    .line 1110
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    invoke-direct {p0, v0}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 1112
    iget-boolean v2, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    if-eqz v2, :cond_3

    .line 1116
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1117
    new-instance v1, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    invoke-direct {v1, v0}, Lcom/oneplus/media/BitmapPool$BitmapInfo;-><init>(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 1118
    .end local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .local v1, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    invoke-direct {p0, v1}, Lcom/oneplus/media/BitmapPool;->addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 1120
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1121
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingRunnable:Ljava/lang/Runnable;

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object v0, v1

    .line 1104
    .end local v1    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .restart local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :cond_2
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 1127
    :cond_3
    iget-object v2, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 1128
    iget-object v2, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    neg-int v2, v2

    int-to-long v4, v2

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/BitmapPool;->updateCurrentSize(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    .locals 3
    .param p1, "bitmapInfo"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .prologue
    const/4 v2, 0x0

    .line 1147
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-ne v0, p1, :cond_0

    .line 1148
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueTail:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-ne v0, p1, :cond_1

    .line 1150
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueTail:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1151
    :cond_1
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-eqz v0, :cond_2

    .line 1152
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iget-object v1, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1153
    :cond_2
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-eqz v0, :cond_3

    .line 1154
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iget-object v1, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1155
    :cond_3
    iput-object v2, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1156
    iput-object v2, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1157
    return-void
.end method

.method private updateCurrentSize(J)V
    .locals 3
    .param p1, "diff"    # J

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/oneplus/media/BitmapPool;->m_IdleCapacity:J

    :goto_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oneplus/media/BitmapPool;->updateCurrentSize(JJ)V

    .line 1174
    return-void

    .line 1173
    :cond_0
    iget-wide v0, p0, Lcom/oneplus/media/BitmapPool;->m_Capacity:J

    goto :goto_0
.end method

.method private updateCurrentSize(JJ)V
    .locals 11
    .param p1, "capacity"    # J
    .param p3, "diff"    # J

    .prologue
    .line 1177
    iget-object v5, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v5

    .line 1180
    :try_start_0
    iget-wide v2, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    .line 1181
    .local v2, "oldSize":J
    iget-wide v6, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    add-long/2addr v6, p3

    iput-wide v6, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    .line 1186
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueTail:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1187
    .local v0, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :goto_0
    iget-wide v6, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    cmp-long v4, v6, p1

    if-lez v4, :cond_0

    if-nez v0, :cond_1

    .line 1177
    :cond_0
    monitor-exit v5

    .line 1210
    return-void

    .line 1189
    :cond_1
    iget-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1192
    .local v1, "prevBitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :try_start_1
    iget-boolean v4, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 1196
    iget-wide v2, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    .line 1197
    iget-wide v6, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    iget-object v4, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    int-to-long v8, v4

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    .line 1198
    iget-object v4, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    iget-object v6, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    invoke-direct {p0, v0}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1206
    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 1205
    :catchall_0
    move-exception v4

    .line 1206
    move-object v0, v1

    .line 1207
    :try_start_2
    throw v4

    .line 1177
    .end local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .end local v1    # "prevBitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .end local v2    # "oldSize":J
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method


# virtual methods
.method public final activate()Lcom/oneplus/base/Handle;
    .locals 4

    .prologue
    .line 384
    new-instance v0, Lcom/oneplus/media/BitmapPool$2;

    const-string v1, "ActivateBitmapPool"

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

    const-string v3, "activate()"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    monitor-exit v2

    .line 398
    return-object v0

    .line 392
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canUseEmbeddedThumbnail()Z
    .locals 1

    .prologue
    .line 503
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
    .line 617
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
    .line 591
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
    .line 567
    if-nez p2, :cond_0

    .line 568
    invoke-static {p1}, Lcom/oneplus/io/FileUtils;->isVideoFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x3

    .line 570
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

    .line 568
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
    .line 546
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
    .line 775
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 777
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_1
    iget-boolean v2, p0, Lcom/oneplus/media/BitmapPool;->m_PreferQualityOverSpeed:Z

    if-eqz v2, :cond_2

    .line 779
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapPool;->getDecodeFlags()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p3, p4, v2, v4}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 780
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v4, :cond_1

    .line 785
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 784
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .line 782
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 785
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v1    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :goto_1
    if-nez v3, :cond_4

    :goto_2
    throw v2

    .line 784
    .restart local v1    # "stream":Ljava/io/InputStream;
    :cond_2
    :try_start_5
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapPool;->getDecodeFlags()I

    move-result v2

    iget-object v4, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p3, p4, v2, v4}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 785
    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 784
    :catchall_1
    move-exception v2

    .line 785
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_1

    .end local v1    # "stream":Ljava/io/InputStream;
    :cond_4
    if-eq v3, v2, :cond_5

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    move-object v2, v3

    goto :goto_2
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
    .line 754
    iget-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_PreferQualityOverSpeed:Z

    if-eqz v1, :cond_1

    .line 756
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapPool;->getDecodeFlags()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v1, v2}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 757
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 761
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 759
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 761
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapPool;->getDecodeFlags()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v1, v2}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected decodeVideo(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 7
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

    .line 823
    const/4 v2, 0x0

    .line 824
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    const-string v4, "r"

    invoke-virtual {p1, p2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v0

    .line 826
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v3, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 828
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 829
    .local v1, "frame":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 830
    invoke-static {v1, p3, p4}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v4

    .line 832
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 835
    :cond_0
    if-eqz v3, :cond_1

    .line 836
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 831
    :cond_1
    :goto_0
    return-object v4

    .line 832
    :cond_2
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 835
    :cond_3
    if-eqz v3, :cond_4

    .line 836
    :try_start_6
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_4
    move-object v4, v5

    .line 831
    goto :goto_0

    .end local v1    # "frame":Landroid/graphics/Bitmap;
    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_0
    move-exception v4

    .line 832
    :goto_1
    if-eqz v0, :cond_5

    :try_start_7
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_5
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_2
    if-nez v5, :cond_7

    :goto_3
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 834
    :catchall_2
    move-exception v4

    .line 835
    if-eqz v2, :cond_6

    .line 836
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 837
    :cond_6
    throw v4

    .line 832
    :cond_7
    if-eq v5, v4, :cond_8

    :try_start_9
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_8
    move-object v4, v5

    goto :goto_3

    :catchall_3
    move-exception v4

    goto :goto_2

    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "frame":Landroid/graphics/Bitmap;
    .restart local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_2

    .line 831
    .end local v1    # "frame":Landroid/graphics/Bitmap;
    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_1
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
    .line 798
    const/4 v0, 0x0

    .line 801
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    .end local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 807
    if-eqz v1, :cond_0

    .line 808
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 803
    :cond_0
    return-object v2

    .line 806
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_0
    move-exception v2

    .line 807
    :goto_0
    if-eqz v0, :cond_1

    .line 808
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 809
    :cond_1
    throw v2

    .line 806
    .end local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_0
.end method

.method public getCachedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 1026
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->getCachedBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1015
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->getCachedBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDecodeFlags()I
    .locals 2

    .prologue
    .line 1056
    const/4 v0, 0x0

    .line 1057
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_PreferQualityOverSpeed:Z

    if-eqz v1, :cond_0

    .line 1058
    or-int/lit8 v0, v0, 0x1

    .line 1059
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_CanUseEmbeddedThumbnail:Z

    if-nez v1, :cond_3

    .line 1060
    or-int/lit8 v0, v0, 0x2

    .line 1063
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_Opaque:Z

    if-eqz v1, :cond_2

    .line 1064
    or-int/lit8 v0, v0, 0x10

    .line 1065
    :cond_2
    return v0

    .line 1061
    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_UseEmbeddedThumbnailOnly:Z

    if-eqz v1, :cond_1

    .line 1062
    or-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public getTargetConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public invalidate(Landroid/net/Uri;)V
    .locals 0
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 1095
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/Object;)V

    .line 1096
    return-void
.end method

.method public invalidate(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1085
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/Object;)V

    .line 1086
    return-void
.end method

.method public preferQualityOverSpeed()Z
    .locals 1

    .prologue
    .line 1140
    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_PreferQualityOverSpeed:Z

    return v0
.end method

.method public shrink(J)V
    .locals 3
    .param p1, "targetSize"    # J

    .prologue
    .line 1166
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/media/BitmapPool;->updateCurrentSize(JJ)V

    .line 1167
    return-void
.end method

.method public useEmbeddedThumbnailOnly()Z
    .locals 1

    .prologue
    .line 1219
    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_UseEmbeddedThumbnailOnly:Z

    return v0
.end method
