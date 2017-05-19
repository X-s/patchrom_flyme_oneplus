.class public Landroid/hardware/camera2/legacy/LegacyCameraDevice;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final DEBUG:Z = false

.field private static final GRALLOC_USAGE_HW_COMPOSER:I = 0x800

.field private static final GRALLOC_USAGE_HW_RENDER:I = 0x200

.field private static final GRALLOC_USAGE_HW_TEXTURE:I = 0x100

.field private static final GRALLOC_USAGE_HW_VIDEO_ENCODER:I = 0x10000

.field private static final GRALLOC_USAGE_RENDERSCRIPT:I = 0x100000

.field private static final GRALLOC_USAGE_SW_READ_OFTEN:I = 0x3

.field private static final ILLEGAL_VALUE:I = -0x1

.field public static final MAX_DIMEN_FOR_ROUNDING:I = 0x780

.field public static final NATIVE_WINDOW_SCALING_MODE_SCALE_TO_WINDOW:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mCallbackHandlerThread:Landroid/os/HandlerThread;

.field private final mCameraId:I

.field private mClosed:Z

.field private mConfiguredSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

.field private final mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field private final mIdle:Landroid/os/ConditionVariable;

.field private final mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

.field private final mResultHandler:Landroid/os/Handler;

.field private final mResultThread:Landroid/os/HandlerThread;

.field private final mStateListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

.field private final mStaticCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;


# direct methods
.method public constructor <init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/ICameraDeviceCallbacks;)V
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;
    .param p3, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p4, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-direct {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 70
    iput-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mClosed:Z

    .line 72
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ResultThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CallbackThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    .line 107
    new-instance v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStateListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    .line 264
    iput p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCameraId:I

    .line 265
    iput-object p4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

    .line 266
    const-string v0, "CameraDevice-%d-LE"

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCameraId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 269
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultHandler:Landroid/os/Handler;

    .line 270
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 271
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandler:Landroid/os/Handler;

    .line 272
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStateListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCameraDeviceCallbacks(Landroid/os/Handler;Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;)V

    .line 273
    iput-object p3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStaticCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 274
    new-instance v0, Landroid/hardware/camera2/legacy/RequestThreadManager;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/hardware/camera2/legacy/RequestThreadManager;-><init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 276
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->start()V

    .line 277
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyCameraDevice;
    .param p1, "x1"    # Landroid/hardware/camera2/legacy/RequestHolder;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getExtrasFromRequest(Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static configureSurface(Landroid/view/Surface;III)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 620
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string/jumbo v0, "width must be positive."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 622
    const-string v0, "height must be positive."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 624
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeConfigureSurface(Landroid/view/Surface;III)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 626
    return-void
.end method

.method static containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z
    .locals 3
    .param p0, "s"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceId(Landroid/view/Surface;)J

    move-result-wide v0

    .line 679
    .local v0, "id":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static detectSurfaceDataspace(Landroid/view/Surface;)I
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 614
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectSurfaceDataspace(Landroid/view/Surface;)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    move-result v0

    return v0
.end method

.method public static detectSurfaceType(Landroid/view/Surface;)I
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectSurfaceType(Landroid/view/Surface;)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    move-result v0

    return v0
.end method

.method static detectSurfaceUsageFlags(Landroid/view/Surface;)I
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;

    .prologue
    .line 598
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)I

    move-result v0

    return v0
.end method

