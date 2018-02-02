.class public Lcom/oneplus/camera/media/YuvToBitmapWorker;
.super Ljava/lang/Object;
.source "YuvToBitmapWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/media/YuvToBitmapWorker$1;,
        Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;
    }
.end annotation


# static fields
.field public static final FLAG_ANTI_ALIAS:I = 0x1

.field private static final MSG_CONVERT:I = 0x2710

.field private static final MSG_QUIT:I = 0x2711

.field private static final PROFILE:Z = false

.field private static final PROFILE_INTERVAL:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "YuvToBitmapWorker"


# instance fields
.field private final m_BitmapDestRect:Landroid/graphics/Rect;

.field private final m_BitmapScalePaint:Landroid/graphics/Paint;

.field private final m_BitmapSrcRect:Landroid/graphics/Rect;

.field private m_BlurAllocation:Landroid/renderscript/Allocation;

.field private m_BlurRgbaBitmap:Landroid/graphics/Bitmap;

.field private m_BlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private final m_BufferCount:I

.field private final m_Context:Landroid/content/Context;

.field private m_ConversionCount:I

.field private m_ConversionTime:J

.field private final m_ConvertedBitmaps:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Flags:I

.field private final m_FreeBitmaps:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_InputHeight:I

.field private volatile m_InputWidth:I

.field private volatile m_IsActive:Z

.field private m_LastProfileTime:J

.field private m_NV21Allocation:Landroid/renderscript/Allocation;

.field private m_NV21AllocationHeight:I

.field private m_NV21AllocationWidth:I

.field private final m_NV21Buffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field

.field private final m_NotifyListenerRunnable:Ljava/lang/Runnable;

.field private volatile m_OnBitmapAvailableListener:Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;

.field private m_OnBitmapAvailableListenerHandler:Landroid/os/Handler;

.field private volatile m_OutputConfig:Landroid/graphics/Bitmap$Config;

.field private volatile m_OutputHeight:I

.field private volatile m_OutputWidth:I

.field private m_RenderScript:Landroid/renderscript/RenderScript;

.field private m_RenderScriptHandle:Lcom/oneplus/base/Handle;

.field private m_RgbaAllocation:Landroid/renderscript/Allocation;

.field private m_RgbaBitmap:Landroid/graphics/Bitmap;

.field private final m_WorkerThread:Landroid/os/HandlerThread;

.field private m_WorkerThreadHandler:Landroid/os/Handler;

