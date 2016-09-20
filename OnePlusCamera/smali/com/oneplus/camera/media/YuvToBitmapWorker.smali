.class public Lcom/oneplus/camera/media/YuvToBitmapWorker;
.super Ljava/lang/Object;
.source "YuvToBitmapWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;
    }
.end annotation


# static fields
.field private static final MSG_CONVERT:I = 0x2710

.field private static final MSG_QUIT:I = 0x2711

.field private static final PROFILE:Z = false

.field private static final PROFILE_INTERVAL:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "YuvToBitmapWorker"


# instance fields
.field private final m_BitmapDestRect:Landroid/graphics/Rect;

.field private final m_BitmapScalePaint:Landroid/graphics/Paint;

.field private final m_BitmapSrcRect:Landroid/graphics/Rect;

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
.method public constructor <init>(Landroid/content/Context;IIIIILandroid/graphics/Bitmap$Config;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bufferCount"    # I
    .param p3, "inputWidth"    # I
    .param p4, "inputHeight"    # I
    .param p5, "outputWidth"    # I
    .param p6, "outputHeight"    # I
    .param p7, "outputConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v5, 0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapDestRect:Landroid/graphics/Rect;

    .line 43
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapScalePaint:Landroid/graphics/Paint;

    .line 44
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapSrcRect:Landroid/graphics/Rect;

    .line 53
    iput-boolean v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    .line 55
    new-instance v2, Lcom/oneplus/camera/media/YuvToBitmapWorker$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/media/YuvToBitmapWorker$1;-><init>(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NotifyListenerRunnable:Ljava/lang/Runnable;

    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No context."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_0
    if-gtz p2, :cond_1

    .line 110
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid buffer count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_1
    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    and-int/lit8 v2, p3, 0x3

    if-nez v2, :cond_2

    and-int/lit8 v2, p4, 0x3

    if-eqz v2, :cond_3

    .line 112
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid input size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_3
    if-lez p5, :cond_4

    if-gtz p6, :cond_5

    .line 114
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid output size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_5
    if-nez p7, :cond_6

    .line 116
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No output configuration."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_6
    const-string v2, "YuvToBitmapWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "YuvToBitmapWorker() - Input size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "YuvToBitmapWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "YuvToBitmapWorker() - Output size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", config : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iput p2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BufferCount:I

    .line 123
    iput-object p1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_Context:Landroid/content/Context;

    .line 124
    iput p3, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    .line 125
    iput p4, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    .line 126
    iput-object p7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputConfig:Landroid/graphics/Bitmap$Config;

    .line 127
    iput p5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputWidth:I

    .line 128
    iput p6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputHeight:I

    .line 131
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    .line 132
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v2, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    .line 133
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v2, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    .line 134
    mul-int v2, p3, p4

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v1, v2, 0x2

    .line 135
    .local v1, "nv21BufferSize":I
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_7

    .line 137
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    new-array v3, v1, [B

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-static {p5, p6, p7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 142
    :cond_7
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapScalePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 145
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "YUV-Bitmap worker thread"

    const/4 v4, -0x4

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThread:Landroid/os/HandlerThread;

    .line 146
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 147
    new-instance v2, Lcom/oneplus/camera/media/YuvToBitmapWorker$2;

    iget-object v3, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/oneplus/camera/media/YuvToBitmapWorker$2;-><init>(Lcom/oneplus/camera/media/YuvToBitmapWorker;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThreadHandler:Landroid/os/Handler;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/YuvToBitmapWorker;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->notifyListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/media/YuvToBitmapWorker;[BII)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/YuvToBitmapWorker;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->convert([BII)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/YuvToBitmapWorker;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->quitWorkerThread()V

    return-void
.end method

.method private convert([BII)V
    .locals 9
    .param p1, "nv21Buffer"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v8, 0x0

    .line 309
    const-wide/16 v2, 0x0

    .line 310
    .local v2, "time":J
    monitor-enter p0

    .line 312
    :try_start_0
    iget v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    if-ne v5, p2, :cond_0

    iget v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    if-eq v5, p3, :cond_1

    .line 314
    :cond_0
    const-string v5, "YuvToBitmapWorker"

    const-string v6, "convert() - Input size has been changed"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    monitor-exit p0

    .line 425
    :goto_0
    return-void

    .line 317
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    if-nez v5, :cond_2

    .line 322
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_Context:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/renderscript/RenderScriptManager;->createRenderScript(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    .line 323
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/renderscript/RenderScriptManager;->getRenderScript(Lcom/oneplus/base/Handle;)Landroid/renderscript/RenderScript;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    .line 325
    :cond_2
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Allocation:Landroid/renderscript/Allocation;

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21AllocationWidth:I

    if-ne v5, p2, :cond_3

    iget v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21AllocationHeight:I

    if-eq v5, p3, :cond_7

    .line 328
    :cond_3
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Allocation:Landroid/renderscript/Allocation;

    if-eqz v5, :cond_4

    .line 329
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Allocation:Landroid/renderscript/Allocation;

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->destroy()V

    .line 330
    :cond_4
    new-instance v4, Landroid/renderscript/Type$Builder;

    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 331
    .local v4, "typeBuilder":Landroid/renderscript/Type$Builder;
    array-length v5, p1

    invoke-virtual {v4, v5}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 332
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v4}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Allocation:Landroid/renderscript/Allocation;

    .line 333
    iput p2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21AllocationWidth:I

    .line 334
    iput p3, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21AllocationHeight:I

    .line 337
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaAllocation:Landroid/renderscript/Allocation;

    if-eqz v5, :cond_5

    .line 338
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->destroy()V

    .line 339
    :cond_5
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_6

    .line 340
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 341
    :cond_6
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    .line 342
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaAllocation:Landroid/renderscript/Allocation;

    .line 343
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v8, v8, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 345
    .end local v4    # "typeBuilder":Landroid/renderscript/Type$Builder;
    :cond_7
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_YuvToRgbaScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    if-nez v5, :cond_8

    .line 346
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_YuvToRgbaScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 349
    :cond_8
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Allocation:Landroid/renderscript/Allocation;

    invoke-virtual {v5, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 350
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_YuvToRgbaScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Allocation:Landroid/renderscript/Allocation;

    invoke-virtual {v5, v6}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 351
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_YuvToRgbaScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v5, v6}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 354
    monitor-enter p0

    .line 356
    :try_start_1
    iget v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    if-eq v5, p2, :cond_9

    iget v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    if-ne v5, p3, :cond_a

    .line 357
    :cond_9
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    invoke-interface {v5, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_a
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 362
    monitor-enter p0

    .line 364
    :try_start_2
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 365
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 366
    if-nez v0, :cond_b

    .line 368
    const-string v5, "YuvToBitmapWorker"

    const-string v6, "convert() - No free bitmap"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 317
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 358
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 365
    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5

    .line 373
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, p2, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v5, p3, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_d

    .line 377
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v5, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 409
    :goto_1
    monitor-enter p0

    .line 411
    :try_start_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputWidth:I

    if-ne v5, v6, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputHeight:I

    if-ne v5, v6, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputConfig:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_e

    .line 415
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v5, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OnBitmapAvailableListenerHandler:Landroid/os/Handler;

    if-eqz v5, :cond_c

    .line 417
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OnBitmapAvailableListenerHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NotifyListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    :cond_c
    :goto_2
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v5

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v5

    .line 381
    :cond_d
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaAllocation:Landroid/renderscript/Allocation;

    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 382
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapDestRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 383
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 384
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapSrcRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapDestRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BitmapScalePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 421
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_e
    :try_start_7
    const-string v5, "YuvToBitmapWorker"

    const-string v6, "convert() - Output configuration has been changed"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2
.end method

.method private declared-synchronized notifyListener()V
    .locals 1

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OnBitmapAvailableListener:Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OnBitmapAvailableListener:Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;

    invoke-interface {v0, p0}, Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;->onBitmapAvailable(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :cond_0
    monitor-exit p0

    return-void

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private quitWorkerThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 489
    const-string v0, "YuvToBitmapWorker"

    const-string v1, "quitWorkerThread()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    .line 493
    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RenderScript:Landroid/renderscript/RenderScript;

    .line 496
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 499
    iput-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_RgbaBitmap:Landroid/graphics/Bitmap;

    .line 503
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 504
    return-void
.end method


# virtual methods
.method public declared-synchronized acquireLastBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-eqz v1, :cond_2

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 177
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 178
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BufferCount:I

    if-ge v1, v2, :cond_0

    .line 179
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 173
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 181
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 183
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :goto_1
    monitor-exit p0

    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public declared-synchronized acquireNextBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addMultiPlaneYuvFrame([Lcom/oneplus/camera/media/ImagePlane;)V
    .locals 5
    .param p1, "yuvPlanes"    # [Lcom/oneplus/camera/media/ImagePlane;

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-nez v1, :cond_0

    .line 210
    const-string v1, "YuvToBitmapWorker"

    const-string v2, "addMultiPlaneYuvFrame() - Worker has been closed"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :goto_0
    monitor-exit p0

    return-void

    .line 215
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    array-length v1, p1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 217
    :cond_1
    const-string v1, "YuvToBitmapWorker"

    const-string v2, "addMultiPlaneYuvFrame() - Invalid YUV planes"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 220
    :cond_2
    :try_start_2
    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    if-gtz v1, :cond_4

    .line 222
    :cond_3
    const-string v1, "YuvToBitmapWorker"

    const-string v2, "addMultiPlaneYuvFrame() - Input size is 0, ignore"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 228
    .local v0, "nv21Buffer":[B
    if-nez v0, :cond_5

    .line 230
    const-string v1, "YuvToBitmapWorker"

    const-string v2, "addMultiPlaneYuvFrame() - No available internal NV21 buffer"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_5
    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    iget v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/oneplus/camera/media/YuvUtils;->multiPlaneYuvToNV21([Lcom/oneplus/camera/media/ImagePlane;[BII)V

    .line 238
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x2710

    iget v3, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    iget v4, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized addNV21Frame([B)V
    .locals 6
    .param p1, "nv21Frame"    # [B

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-nez v2, :cond_0

    .line 251
    const-string v2, "YuvToBitmapWorker"

    const-string v3, "addNV21Frame() - Worker has been closed"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :goto_0
    monitor-exit p0

    return-void

    .line 256
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    iget v3, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v0, v2, 0x2

    .line 257
    .local v0, "dataSize":I
    if-gtz v0, :cond_1

    .line 259
    const-string v2, "YuvToBitmapWorker"

    const-string v3, "addNV21Frame() - Input size is 0, ignore"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
    .end local v0    # "dataSize":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 262
    .restart local v0    # "dataSize":I
    :cond_1
    if-eqz p1, :cond_2

    :try_start_2
    array-length v2, p1

    if-ge v2, v0, :cond_3

    .line 264
    :cond_2
    const-string v2, "YuvToBitmapWorker"

    const-string v3, "addNV21Frame() - Invalid YUV data size"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 270
    .local v1, "nv21Buffer":[B
    if-nez v1, :cond_4

    .line 272
    const-string v2, "YuvToBitmapWorker"

    const-string v3, "addNV21Frame() - No available internal NV21 buffer"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x2710

    iget v4, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    iget v5, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    invoke-static {v2, v3, v4, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 302
    :goto_0
    monitor-exit p0

    return-void

    .line 290
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    .line 293
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_WorkerThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OnBitmapAvailableListener:Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;

    .line 299
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 300
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 301
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInputHeight()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    return v0
.end method

.method public getInputWidth()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    return v0
.end method

.method public getOutputConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getOutputHeight()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputHeight:I

    return v0
.end method

.method public getOutputWidth()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputWidth:I

    return v0
.end method

.method public declared-synchronized reconfigureInput(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-nez v2, :cond_0

    .line 515
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Access closed worker."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 516
    :cond_0
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    and-int/lit8 v2, p1, 0x3

    if-nez v2, :cond_1

    and-int/lit8 v2, p2, 0x3

    if-eqz v2, :cond_2

    .line 517
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid input size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 518
    :cond_2
    iget v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    if-ne v2, p1, :cond_4

    iget v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, p2, :cond_4

    .line 527
    :cond_3
    monitor-exit p0

    return-void

    .line 520
    :cond_4
    :try_start_2
    const-string v2, "YuvToBitmapWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reconfigureInput() - Size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v0, v2, 0x2

    .line 522
    .local v0, "bufferSize":I
    iput p1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputWidth:I

    .line 523
    iput p2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_InputHeight:I

    .line 524
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 525
    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BufferCount:I

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_3

    .line 526
    iget-object v2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_NV21Buffers:Ljava/util/Queue;

    new-array v3, v0, [B

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 525
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public declared-synchronized reconfigureOutput(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureOutput(IILandroid/graphics/Bitmap$Config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    monitor-exit p0

    return-void

    .line 537
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
    .line 549
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-nez v1, :cond_0

    .line 550
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Access closed worker."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 551
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 552
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid output size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 553
    :cond_2
    if-nez p3, :cond_3

    .line 554
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No output configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 555
    :cond_3
    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputWidth:I

    if-ne v1, p1, :cond_5

    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputHeight:I

    if-ne v1, p2, :cond_5

    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputConfig:Landroid/graphics/Bitmap$Config;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, p3, :cond_5

    .line 565
    :cond_4
    monitor-exit p0

    return-void

    .line 557
    :cond_5
    :try_start_2
    const-string v1, "YuvToBitmapWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reconfigureOutput() - Size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", config : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iput-object p3, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputConfig:Landroid/graphics/Bitmap$Config;

    .line 559
    iput p1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputWidth:I

    .line 560
    iput p2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputHeight:I

    .line 561
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 562
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_ConvertedBitmaps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 563
    iget v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BufferCount:I

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_4

    .line 564
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 563
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 574
    monitor-enter p0

    if-nez p1, :cond_0

    .line 586
    :goto_0
    monitor-exit p0

    return-void

    .line 576
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_BufferCount:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputWidth:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputHeight:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OutputConfig:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 582
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_FreeBitmaps:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 585
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setOnBitmapAvailableListener(Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 596
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_IsActive:Z

    if-eqz v0, :cond_0

    .line 598
    iput-object p1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OnBitmapAvailableListener:Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;

    .line 599
    if-eqz p2, :cond_1

    .end local p2    # "handler":Landroid/os/Handler;
    :goto_0
    iput-object p2, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker;->m_OnBitmapAvailableListenerHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :cond_0
    monitor-exit p0

    return-void

    .line 599
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    :try_start_1
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 596
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