.method static findClosestSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;
    .locals 10
    .param p0, "size"    # Landroid/util/Size;
    .param p1, "supportedSizes"    # [Landroid/util/Size;

    .prologue
    .line 512
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 513
    :cond_0
    const/4 p0, 0x0

    .line 525
    .end local p0    # "size":Landroid/util/Size;
    :cond_1
    :goto_0
    return-object p0

    .line 515
    .restart local p0    # "size":Landroid/util/Size;
    :cond_2
    const/4 v1, 0x0

    .line 516
    .local v1, "bestSize":Landroid/util/Size;
    move-object v0, p1

    .local v0, "arr$":[Landroid/util/Size;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .line 517
    .local v4, "s":Landroid/util/Size;
    invoke-virtual {v4, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 519
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    const/16 v6, 0x780

    if-gt v5, v6, :cond_4

    if-eqz v1, :cond_3

    invoke-static {p0, v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->findEuclidDistSquare(Landroid/util/Size;Landroid/util/Size;)J

    move-result-wide v6

    invoke-static {v1, v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->findEuclidDistSquare(Landroid/util/Size;Landroid/util/Size;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    .line 522
    :cond_3
    move-object v1, v4

    .line 516
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4    # "s":Landroid/util/Size;
    :cond_5
    move-object p0, v1

    .line 525
    goto :goto_0
.end method

.method static findEuclidDistSquare(Landroid/util/Size;Landroid/util/Size;)J
    .locals 8
    .param p0, "a"    # Landroid/util/Size;
    .param p1, "b"    # Landroid/util/Size;

    .prologue
    .line 504
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-long v0, v4

    .line 505
    .local v0, "d0":J
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 506
    .local v2, "d1":J
    mul-long v4, v0, v0

    mul-long v6, v2, v2

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private getExtrasFromRequest(Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;
    .locals 9
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v1, Landroid/hardware/camera2/impl/CaptureResultExtras;

    const-wide/16 v6, -0x1

    move v3, v2

    move v4, v2

    move v5, v2

    move v8, v2

    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(IIIIJI)V

    .line 98
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/hardware/camera2/impl/CaptureResultExtras;

    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequestId()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestHolder;->getSubsequeceId()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v6

    const/4 v8, 0x1

    move v5, v4

    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(IIIIJI)V

    goto :goto_0
.end method

.method static getSurfaceId(Landroid/view/Surface;)J
    .locals 2
    .param p0, "surface"    # Landroid/view/Surface;

    .prologue
    .line 657
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeGetSurfaceId(Landroid/view/Surface;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getSurfaceIds(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    .local p0, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    if-nez p0, :cond_0

    .line 663
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Null argument surfaces"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 665
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v4, "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 667
    .local v1, "s":Landroid/view/Surface;
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceId(Landroid/view/Surface;)J

    move-result-wide v2

    .line 668
    .local v2, "id":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .line 669
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Configured surface had null native GraphicBufferProducer pointer!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 672
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 674
    .end local v1    # "s":Landroid/view/Surface;
    .end local v2    # "id":J
    :cond_2
    return-object v4
.end method

.method public static getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;
    .locals 4
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 540
    .local v0, "dimens":[I
    invoke-static {p0, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectSurfaceDimens(Landroid/view/Surface;[I)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 542
    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method static getTextureSize(Landroid/graphics/SurfaceTexture;)Landroid/util/Size;
    .locals 4
    .param p0, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 694
    .local v0, "dimens":[I
    invoke-static {p0, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectTextureDimens(Landroid/graphics/SurfaceTexture;[I)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 697
    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public static isFlexibleConsumer(Landroid/view/Surface;)Z
    .locals 5
    .param p0, "output"    # Landroid/view/Surface;

    .prologue
    .line 546
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceUsageFlags(Landroid/view/Surface;)I

    move-result v3

    .line 550
    .local v3, "usageFlags":I
    const/high16 v1, 0x110000

    .line 551
    .local v1, "disallowedFlags":I
    const/16 v0, 0x903

    .line 553
    .local v0, "allowedFlags":I
    and-int v4, v3, v1

    if-nez v4, :cond_0

    and-int v4, v3, v0

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 555
    .local v2, "flexibleConsumer":Z
    :goto_0
    return v2

    .line 553
    .end local v2    # "flexibleConsumer":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPreviewConsumer(Landroid/view/Surface;)Z
    .locals 8
    .param p0, "output"    # Landroid/view/Surface;

    .prologue
    .line 559
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceUsageFlags(Landroid/view/Surface;)I

    move-result v5

    .line 560
    .local v5, "usageFlags":I
    const v1, 0x110003

    .line 562
    .local v1, "disallowedFlags":I
    const/16 v0, 0xb00

    .line 564
    .local v0, "allowedFlags":I
    and-int v6, v5, v1

    if-nez v6, :cond_0

    and-int v6, v5, v0

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    .line 566
    .local v3, "previewConsumer":Z
    :goto_0
    const/4 v4, 0x0

    .line 568
    .local v4, "surfaceFormat":I
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 573
    return v3

    .line 564
    .end local v3    # "previewConsumer":Z
    .end local v4    # "surfaceFormat":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 569
    .restart local v3    # "previewConsumer":Z
    .restart local v4    # "surfaceFormat":I
    :catch_0
    move-exception v2

    .line 570
    .local v2, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Surface was abandoned"

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static isVideoEncoderConsumer(Landroid/view/Surface;)Z
    .locals 8
    .param p0, "output"    # Landroid/view/Surface;

    .prologue
    .line 577
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceUsageFlags(Landroid/view/Surface;)I

    move-result v4

    .line 578
    .local v4, "usageFlags":I
    const v1, 0x100903

    .line 580
    .local v1, "disallowedFlags":I
    const/high16 v0, 0x10000

    .line 581
    .local v0, "allowedFlags":I
    and-int v6, v4, v1

    if-nez v6, :cond_0

    and-int v6, v4, v0

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    .line 584
    .local v5, "videoEncoderConsumer":Z
    :goto_0
    const/4 v3, 0x0

    .line 586
    .local v3, "surfaceFormat":I
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 591
    return v5

    .line 581
    .end local v3    # "surfaceFormat":I
    .end local v5    # "videoEncoderConsumer":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 587
    .restart local v3    # "surfaceFormat":I
    .restart local v5    # "videoEncoderConsumer":Z
    :catch_0
    move-exception v2

    .line 588
    .local v2, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Surface was abandoned"

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static native nativeConfigureSurface(Landroid/view/Surface;III)I
.end method

.method private static native nativeDetectSurfaceDataspace(Landroid/view/Surface;)I
.end method

.method private static native nativeDetectSurfaceDimens(Landroid/view/Surface;[I)I
.end method

.method private static native nativeDetectSurfaceType(Landroid/view/Surface;)I
.end method

.method private static native nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)I
.end method

.method private static native nativeDetectTextureDimens(Landroid/graphics/SurfaceTexture;[I)I
.end method

.method static native nativeGetJpegFooterSize()I
.end method

.method private static native nativeGetSurfaceId(Landroid/view/Surface;)J
.end method

.method private static native nativeProduceFrame(Landroid/view/Surface;[BIII)I
.end method

.method private static native nativeSetNextTimestamp(Landroid/view/Surface;J)I
.end method

.method private static native nativeSetScalingMode(Landroid/view/Surface;I)I
.end method

.method private static native nativeSetSurfaceDimens(Landroid/view/Surface;II)I
.end method

.method private static native nativeSetSurfaceFormat(Landroid/view/Surface;I)I
.end method

.method private static native nativeSetSurfaceOrientation(Landroid/view/Surface;II)I
.end method

.method static needsConversion(Landroid/view/Surface;)Z
    .locals 2
    .param p0, "s"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I

    move-result v0

    .line 244
    .local v0, "nativeType":I
    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const v1, 0x32315659

    if-eq v0, v1, :cond_0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static produceFrame(Landroid/view/Surface;[BIII)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "pixelBuffer"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pixelFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 631
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string/jumbo v0, "width must be positive."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 634
    const-string v0, "height must be positive."

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 636
    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeProduceFrame(Landroid/view/Surface;[BIII)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 638
    return-void
.end method

.method static setNextTimestamp(Landroid/view/Surface;J)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 702
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetNextTimestamp(Landroid/view/Surface;J)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 704
    return-void
.end method

.method static setScalingMode(Landroid/view/Surface;I)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 708
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetScalingMode(Landroid/view/Surface;I)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 710
    return-void
.end method

.method static setSurfaceDimens(Landroid/view/Surface;II)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 649
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string/jumbo v0, "width must be positive."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 651
    const-string v0, "height must be positive."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 653
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetSurfaceDimens(Landroid/view/Surface;II)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 654
    return-void
.end method

.method static setSurfaceFormat(Landroid/view/Surface;I)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "pixelFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 642
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetSurfaceFormat(Landroid/view/Surface;I)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 645
    return-void
.end method

.method static setSurfaceOrientation(Landroid/view/Surface;II)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "facing"    # I
    .param p2, "sensorOrientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 684
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetSurfaceOrientation(Landroid/view/Surface;II)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 687
    return-void
.end method


# virtual methods
.method public cancelRequest(I)J
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    .line 441
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->cancelRepeating(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 471
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->quit()V

    .line 472
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 473
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 476
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 489
    :goto_1
    iput-boolean v6, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mClosed:Z

    .line 490
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "Thread %s (%d) interrupted while quitting."

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 485
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "Thread %s (%d) interrupted while quitting."

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public configureOutputs(Ljava/util/List;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v7, "sizedSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    if-eqz p1, :cond_7

    .line 293
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    .line 294
    .local v4, "output":Landroid/view/Surface;
    if-nez v4, :cond_0

    .line 295
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string v13, "configureOutputs - null outputs are not allowed"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/16 v12, -0x16

    .line 362
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "output":Landroid/view/Surface;
    :goto_1
    return v12

    .line 298
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "output":Landroid/view/Surface;
    :cond_0
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v12

    if-nez v12, :cond_1

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string v13, "configureOutputs - invalid output surfaces are not allowed"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/16 v12, -0x16

    goto :goto_1

    .line 302
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStaticCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v12, v13}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 307
    .local v9, "streamConfigurations":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_start_0
    invoke-static {v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    .line 308
    .local v6, "s":Landroid/util/Size;
    invoke-static {v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I

    move-result v11

    .line 310
    .local v11, "surfaceType":I
    invoke-static {v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isFlexibleConsumer(Landroid/view/Surface;)Z

    move-result v2

    .line 312
    .local v2, "flexibleConsumer":Z
    invoke-virtual {v9, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v8

    .line 313
    .local v8, "sizes":[Landroid/util/Size;
    if-nez v8, :cond_2

    .line 315
    const/4 v12, 0x1

    if-lt v11, v12, :cond_3

    const/4 v12, 0x5

    if-gt v11, v12, :cond_3

    .line 321
    const/16 v12, 0x23

    invoke-virtual {v9, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v8

    .line 327
    :cond_2
    :goto_2
    invoke-static {v8, v6}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 328
    if-eqz v2, :cond_4

    invoke-static {v6, v8}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->findClosestSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 329
    new-instance v12, Landroid/util/Pair;

    invoke-direct {v12, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :goto_3
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v13

    invoke-static {v4, v12, v13}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceDimens(Landroid/view/Surface;II)V
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    .end local v2    # "flexibleConsumer":Z
    .end local v6    # "s":Landroid/util/Size;
    .end local v8    # "sizes":[Landroid/util/Size;
    .end local v11    # "surfaceType":I
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string v13, "Surface bufferqueue is abandoned, cannot configure as output: "

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    const/16 v12, -0x16

    goto :goto_1

    .line 322
    .end local v1    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .restart local v2    # "flexibleConsumer":Z
    .restart local v6    # "s":Landroid/util/Size;
    .restart local v8    # "sizes":[Landroid/util/Size;
    .restart local v11    # "surfaceType":I
    :cond_3
    const/16 v12, 0x21

    if-ne v11, v12, :cond_2

    .line 323
    const/16 v12, 0x100

    :try_start_1
    invoke-virtual {v9, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v8

    goto :goto_2

    .line 331
    :cond_4
    if-nez v8, :cond_5

    const-string v5, "format is invalid."

    .line 333
    .local v5, "reason":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string v13, "Surface with size (w=%d, h=%d) and format 0x%x is not valid, %s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    aput-object v5, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/16 v12, -0x16

    goto/16 :goto_1

    .line 331
    .end local v5    # "reason":Ljava/lang/String;
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "size not in valid set: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 339
    :cond_6
    new-instance v12, Landroid/util/Pair;

    invoke-direct {v12, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 351
    .end local v2    # "flexibleConsumer":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "output":Landroid/view/Surface;
    .end local v6    # "s":Landroid/util/Size;
    .end local v8    # "sizes":[Landroid/util/Size;
    .end local v9    # "streamConfigurations":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v11    # "surfaceType":I
    :cond_7
    const/4 v10, 0x0

    .line 352
    .local v10, "success":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-virtual {v12}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setConfiguring()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 353
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v12, v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->configure(Ljava/util/Collection;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-virtual {v12}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setIdle()Z

    move-result v10

    .line 357
    :cond_8
    if-eqz v10, :cond_a

    .line 358
    if-eqz p1, :cond_9

    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_5
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Ljava/util/List;

    .line 362
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 358
    :cond_9
    const/4 v12, 0x0

    goto :goto_5

    .line 360
    :cond_a
    const/16 v12, -0x26

    goto/16 :goto_1
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 495
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->close()V
    :try_end_0
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 501
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got error while trying to finalize, ignoring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public flush()J
    .locals 3

    .prologue
    .line 457
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->flush()J

    move-result-wide v0

    .line 458
    .local v0, "lastFrame":J
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->waitUntilIdle()V

    .line 459
    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mClosed:Z

    return v0
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;ZLandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "repeating"    # Z
    .param p3, "frameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;

    .prologue
    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v0, "requestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {p0, v0, p2, p3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    move-result v1

    return v1
.end method

.method public submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 8
    .param p2, "repeating"    # Z
    .param p3, "frameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;Z",
            "Landroid/hardware/camera2/utils/LongParcelable;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/16 v5, -0x16

    .line 378
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 379
    :cond_0
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "submitRequestList - Empty/null requests are not allowed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_0
    return v5

    .line 383
    :cond_1
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Ljava/util/List;

    if-nez v6, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v4, "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 388
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 389
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "submitRequestList - Each request must have at least one Surface target"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v4    # "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Ljava/util/List;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceIds(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    goto :goto_1

    .line 394
    .restart local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v4    # "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 395
    .local v3, "surface":Landroid/view/Surface;
    if-nez v3, :cond_6

    .line 396
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "submitRequestList - Null Surface targets are not allowed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    :cond_6
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Ljava/util/List;

    if-nez v6, :cond_7

    .line 399
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "submitRequestList - must configure  device with valid surfaces before submitting requests"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/16 v5, -0x26

    goto :goto_0

    .line 402
    :cond_7
    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 403
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "submitRequestList - cannot use a surface that wasn\'t configured"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "surface":Landroid/view/Surface;
    :cond_8
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;

    invoke-virtual {v5}, Landroid/os/ConditionVariable;->close()V

    .line 411
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v5, p1, p2, p3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->submitCaptureRequests(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    move-result v5

    goto :goto_0
.end method

.method public waitUntilIdle()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 449
    return-void
.end method