.field private m_YuvToRgbaScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/camera/media/YuvToBitmapWorker;[BII)V
    .locals 0
    .param p1, "nv21Buffer"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->convert([BII)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->notifyListener()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->quitWorkerThread()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIIILandroid/graphics/Bitmap$Config;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bufferCount"    # I
    .param p3, "inputWidth"    # I
    .param p4, "inputHeight"    # I
    .param p5, "outputWidth"    # I
    .param p6, "outputHeight"    # I
    .param p7, "outputConfig"    # Landroid/graphics/Bitmap$Config;
    .param p8, "flags"    # I

    .prologue
    const/4 v5, 0x1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapDestRect:Landroid/graphics/Rect;

    .line 52
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapScalePaint:Landroid/graphics/Paint;

    .line 53
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapSrcRect:Landroid/graphics/Rect;

    .line 66
    iput-boolean v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    .line 68
    new-instance v2, Lcom/oneplus/camera/media/YuvToBitmapWorker$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/media/YuvToBitmapWorker$1;-><init>(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NotifyListenerRunnable:Ljava/lang/Runnable;

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No context."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_0
    if-gtz p2, :cond_1

    .line 124
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid buffer count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_1
    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    .line 126
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid input size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_3
    and-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_2

    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_2

    .line 127
    if-lez p5, :cond_4

    if-gtz p6, :cond_5

    .line 128
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid output size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_5
    if-nez p7, :cond_6

    .line 130
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No output configuration."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_6
    const-string/jumbo v2, "YuvToBitmapWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "YuvToBitmapWorker() - Input size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v2, "YuvToBitmapWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "YuvToBitmapWorker() - Output size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", config : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iput p2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BufferCount:I

    .line 137
    iput-object p1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_Context:Landroid/content/Context;

    .line 138
    iput p3, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    .line 139
    iput p4, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    .line 140
    iput-object p7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputConfig:Landroid/graphics/Bitmap$Config;

    .line 141
    iput p5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputWidth:I

    .line 142
    iput p6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputHeight:I

    .line 143
    iput p8, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_Flags:I

    .line 146
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    .line 147
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v2, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    .line 148
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v2, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    .line 149
    mul-int v2, p3, p4

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v1, v2, 0x2

    .line 150
    .local v1, "nv21BufferSize":I
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_7

    .line 152
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    new-array v3, v1, [B

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-static {p5, p6, p7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 157
    :cond_7
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapScalePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 160
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "YUV-Bitmap worker thread"

    const/4 v4, -0x4

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThread:Landroid/os/HandlerThread;

    .line 161
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 162
    new-instance v2, Lcom/oneplus/camera/media/YuvToBitmapWorker$2;

    iget-object v3, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/oneplus/camera/media/YuvToBitmapWorker$2;-><init>(Lcom/oneplus/camera/media/YuvToBitmapWorker;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThreadHandler:Landroid/os/Handler;

    .line 118
    return-void
.end method

.method private convert([BII)V
    .locals 10
    .param p1, "nv21Buffer"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v9, 0x0

    .line 365
    const-wide/16 v4, 0x0

    .line 366
    .local v4, "time":J
    monitor-enter p0

    .line 368
    :try_start_0
    iget v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    if-ne v6, p2, :cond_0

    iget v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    if-eq v6, p3, :cond_1

    .line 370
    :cond_0
    const-string/jumbo v6, "YuvToBitmapWorker"

    const-string/jumbo v7, "convert() - Input size has been changed"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 371
    return-void

    :cond_1
    monitor-exit p0

    .line 376
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    if-nez v6, :cond_2

    .line 378
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_Context:Landroid/content/Context;

    invoke-static {v6}, Lcom/oneplus/renderscript/RenderScriptManager;->createRenderScript(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    .line 379
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    invoke-static {v6}, Lcom/oneplus/renderscript/RenderScriptManager;->getRenderScript(Lcom/oneplus/base/Handle;)Landroid/renderscript/RenderScript;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    .line 381
    :cond_2
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Allocation:Landroid/renderscript/Allocation;

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21AllocationWidth:I

    if-eq v6, p2, :cond_b

    .line 384
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Allocation:Landroid/renderscript/Allocation;

    if-eqz v6, :cond_4

    .line 385
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Allocation:Landroid/renderscript/Allocation;

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->destroy()V

    .line 386
    :cond_4
    new-instance v3, Landroid/renderscript/Type$Builder;

    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    iget-object v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v7}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 387
    .local v3, "typeBuilder":Landroid/renderscript/Type$Builder;
    array-length v6, p1

    invoke-virtual {v3, v6}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 388
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Allocation:Landroid/renderscript/Allocation;

    .line 389
    iput p2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21AllocationWidth:I

    .line 390
    iput p3, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21AllocationHeight:I

    .line 393
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaAllocation:Landroid/renderscript/Allocation;

    if-eqz v6, :cond_5

    .line 394
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->destroy()V

    .line 395
    :cond_5
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_6

    .line 396
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    :cond_6
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    .line 398
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    iget-object v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaAllocation:Landroid/renderscript/Allocation;

    .line 399
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v9, v9, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 401
    .end local v3    # "typeBuilder":Landroid/renderscript/Type$Builder;
    :cond_7
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_YuvToRgbaScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    if-nez v6, :cond_8

    .line 402
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    iget-object v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v7}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_YuvToRgbaScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 405
    :cond_8
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Allocation:Landroid/renderscript/Allocation;

    invoke-virtual {v6, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 406
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_YuvToRgbaScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Allocation:Landroid/renderscript/Allocation;

    invoke-virtual {v6, v7}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 407
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_YuvToRgbaScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v6, v7}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 410
    monitor-enter p0

    .line 412
    :try_start_1
    iget v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    if-eq v6, p2, :cond_9

    iget v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    if-ne v6, p3, :cond_a

    .line 413
    :cond_9
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    invoke-interface {v6, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_a
    monitor-exit p0

    .line 418
    monitor-enter p0

    .line 420
    :try_start_2
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    monitor-exit p0

    .line 422
    if-nez v0, :cond_c

    .line 424
    const-string/jumbo v6, "YuvToBitmapWorker"

    const-string/jumbo v7, "convert() - No free bitmap"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void

    .line 366
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 381
    :cond_b
    iget v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21AllocationHeight:I

    if-eq v6, p3, :cond_7

    goto/16 :goto_0

    .line 410
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 418
    :catchall_2
    move-exception v6

    monitor-exit p0

    throw v6

    .line 429
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, p2, :cond_e

    .line 430
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v6, p3, :cond_e

    .line 431
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v6, v7, :cond_e

    .line 433
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v6, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 490
    :goto_1
    monitor-enter p0

    .line 492
    :try_start_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputWidth:I

    if-ne v6, v7, :cond_15

    .line 493
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputHeight:I

    if-ne v6, v7, :cond_15

    .line 494
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputConfig:Landroid/graphics/Bitmap$Config;

    if-ne v6, v7, :cond_15

    .line 496
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OnBitmapAvailableListenerHandler:Landroid/os/Handler;

    if-eqz v6, :cond_d

    .line 498
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OnBitmapAvailableListenerHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NotifyListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_d
    :goto_2
    monitor-exit p0

    .line 362
    return-void

    .line 438
    :cond_e
    int-to-float v6, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v1, v6, v7

    .line 439
    .local v1, "blurRadius":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_14

    iget v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_Flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_14

    .line 441
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BlurAllocation:Landroid/renderscript/Allocation;

    if-eqz v6, :cond_f

    .line 442
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BlurAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v6

    if-eq v6, p2, :cond_13

    .line 445
    :cond_f
    :goto_3
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BlurAllocation:Landroid/renderscript/Allocation;

    if-eqz v6, :cond_10

    .line 446
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BlurAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->destroy()V

    .line 447
    :cond_10
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BlurRgbaBitmap:Landroid/graphics/Bitmap;

    .line 448
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    iget-object v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BlurRgbaBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BlurAllocation:Landroid/renderscript/Allocation;

    .line 450
    :cond_11
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-nez v6, :cond_12

    .line 451
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    iget-object v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v7}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 454
    :cond_12
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v6, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 457
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v6, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 458
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BlurAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v6, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 459
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BlurAllocation:Landroid/renderscript/Allocation;

    iget-object v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 463
    :goto_4
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapDestRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 464
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 465
    .local v2, "canvas":Landroid/graphics/Canvas;
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapSrcRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapDestRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapScalePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 443
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_13
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BlurAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v6

    if-eq v6, p3, :cond_11

    goto :goto_3

    .line 462
    :cond_14
    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaAllocation:Landroid/renderscript/Allocation;

    iget-object v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 502
    .end local v1    # "blurRadius":F
    :cond_15
    :try_start_4
    const-string/jumbo v6, "YuvToBitmapWorker"

    const-string/jumbo v7, "convert() - Output configuration has been changed"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_2

    .line 490
    :catchall_3
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized notifyListener()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 562
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OnBitmapAvailableListener:Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 560
    return-void

    .line 563
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OnBitmapAvailableListener:Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;

    invoke-interface {v0, p0}, Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;->onBitmapAvailable(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private quitWorkerThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 570
    const-string/jumbo v0, "YuvToBitmapWorker"

    const-string/jumbo v1, "quitWorkerThread()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    .line 574
    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    .line 577
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 580
    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    .line 584
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 568
    return-void
.end method


# virtual methods
.method public declared-synchronized acquireLastBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    monitor-enter p0

    .line 188
    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-eqz v1, :cond_2

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 192
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 193
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BufferCount:I

    if-ge v1, v2, :cond_0

    .line 194
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 196
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 198
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 200
    :cond_2
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized acquireNextBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    monitor-enter p0

    .line 210
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 212
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addMultiPlaneYuvFrame([Lcom/oneplus/camera/media/ImagePlane;)V
    .locals 5
    .param p1, "yuvPlanes"    # [Lcom/oneplus/camera/media/ImagePlane;

    .prologue
    monitor-enter p0

    .line 223
    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-nez v1, :cond_0

    .line 225
    const-string/jumbo v1, "YuvToBitmapWorker"

    const-string/jumbo v2, "addMultiPlaneYuvFrame() - Worker has been closed"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 226
    return-void

    .line 230
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    array-length v1, p1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 232
    :cond_1
    const-string/jumbo v1, "YuvToBitmapWorker"

    const-string/jumbo v2, "addMultiPlaneYuvFrame() - Invalid YUV planes"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 233
    return-void

    .line 235
    :cond_2
    :try_start_2
    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    if-gtz v1, :cond_4

    .line 237
    :cond_3
    const-string/jumbo v1, "YuvToBitmapWorker"

    const-string/jumbo v2, "addMultiPlaneYuvFrame() - Input size is 0, ignore"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 238
    return-void

    .line 242
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 243
    .local v0, "nv21Buffer":[B
    if-nez v0, :cond_5

    .line 245
    const-string/jumbo v1, "YuvToBitmapWorker"

    const-string/jumbo v2, "addMultiPlaneYuvFrame() - No available internal NV21 buffer"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 246
    return-void

    .line 250
    :cond_5
    :try_start_4
    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    iget v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/oneplus/camera/media/YuvUtils;->multiPlaneYuvToNV21([Lcom/oneplus/camera/media/ImagePlane;[BII)V

    .line 253
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThreadHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    iget v3, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    const/16 v4, 0x2710

    invoke-static {v1, v4, v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 220
    return-void

    .end local v0    # "nv21Buffer":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addNV21Frame([B)V
    .locals 6
    .param p1, "nv21Frame"    # [B

    .prologue
    monitor-enter p0

    .line 264
    :try_start_0
    iget-boolean v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-nez v2, :cond_0

    .line 266
    const-string/jumbo v2, "YuvToBitmapWorker"

    const-string/jumbo v3, "addNV21Frame() - Worker has been closed"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 267
    return-void

    .line 271
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    iget v3, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v0, v2, 0x2

    .line 272
    .local v0, "dataSize":I
    if-gtz v0, :cond_1

    .line 274
    const-string/jumbo v2, "YuvToBitmapWorker"

    const-string/jumbo v3, "addNV21Frame() - Input size is 0, ignore"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 275
    return-void

    .line 277
    :cond_1
    if-eqz p1, :cond_2

    :try_start_2
    array-length v2, p1

    if-ge v2, v0, :cond_3

    .line 279
    :cond_2
    const-string/jumbo v2, "YuvToBitmapWorker"

    const-string/jumbo v3, "addNV21Frame() - Invalid YUV data size"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 280
    return-void

    .line 284
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 285
    .local v1, "nv21Buffer":[B
    if-nez v1, :cond_4

    .line 287
    const-string/jumbo v2, "YuvToBitmapWorker"

    const-string/jumbo v3, "addNV21Frame() - No available internal NV21 buffer"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 288
    return-void

    .line 292
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4
    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThreadHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    iget v4, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    const/16 v5, 0x2710

    invoke-static {v2, v5, v3, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 261
    return-void

    .end local v0    # "dataSize":I
    .end local v1    # "nv21Buffer":[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addNV21Frame([BII)V
    .locals 7
    .param p1, "nv21Frame"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    monitor-enter p0

    .line 305
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-nez v0, :cond_0

    .line 307
    const-string/jumbo v0, "YuvToBitmapWorker"

    const-string/jumbo v1, "addNV21Frame() - Worker has been closed"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 308
    return-void

    .line 311
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    if-eq p3, v0, :cond_4

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 315
    .local v3, "nv21Buffer":[B
    if-nez v3, :cond_2

    .line 317
    const-string/jumbo v0, "YuvToBitmapWorker"

    const-string/jumbo v1, "addNV21Frame() - No available internal NV21 buffer"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 318
    return-void

    .line 321
    :cond_2
    :try_start_2
    iget v4, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    iget v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/oneplus/media/ImageUtils;->scaleNV21Image([BII[BII)Z

    move-result v6

    .line 323
    .local v6, "result":Z
    if-eqz v6, :cond_3

    .line 324
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThreadHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    iget v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    const/16 v4, 0x2710

    invoke-static {v0, v4, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "nv21Buffer":[B
    .end local v6    # "result":Z
    :goto_0
    monitor-exit p0

    .line 302
    return-void

    .line 327
    .restart local v3    # "nv21Buffer":[B
    .restart local v6    # "result":Z
    :cond_3
    :try_start_3
    const-string/jumbo v0, "YuvToBitmapWorker"

    const-string/jumbo v1, "addNV21Frame() - Failed to scale NV21 image."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v3    # "nv21Buffer":[B
    .end local v6    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 333
    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->addNV21Frame([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 344
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 345
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    .line 349
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OnBitmapAvailableListener:Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;

    .line 355
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 356
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 357
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 341
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInputHeight()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    return v0
.end method

.method public getInputWidth()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    return v0
.end method

.method public getOutputConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getOutputHeight()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputHeight:I

    return v0
.end method

.method public getOutputWidth()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputWidth:I

    return v0
.end method

.method public declared-synchronized reconfigureInput(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    monitor-enter p0

    .line 595
    :try_start_0
    iget-boolean v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-nez v2, :cond_0

    .line 596
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Access closed worker."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 597
    :cond_0
    if-ltz p1, :cond_1

    if-gez p2, :cond_2

    .line 598
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid input size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 597
    :cond_2
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_1

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_1

    .line 599
    iget v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    if-ne v2, p1, :cond_3

    iget v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, p2, :cond_3

    monitor-exit p0

    .line 600
    return-void

    .line 601
    :cond_3
    :try_start_2
    const-string/jumbo v2, "YuvToBitmapWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reconfigureInput() - Size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v0, v2, 0x2

    .line 603
    .local v0, "bufferSize":I
    iput p1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    .line 604
    iput p2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    .line 605
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 606
    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BufferCount:I

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_4

    .line 607
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    new-array v3, v0, [B

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 606
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    monitor-exit p0

    .line 593
    return-void
.end method

.method public declared-synchronized reconfigureOutput(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    monitor-enter p0

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureOutput(IILandroid/graphics/Bitmap$Config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 616
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reconfigureOutput(IILandroid/graphics/Bitmap$Config;)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    monitor-enter p0

    .line 630
    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-nez v1, :cond_0

    .line 631
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Access closed worker."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 632
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 633
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid output size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :cond_2
    if-nez p3, :cond_3

    .line 635
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No output configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 636
    :cond_3
    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputWidth:I

    if-ne v1, p1, :cond_4

    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputHeight:I

    if-ne v1, p2, :cond_4

    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputConfig:Landroid/graphics/Bitmap$Config;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, p3, :cond_4

    monitor-exit p0

    .line 637
    return-void

    .line 638
    :cond_4
    :try_start_2
    const-string/jumbo v1, "YuvToBitmapWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reconfigureOutput() - Size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", config : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iput-object p3, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputConfig:Landroid/graphics/Bitmap$Config;

    .line 640
    iput p1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputWidth:I

    .line 641
    iput p2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputHeight:I

    .line 642
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 643
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 644
    iget v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BufferCount:I

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_5

    .line 645
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 644
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    monitor-exit p0

    .line 628
    return-void
.end method

.method public declared-synchronized releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    monitor-enter p0

    .line 655
    if-nez p1, :cond_0

    monitor-exit p0

    .line 656
    return-void

    .line 657
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BufferCount:I

    if-ge v0, v1, :cond_1

    .line 659
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputWidth:I

    if-ne v0, v1, :cond_1

    .line 660
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputHeight:I

    if-ne v0, v1, :cond_1

    .line 661
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputConfig:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 663
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 653
    return-void

    .line 666
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnBitmapAvailableListener(Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    monitor-enter p0

    .line 677
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-eqz v0, :cond_0

    .line 679
    iput-object p1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OnBitmapAvailableListener:Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;

    .line 680
    if-eqz p2, :cond_1

    .end local p2    # "handler":Landroid/os/Handler;
    :goto_0
    iput-object p2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OnBitmapAvailableListenerHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 675
    return-void

    .line 680
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    :try_start_1
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
