.class public final Lcom/oneplus/camera/panorama/PanoramaController;
.super Lcom/oneplus/camera/ModeController;
.source "PanoramaController.java"

# interfaces
.implements Lcom/oneplus/camera/PhotoCaptureHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/ModeController",
        "<",
        "Lcom/oneplus/camera/panorama/PanoramaUI;",
        ">;",
        "Lcom/oneplus/camera/PhotoCaptureHandler;"
    }
.end annotation


# static fields
.field static final DIRECTION_AUTO:I = 0x0

.field static final DIRECTION_DOWN:I = 0x12

.field static final DIRECTION_LEFT:I = 0x21

.field static final DIRECTION_RIGHT:I = 0x11

.field static final DIRECTION_UP:I = 0x22

.field private static final DURATION_FAIL_TO_ADD_FRAMES_TIMEOUT:J = 0xbb8L

.field private static final EXTRA_TARGET_SIZE:I = 0x438

.field private static final MSG_FAIL_TO_ADD_FRAMES:I = 0x272e

.field static final MSG_GYROSCOPE_CHANGED:I = 0x2724

.field private static final MSG_RESTORE_MOVING_SPEED_STATE:I = 0x2738

.field static final MSG_SET_DIRECTION:I = 0x2710

.field static final MSG_SET_PREVIEW_FRAME_SIZE:I = 0x271a

.field static final MSG_STOP_CAPTURE:I = 0x2711

.field private static final RATIO_FRAME_THUMB_SCALE:I = 0x4

.field private static final RATIO_RESULT_LONG_SIDE:F = 6.27f

.field private static final RATIO_RESULT_SHORT_SIDE:F = 1.0f

.field public static final RESULT_BIG_DISPLACEMENT:I = -0xc

.field public static final RESULT_INVALID_ARGUMENT:I = -0x2

.field public static final RESULT_INVALID_STATE:I = -0x3

.field public static final RESULT_MOVE_TOO_FAST:I = -0xb

.field private static final RESULT_PADDING_X:I = 0x0

.field private static final RESULT_PADDING_Y:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_UNKNOWN_ERROR:I = -0x1

.field public static final RESULT_WRONG_DIRECTION:I = -0xa

.field private static final SAVE_YUV_DIRECTLY:Z = false

.field private static final THRESHOLD_DISPLACEMENT_WARNING:F = 0.05f

.field private static final THRESHOLD_MOVE_TOO_FAST_ENTER:F = 1.5f

.field private static final THRESHOLD_MOVE_TOO_FAST_EXIT:F = 1.3f

.field private static final THRESHOLD_RESTORE_MOVING_SPEED:J = 0x1f4L

.field private static final THRESHOLD_SMALL_ROTATION_ANGLE:F = 2.0f


# instance fields
.field private m_AELockHandle:Lcom/oneplus/base/Handle;

.field private m_AwbLockHandle:Lcom/oneplus/base/Handle;

.field private m_Camera:Lcom/oneplus/camera/Camera;

.field private m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

.field private m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

.field private m_CaptureRotation:Lcom/oneplus/base/Rotation;

.field private final m_Corrections:[I

.field private m_Direction:I

.field private m_Engine:J

.field private m_ExposureController:Lcom/oneplus/camera/ExposureController;

.field private m_FocusController:Lcom/oneplus/camera/FocusController;

.field private m_FocusLockHandle:Lcom/oneplus/base/Handle;

.field private m_FrameHeight:I

.field private m_FrameWidth:I

.field private final m_GyroFrameOffsets:[F

.field private m_IsCapturing:Z

.field private m_IsFirstFrame:Z

.field private m_IsMovingTooFast:Z

.field private m_LastFrameAddTime:J

.field private m_LastGyroscopeChangeTime:J

.field private m_Location:Landroid/location/Location;

.field private m_OutputOrientation:I

.field private final m_PartialRotatedAngles:[F

.field private final m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PreviewFrameBitmapAvailListener:Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;

.field private m_PreviewFrameHeight:I

.field private final m_PreviewFrameReceivedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewFrameWidth:I

.field private final m_PreviewSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private m_ResultSize:[I

.field private final m_RotatedAngles:[F

.field private final m_SensorCropRegion:Landroid/graphics/Rect;

.field private m_SensorSizeFull:Landroid/util/Size;

.field private m_TargetHeight:I

.field private m_TargetWidth:I

.field private m_UsePreviewFramesToStitch:Z

.field private m_WhiteBalanceController:Lcom/oneplus/camera/WhiteBalanceController;

.field private m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 4
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 175
    const-string v0, "Panorama controller"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/ModeController;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;)V

    .line 94
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    .line 95
    const/16 v0, 0x22

    iput v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    .line 103
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_GyroFrameOffsets:[F

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsFirstFrame:Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Location:Landroid/location/Location;

    .line 110
    const/16 v0, 0x5a

    iput v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_OutputOrientation:I

    .line 111
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    .line 112
    iput v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    .line 113
    iput v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    .line 114
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    .line 115
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_SensorCropRegion:Landroid/graphics/Rect;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z

    .line 125
    new-instance v0, Lcom/oneplus/camera/panorama/PanoramaController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/panorama/PanoramaController$1;-><init>(Lcom/oneplus/camera/panorama/PanoramaController;)V

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 140
    new-instance v0, Lcom/oneplus/camera/panorama/PanoramaController$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/panorama/PanoramaController$2;-><init>(Lcom/oneplus/camera/panorama/PanoramaController;)V

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 148
    new-instance v0, Lcom/oneplus/camera/panorama/PanoramaController$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/panorama/PanoramaController$3;-><init>(Lcom/oneplus/camera/panorama/PanoramaController;)V

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 162
    new-instance v0, Lcom/oneplus/camera/panorama/PanoramaController$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/panorama/PanoramaController$4;-><init>(Lcom/oneplus/camera/panorama/PanoramaController;)V

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameBitmapAvailListener:Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/panorama/PanoramaController;)Lcom/oneplus/camera/media/YuvToBitmapWorker;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaController;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaController;->onFrameCaptured(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/panorama/PanoramaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaController;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsCapturing:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/camera/panorama/PanoramaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaController;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaController;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaController;->onPreviewFrameReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/camera/panorama/PanoramaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->onPreviewFrameBitmapAvailable()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/camera/panorama/PanoramaController;)Lcom/oneplus/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    return-object v0
.end method

.method static synthetic access$602(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/Camera;)Lcom/oneplus/camera/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaController;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaController;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaController;->restoreCameraParams(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/camera/panorama/PanoramaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaController;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/panorama/PanoramaController;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaController;->setupCameraParams(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method private static native addFrame(J[B[F[I[IZ)I
.end method

.method private completeCapture(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    const/4 v3, 0x0

    .line 317
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v1, "completeCapture()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-wide v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    invoke-static {v0, v1}, Lcom/oneplus/camera/panorama/PanoramaController;->destroyEngine(J)V

    .line 321
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    .line 324
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->isUILinked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v0

    const/16 v1, 0x2714

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AELockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AELockHandle:Lcom/oneplus/base/Handle;

    .line 331
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AwbLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AwbLockHandle:Lcom/oneplus/base/Handle;

    .line 332
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    .line 335
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->completeCapture(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;)Z

    .line 338
    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsFirstFrame:Z

    .line 340
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v1, "completeCapture() - No UI to notify"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native createEngine(IIIII)J
.end method

.method private static native destroyEngine(J)V
.end method

.method private static synchronized native declared-synchronized initializeEngine()Z
.end method

.method private onFrameCaptured(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 31
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v3, "onFrameCaptured()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v15

    .line 477
    .local v15, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-eqz v15, :cond_0

    array-length v2, v15

    if-nez v2, :cond_2

    .line 479
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v3, "onFrameCaptured() - Invalid YUV frame, ignore"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_1
    :goto_0
    return-void

    .line 484
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsFirstFrame:Z

    if-eqz v2, :cond_3

    .line 486
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsFirstFrame:Z

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraThread;->playDefaultShutterSound()V

    .line 492
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v16

    .line 493
    .local v16, "pictureSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_SensorCropRegion:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_SensorCropRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_SensorSizeFull:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_SensorSizeFull:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_SensorCropRegion:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/Camera;->calculateViewAngles(Landroid/graphics/Rect;I)Landroid/util/SizeF;

    move-result-object v29

    .line 496
    .local v29, "viewAngles":Landroid/util/SizeF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_GyroFrameOffsets:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    mul-float/2addr v4, v5

    invoke-virtual/range {v29 .. v29}, Landroid/util/SizeF;->getWidth()F

    move-result v5

    div-float/2addr v4, v5

    neg-float v4, v4

    aput v4, v2, v3

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_GyroFrameOffsets:[F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    mul-float/2addr v4, v5

    invoke-virtual/range {v29 .. v29}, Landroid/util/SizeF;->getHeight()F

    move-result v5

    div-float/2addr v4, v5

    aput v4, v2, v3

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x0

    aget v18, v2, v3

    .line 501
    .local v18, "prevResultWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x1

    aget v17, v2, v3

    .line 502
    .local v17, "prevResultHeight":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    const/4 v4, 0x0

    aget-object v4, v15, v4

    invoke-virtual {v4}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_GyroFrameOffsets:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/oneplus/camera/panorama/PanoramaController;->addFrame(J[B[F[I[IZ)I

    move-result v21

    .line 503
    .local v21, "result":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int v25, v2, v18

    .line 504
    .local v25, "resultWidthDiff":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v23, v2, v17

    .line 505
    .local v23, "resultHeightDiff":I
    if-eqz v25, :cond_c

    const/16 v24, 0x1

    .line 506
    .local v24, "resultWidthChanged":Z
    :goto_1
    if-eqz v23, :cond_d

    const/16 v22, 0x1

    .line 507
    .local v22, "resultHeightChanged":Z
    :goto_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_LastFrameAddTime:J

    .line 508
    .local v12, "lastFrameAddTime":J
    if-nez v24, :cond_4

    if-eqz v22, :cond_5

    .line 510
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v3, "onFrameCaptured() - Result size changed to "

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "x"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v3, "onFrameCaptured() - Target size "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "x"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 514
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    sparse-switch v2, :sswitch_data_0

    .line 522
    move/from16 v28, v24

    .line 523
    .local v28, "updatePreviewFrame":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_f

    const/4 v11, 0x1

    .line 526
    .local v11, "isSmallRotationAngle":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v2, :cond_10

    if-eqz v28, :cond_10

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v3}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->addNV21Frame([B)V

    .line 534
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    const/4 v3, 0x1

    aget v4, v2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    const/4 v3, 0x2

    aget v4, v2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 540
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_LastFrameAddTime:J

    .line 541
    if-eqz v11, :cond_5

    .line 542
    const/16 v21, 0x0

    .line 546
    .end local v11    # "isSmallRotationAngle":Z
    .end local v28    # "updatePreviewFrame":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-eqz v2, :cond_7

    .line 548
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v3, "onFrameCaptured() - Corrections : ("

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ", "

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, ")"

    invoke-static/range {v2 .. v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 550
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    sparse-switch v2, :sswitch_data_1

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    int-to-float v3, v3

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    if-ge v2, v3, :cond_13

    .line 561
    const/4 v10, 0x0

    .line 566
    .local v10, "displacement":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v2

    const/16 v3, 0x2724

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v10, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 571
    .end local v10    # "displacement":I
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    sparse-switch v2, :sswitch_data_2

    .line 589
    if-nez v24, :cond_1a

    .line 590
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    .line 602
    .local v14, "moveTooFast":Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    if-eq v2, v14, :cond_8

    .line 604
    if-eqz v14, :cond_1f

    .line 606
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    .line 607
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2738

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v2

    const/16 v3, 0x2725

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 615
    :cond_8
    :goto_7
    const/4 v9, 0x0

    .line 616
    .local v9, "causedByError":Z
    const/4 v2, -0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_9

    .line 617
    const/16 v21, -0xa

    .line 618
    :cond_9
    sparse-switch v21, :sswitch_data_3

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFrameCaptured() - Fail to add frame, result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/16 v27, 0x0

    .line 648
    .local v27, "stopImmediately":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    sparse-switch v2, :sswitch_data_4

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    if-ge v2, v3, :cond_a

    .line 658
    const/16 v27, 0x1

    .line 661
    :cond_a
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x272e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x272e

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 663
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v2

    const/16 v3, 0x2712

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-static {v2, v3, v0, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 664
    if-eqz v27, :cond_1

    .line 666
    const/4 v9, 0x1

    .line 671
    .end local v27    # "stopImmediately":Z
    :goto_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/oneplus/camera/panorama/PanoramaController;->stopCapture(ZZ)V

    goto/16 :goto_0

    .line 505
    .end local v9    # "causedByError":Z
    .end local v12    # "lastFrameAddTime":J
    .end local v14    # "moveTooFast":Z
    .end local v22    # "resultHeightChanged":Z
    .end local v24    # "resultWidthChanged":Z
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 506
    .restart local v24    # "resultWidthChanged":Z
    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 518
    .restart local v12    # "lastFrameAddTime":J
    .restart local v22    # "resultHeightChanged":Z
    :sswitch_0
    move/from16 v28, v22

    .line 519
    .restart local v28    # "updatePreviewFrame":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_e

    const/4 v11, 0x1

    .line 520
    .restart local v11    # "isSmallRotationAngle":Z
    :goto_a
    goto/16 :goto_3

    .line 519
    .end local v11    # "isSmallRotationAngle":Z
    :cond_e
    const/4 v11, 0x0

    goto :goto_a

    .line 523
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 530
    .restart local v11    # "isSmallRotationAngle":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    int-to-float v3, v3

    div-float v19, v2, v3

    .line 531
    .local v19, "relativeCorrX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    int-to-float v3, v3

    div-float v20, v2, v3

    .line 532
    .local v20, "relativeCorrY":F
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v2

    const/16 v3, 0x2711

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/16 v30, 0x0

    aput v19, v8, v30

    const/16 v30, 0x1

    aput v20, v8, v30

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto/16 :goto_4

    .line 554
    .end local v11    # "isSmallRotationAngle":Z
    .end local v19    # "relativeCorrX":F
    .end local v20    # "relativeCorrY":F
    .end local v28    # "updatePreviewFrame":Z
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    int-to-float v3, v3

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    if-ge v2, v3, :cond_11

    .line 555
    const/4 v10, 0x0

    .restart local v10    # "displacement":I
    goto/16 :goto_5

    .line 557
    .end local v10    # "displacement":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_12

    const/16 v10, 0x21

    .line 558
    .restart local v10    # "displacement":I
    :goto_b
    goto/16 :goto_5

    .line 557
    .end local v10    # "displacement":I
    :cond_12
    const/16 v10, 0x11

    goto :goto_b

    .line 563
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_14

    const/16 v10, 0x22

    .restart local v10    # "displacement":I
    :goto_c
    goto/16 :goto_5

    .end local v10    # "displacement":I
    :cond_14
    const/16 v10, 0x12

    goto :goto_c

    .line 575
    :sswitch_2
    if-nez v22, :cond_15

    .line 576
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    .restart local v14    # "moveTooFast":Z
    goto/16 :goto_6

    .line 577
    .end local v14    # "moveTooFast":Z
    :cond_15
    if-lez v17, :cond_19

    .line 579
    move/from16 v0, v23

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_LastFrameAddTime:J

    sub-long/2addr v4, v12

    long-to-float v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v26, v2, v3

    .line 580
    .local v26, "speed":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    if-eqz v2, :cond_17

    .line 581
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    int-to-float v2, v2

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, v26, v2

    if-ltz v2, :cond_16

    const/4 v14, 0x1

    .restart local v14    # "moveTooFast":Z
    :goto_d
    goto/16 :goto_6

    .end local v14    # "moveTooFast":Z
    :cond_16
    const/4 v14, 0x0

    goto :goto_d

    .line 583
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, v26, v2

    if-ltz v2, :cond_18

    const/4 v14, 0x1

    .restart local v14    # "moveTooFast":Z
    :goto_e
    goto/16 :goto_6

    .end local v14    # "moveTooFast":Z
    :cond_18
    const/4 v14, 0x0

    goto :goto_e

    .line 586
    .end local v26    # "speed":F
    :cond_19
    const/4 v14, 0x0

    .line 587
    .restart local v14    # "moveTooFast":Z
    goto/16 :goto_6

    .line 591
    .end local v14    # "moveTooFast":Z
    :cond_1a
    if-lez v18, :cond_1e

    .line 593
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    if-eqz v2, :cond_1c

    .line 594
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    int-to-float v2, v2

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v0, v25

    if-lt v0, v2, :cond_1b

    const/4 v14, 0x1

    .restart local v14    # "moveTooFast":Z
    :goto_f
    goto/16 :goto_6

    .end local v14    # "moveTooFast":Z
    :cond_1b
    const/4 v14, 0x0

    goto :goto_f

    .line 596
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v0, v25

    if-lt v0, v2, :cond_1d

    const/4 v14, 0x1

    .restart local v14    # "moveTooFast":Z
    :goto_10
    goto/16 :goto_6

    .end local v14    # "moveTooFast":Z
    :cond_1d
    const/4 v14, 0x0

    goto :goto_10

    .line 599
    :cond_1e
    const/4 v14, 0x0

    .restart local v14    # "moveTooFast":Z
    goto/16 :goto_6

    .line 610
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2738

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2738

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 621
    .restart local v9    # "causedByError":Z
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x272e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    sparse-switch v2, :sswitch_data_5

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    if-lt v2, v3, :cond_1

    .line 634
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v3, "onFrameCaptured() - Target size reached, stop capture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 626
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    if-ge v2, v3, :cond_20

    goto/16 :goto_0

    .line 638
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFrameCaptured() - Notify UI, result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x272e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_21

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x272e

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 641
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v2

    const/16 v3, 0x2712

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-static {v2, v3, v0, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 652
    .restart local v27    # "stopImmediately":Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    if-ge v2, v3, :cond_a

    .line 653
    const/16 v27, 0x1

    goto/16 :goto_8

    .line 514
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x22 -> :sswitch_0
    .end sparse-switch

    .line 550
    :sswitch_data_1
    .sparse-switch
        0x12 -> :sswitch_1
        0x22 -> :sswitch_1
    .end sparse-switch

    .line 571
    :sswitch_data_2
    .sparse-switch
        0x12 -> :sswitch_2
        0x22 -> :sswitch_2
    .end sparse-switch

    .line 618
    :sswitch_data_3
    .sparse-switch
        -0xb -> :sswitch_5
        0x0 -> :sswitch_3
    .end sparse-switch

    .line 648
    :sswitch_data_4
    .sparse-switch
        0x12 -> :sswitch_6
        0x22 -> :sswitch_6
    .end sparse-switch

    .line 622
    :sswitch_data_5
    .sparse-switch
        0x12 -> :sswitch_4
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method private onGyroscopeChanged(J[F)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "values"    # [F

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x42652ee1

    .line 679
    iget-boolean v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsCapturing:Z

    if-nez v1, :cond_0

    .line 691
    :goto_0
    return-void

    .line 683
    :cond_0
    iget-wide v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_LastGyroscopeChangeTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 685
    iget-wide v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_LastGyroscopeChangeTime:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float v0, v1, v2

    .line 686
    .local v0, "duration":F
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    aget v2, v1, v7

    aget v3, p3, v7

    mul-float/2addr v3, v6

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v7

    .line 687
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    aget v2, v1, v8

    aget v3, p3, v8

    mul-float/2addr v3, v6

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v8

    .line 688
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    aget v2, v1, v9

    aget v3, p3, v9

    mul-float/2addr v3, v6

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v9

    .line 690
    .end local v0    # "duration":F
    :cond_1
    iput-wide p1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_LastGyroscopeChangeTime:J

    goto :goto_0
.end method

.method private onPreviewFrameBitmapAvailable()V
    .locals 11

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 726
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-nez v3, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v3}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->acquireLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 729
    .local v0, "frame":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 733
    iget-boolean v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsCapturing:Z

    if-eqz v3, :cond_3

    .line 735
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    aget v3, v3, v9

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    aget v3, v3, v10

    if-lez v3, :cond_2

    .line 737
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    aget v3, v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 738
    .local v1, "relativeCorrX":F
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    aget v3, v3, v10

    int-to-float v3, v3

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 739
    .local v2, "relativeCorrY":F
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v3

    const/16 v4, 0x2711

    iget-object v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    aget v5, v5, v9

    iget-object v6, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    aget v6, v6, v10

    new-array v7, v8, [Ljava/lang/Object;

    new-array v8, v8, [F

    aput v1, v8, v9

    aput v2, v8, v10

    aput-object v8, v7, v9

    aput-object v0, v7, v10

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 742
    .end local v1    # "relativeCorrX":F
    .end local v2    # "relativeCorrY":F
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v3, v0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->releaseBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 745
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v3

    const/16 v4, 0x271b

    invoke-static {v3, v4, v9, v9, v0}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method private onPreviewFrameReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-nez v0, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->isUILinked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 765
    :sswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->addNV21Frame([B)V

    goto :goto_0

    .line 762
    :sswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->addMultiPlaneYuvFrame([Lcom/oneplus/camera/media/ImagePlane;)V

    goto :goto_0

    .line 759
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x23 -> :sswitch_1
    .end sparse-switch
.end method

.method private restoreCameraParams(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 774
    if-nez p1, :cond_0

    .line 782
    :goto_0
    return-void

    .line 776
    :cond_0
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 779
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 780
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 781
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_0
.end method

.method private setupCameraParams(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 792
    if-nez p1, :cond_0

    .line 804
    :goto_0
    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v1, "setupCameraParams() - Camera : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 795
    iget-boolean v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z

    if-nez v0, :cond_1

    .line 797
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 801
    :cond_1
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 802
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 803
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_0
.end method

.method private static native stitch(JLcom/oneplus/base/Ref;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/oneplus/base/Ref",
            "<[B>;[I)I"
        }
    .end annotation
.end method

.method private stopCapture(ZZ)V
    .locals 27
    .param p1, "stitch"    # Z
    .param p2, "causedByError"    # Z

    .prologue
    .line 811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    if-nez v3, :cond_1

    .line 813
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "stopCapture() - Not capturing"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :goto_0
    return-void

    .line 817
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopCapture() - Stitch : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsCapturing:Z

    .line 821
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x272e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 822
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x2738

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 825
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z

    if-nez v3, :cond_2

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    sget-object v4, Lcom/oneplus/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v3, v4, v5}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 832
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v3, :cond_3

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Size;

    .line 835
    .local v15, "previewSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureInput(II)V

    .line 840
    .end local v15    # "previewSize":Landroid/util/Size;
    :cond_3
    if-eqz p1, :cond_11

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->isUILinked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v4

    const/16 v5, 0x2713

    if-eqz p2, :cond_8

    const/4 v3, 0x1

    :goto_1
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v5, v3, v6, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 849
    :goto_2
    new-instance v26, Lcom/oneplus/base/SimpleRef;

    invoke-direct/range {v26 .. v26}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 850
    .local v26, "yuvResultRef":Lcom/oneplus/base/SimpleRef;, "Lcom/oneplus/base/SimpleRef<[B>;"
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v17, v0

    .line 851
    .local v17, "resultSize":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "stopCapture() - Stitch start"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-static {v4, v5, v0, v1}, Lcom/oneplus/camera/panorama/PanoramaController;->stitch(JLcom/oneplus/base/Ref;[I)I

    move-result v16

    .line 853
    .local v16, "result":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopCapture() - Stitch result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    if-nez v16, :cond_7

    .line 858
    invoke-virtual/range {v26 .. v26}, Lcom/oneplus/base/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [B

    .line 859
    .local v25, "yuvResult":[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 890
    .local v22, "time":J
    const/16 v20, 0x0

    .line 891
    .local v20, "rsHandle":Lcom/oneplus/base/Handle;
    const/16 v21, 0x0

    .line 892
    .local v21, "yuvAllocation":Landroid/renderscript/Allocation;
    const/16 v18, 0x0

    .line 893
    .local v18, "rgbaAllocation":Landroid/renderscript/Allocation;
    const/16 v24, 0x0

    .line 896
    .local v24, "yuvConvertScript":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    const/4 v3, 0x0

    :try_start_0
    aget v3, v17, v3

    if-lez v3, :cond_a

    const/4 v3, 0x1

    aget v3, v17, v3

    if-lez v3, :cond_a

    .line 899
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/renderscript/RenderScriptManager;->createRenderScript(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v20

    .line 900
    invoke-static/range {v20 .. v20}, Lcom/oneplus/renderscript/RenderScriptManager;->getRenderScript(Lcom/oneplus/base/Handle;)Landroid/renderscript/RenderScript;

    move-result-object v19

    .line 901
    .local v19, "rs":Landroid/renderscript/RenderScript;
    const/4 v3, 0x0

    aget v3, v17, v3

    const/4 v4, 0x1

    aget v4, v17, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 902
    .local v2, "resultBitmap":Landroid/graphics/Bitmap;
    invoke-static/range {v19 .. v19}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x1

    aget v5, v17, v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v21

    .line 903
    move-object/from16 v0, v19

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v18

    .line 904
    invoke-static/range {v19 .. v19}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v24

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "stopCapture() - Convert YUV to bitmap"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 909
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 910
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 911
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "stopCapture() - Rotate bitmap"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 916
    .local v7, "matrix":Landroid/graphics/Matrix;
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 917
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 920
    new-instance v8, Lcom/oneplus/camera/io/PhotoSaveTask;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Location:Landroid/location/Location;

    move-object v11, v2

    invoke-direct/range {v8 .. v13}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Landroid/graphics/Bitmap;Lcom/oneplus/camera/CameraCaptureEventArgs;Landroid/location/Location;)V

    .line 921
    .local v8, "saveTask":Lcom/oneplus/camera/io/PhotoSaveTask;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    .end local v2    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "saveTask":Lcom/oneplus/camera/io/PhotoSaveTask;
    .end local v19    # "rs":Landroid/renderscript/RenderScript;
    :goto_3
    if-eqz v24, :cond_4

    .line 935
    invoke-virtual/range {v24 .. v24}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->destroy()V

    .line 936
    :cond_4
    if-eqz v18, :cond_5

    .line 937
    invoke-virtual/range {v18 .. v18}, Landroid/renderscript/Allocation;->destroy()V

    .line 938
    :cond_5
    if-eqz v21, :cond_6

    .line 939
    invoke-virtual/range {v21 .. v21}, Landroid/renderscript/Allocation;->destroy()V

    .line 940
    :cond_6
    invoke-static/range {v20 .. v20}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 943
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v22, v4, v22

    .line 944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopCapture() - Takes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms to process stitched picture"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    .end local v17    # "resultSize":[I
    .end local v18    # "rgbaAllocation":Landroid/renderscript/Allocation;
    .end local v20    # "rsHandle":Lcom/oneplus/base/Handle;
    .end local v21    # "yuvAllocation":Landroid/renderscript/Allocation;
    .end local v22    # "time":J
    .end local v24    # "yuvConvertScript":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    .end local v25    # "yuvResult":[B
    .end local v26    # "yuvResultRef":Lcom/oneplus/base/SimpleRef;, "Lcom/oneplus/base/SimpleRef<[B>;"
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/oneplus/camera/panorama/PanoramaController;->completeCapture(I)V

    goto/16 :goto_0

    .line 844
    .end local v16    # "result":I
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 846
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "stopCapture() - No UI to notify"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 925
    .restart local v16    # "result":I
    .restart local v17    # "resultSize":[I
    .restart local v18    # "rgbaAllocation":Landroid/renderscript/Allocation;
    .restart local v20    # "rsHandle":Lcom/oneplus/base/Handle;
    .restart local v21    # "yuvAllocation":Landroid/renderscript/Allocation;
    .restart local v22    # "time":J
    .restart local v24    # "yuvConvertScript":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    .restart local v25    # "yuvResult":[B
    .restart local v26    # "yuvResultRef":Lcom/oneplus/base/SimpleRef;, "Lcom/oneplus/base/SimpleRef<[B>;"
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopCapture() - Result size is too small : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v17, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v17, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 928
    :catch_0
    move-exception v14

    .line 930
    .local v14, "ex":Ljava/lang/Throwable;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "stopCapture() - Fail to convert result bitmap"

    invoke-static {v3, v4, v14}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 934
    if-eqz v24, :cond_b

    .line 935
    invoke-virtual/range {v24 .. v24}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->destroy()V

    .line 936
    :cond_b
    if-eqz v18, :cond_c

    .line 937
    invoke-virtual/range {v18 .. v18}, Landroid/renderscript/Allocation;->destroy()V

    .line 938
    :cond_c
    if-eqz v21, :cond_d

    .line 939
    invoke-virtual/range {v21 .. v21}, Landroid/renderscript/Allocation;->destroy()V

    .line 940
    :cond_d
    invoke-static/range {v20 .. v20}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto/16 :goto_4

    .line 934
    .end local v14    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-eqz v24, :cond_e

    .line 935
    invoke-virtual/range {v24 .. v24}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->destroy()V

    .line 936
    :cond_e
    if-eqz v18, :cond_f

    .line 937
    invoke-virtual/range {v18 .. v18}, Landroid/renderscript/Allocation;->destroy()V

    .line 938
    :cond_f
    if-eqz v21, :cond_10

    .line 939
    invoke-virtual/range {v21 .. v21}, Landroid/renderscript/Allocation;->destroy()V

    .line 940
    :cond_10
    invoke-static/range {v20 .. v20}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    throw v3

    .line 948
    .end local v16    # "result":I
    .end local v17    # "resultSize":[I
    .end local v18    # "rgbaAllocation":Landroid/renderscript/Allocation;
    .end local v20    # "rsHandle":Lcom/oneplus/base/Handle;
    .end local v21    # "yuvAllocation":Landroid/renderscript/Allocation;
    .end local v22    # "time":J
    .end local v24    # "yuvConvertScript":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    .end local v25    # "yuvResult":[B
    .end local v26    # "yuvResultRef":Lcom/oneplus/base/SimpleRef;, "Lcom/oneplus/base/SimpleRef<[B>;"
    :cond_11
    const/16 v16, 0x0

    .restart local v16    # "result":I
    goto :goto_5
.end method


# virtual methods
.method public capture(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/CaptureHandle;I)Z
    .locals 10
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "frameCount"    # I

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->isEntered()Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    const/4 v3, 0x0

    .line 310
    :goto_0
    return v3

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    if-eq v3, p1, :cond_1

    .line 192
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "capture() - Unknown camera"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v3, 0x0

    goto :goto_0

    .line 198
    :cond_1
    iget-boolean v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z

    if-eqz v3, :cond_2

    .line 199
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 202
    .local v0, "frameSize":Landroid/util/Size;
    :goto_1
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    .line 203
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    .line 206
    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    .line 207
    .local v2, "paddingTargetWidth":I
    iget v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    .line 208
    .local v1, "paddingTargetHeight":I
    iget v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    sparse-switch v3, :sswitch_data_0

    .line 218
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x40c8a3d7    # 6.27f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    .line 219
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    .line 220
    iget v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    add-int v2, v3, v4

    .line 221
    iget v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    .line 224
    :goto_2
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "capture() - Target size : "

    iget v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "x"

    iget v7, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    invoke-static {v3, v4, v2, v1, v5}, Lcom/oneplus/camera/panorama/PanoramaController;->createEngine(IIIII)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    .line 228
    iget-wide v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 230
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "capture() - Fail to create stitcher"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Fail to create panorama stitcher."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    .end local v0    # "frameSize":Landroid/util/Size;
    .end local v1    # "paddingTargetHeight":I
    .end local v2    # "paddingTargetWidth":I
    :cond_2
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .restart local v0    # "frameSize":Landroid/util/Size;
    goto :goto_1

    .line 212
    .restart local v1    # "paddingTargetHeight":I
    .restart local v2    # "paddingTargetWidth":I
    :sswitch_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    .line 213
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x40c8a3d7    # 6.27f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    .line 214
    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    .line 215
    iget v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    add-int v1, v3, v4

    .line 216
    goto :goto_2

    .line 233
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "capture() - Engine : "

    const-string v5, "0x%x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-nez v3, :cond_4

    .line 237
    const-class v3, Lcom/oneplus/camera/ExposureController;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/panorama/PanoramaController;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ExposureController;

    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    .line 238
    :cond_4
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v3, :cond_7

    .line 239
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/oneplus/camera/ExposureController;->lockAutoExposure(I)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AELockHandle:Lcom/oneplus/base/Handle;

    .line 244
    :goto_3
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_WhiteBalanceController:Lcom/oneplus/camera/WhiteBalanceController;

    if-nez v3, :cond_5

    .line 245
    const-class v3, Lcom/oneplus/camera/WhiteBalanceController;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/panorama/PanoramaController;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/WhiteBalanceController;

    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_WhiteBalanceController:Lcom/oneplus/camera/WhiteBalanceController;

    .line 246
    :cond_5
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_WhiteBalanceController:Lcom/oneplus/camera/WhiteBalanceController;

    if-eqz v3, :cond_8

    .line 247
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_WhiteBalanceController:Lcom/oneplus/camera/WhiteBalanceController;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/oneplus/camera/WhiteBalanceController;->lockAutoWhiteBalance(I)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AwbLockHandle:Lcom/oneplus/base/Handle;

    .line 253
    :goto_4
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-nez v3, :cond_6

    .line 254
    const-class v3, Lcom/oneplus/camera/FocusController;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/panorama/PanoramaController;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/FocusController;

    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusController:Lcom/oneplus/camera/FocusController;

    .line 255
    :cond_6
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v3, :cond_9

    .line 256
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusController:Lcom/oneplus/camera/FocusController;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/oneplus/camera/FocusController;->lockFocus(I)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    .line 261
    :goto_5
    iget-boolean v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z

    if-nez v3, :cond_b

    .line 263
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "capture() - Start burst capture"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Lcom/oneplus/camera/Camera;->capture(II)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 265
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 267
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "capture() - Fail to start capture"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-wide v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    invoke-static {v4, v5}, Lcom/oneplus/camera/panorama/PanoramaController;->destroyEngine(J)V

    .line 269
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    .line 270
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AELockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AELockHandle:Lcom/oneplus/base/Handle;

    .line 271
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AwbLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AwbLockHandle:Lcom/oneplus/base/Handle;

    .line 272
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    .line 273
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Fail to start capture."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_7
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "capture() - No ExposureController to lock AE"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 249
    :cond_8
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "capture() - No WhiteBalanceController to lock Awb"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 258
    :cond_9
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "capture() - No FocusController to lock focus"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 275
    :cond_a
    sget-object v3, Lcom/oneplus/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v3, v4}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 279
    :cond_b
    iget-boolean v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v3, :cond_c

    .line 280
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    iget v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureInput(II)V

    .line 283
    :cond_c
    iput-object p2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 284
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Rotation;

    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureRotation:Lcom/oneplus/base/Rotation;

    .line 285
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_SensorSizeFull:Landroid/util/Size;

    .line 286
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Location:Landroid/location/Location;

    .line 289
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 290
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 293
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_LastGyroscopeChangeTime:J

    .line 294
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 295
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 296
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 297
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 298
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 299
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 302
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->isUILinked()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 303
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v3

    const/16 v4, 0x2710

    iget v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    iget v6, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 308
    :goto_6
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    .line 309
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsCapturing:Z

    .line 310
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 305
    :cond_d
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v4, "capture() - No UI to notify"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 208
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 355
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 393
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->handleMessage(Landroid/os/Message;)V

    .line 396
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 358
    :sswitch_1
    iget-boolean v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsCapturing:Z

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v3, "handleMessage() - Fail to add frames, stop capture"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0, v2, v2}, Lcom/oneplus/camera/panorama/PanoramaController;->stopCapture(ZZ)V

    goto :goto_0

    .line 367
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 368
    .local v0, "args":[Ljava/lang/Object;
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aget-object v1, v0, v2

    check-cast v1, [F

    check-cast v1, [F

    invoke-direct {p0, v4, v5, v1}, Lcom/oneplus/camera/panorama/PanoramaController;->onGyroscopeChanged(J[F)V

    goto :goto_0

    .line 373
    .end local v0    # "args":[Ljava/lang/Object;
    :sswitch_3
    iput-boolean v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    .line 374
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v1

    const/16 v2, 0x2725

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v3, v4}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 382
    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    .line 383
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    .line 384
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    iget v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureOutput(II)V

    goto :goto_0

    .line 389
    :sswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/oneplus/camera/panorama/PanoramaController;->stopCapture(ZZ)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    .line 355
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x2711 -> :sswitch_5
        0x271a -> :sswitch_4
        0x2724 -> :sswitch_2
        0x272e -> :sswitch_1
        0x2738 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onEnter(I)Z
    .locals 10
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v9, 0x0

    .line 408
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->onEnter(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v9

    .line 440
    :goto_0
    return v0

    .line 412
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraNativeLibrary;->load()V

    .line 415
    invoke-static {}, Lcom/oneplus/camera/panorama/PanoramaController;->initializeEngine()Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v1, "onEnter() - Fail to initialize engine"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 418
    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    .line 423
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/panorama/PanoramaController;->setupCameraParams(Lcom/oneplus/camera/Camera;)V

    .line 426
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0, p0, v9}, Lcom/oneplus/camera/CameraThread;->setPhotoCaptureHandler(Lcom/oneplus/camera/PhotoCaptureHandler;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    .line 427
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v1, "onEnter() - Fail to change capture handler"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 430
    goto :goto_0

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    move-object v8, v0

    .line 435
    .local v8, "previewSize":Landroid/util/Size;
    :goto_1
    new-instance v0, Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    iget v6, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/camera/media/YuvToBitmapWorker;-><init>(Landroid/content/Context;IIIIILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    .line 436
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameBitmapAvailListener:Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;

    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->setOnBitmapAvailableListener(Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;Landroid/os/Handler;)V

    .line 437
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v0

    const/16 v1, 0x271a

    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-static {v0, v1, v9, v9, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 440
    const/4 v0, 0x1

    goto :goto_0

    .line 434
    .end local v8    # "previewSize":Landroid/util/Size;
    :cond_3
    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v1, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_1
.end method

.method protected onExit(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 449
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/panorama/PanoramaController;->restoreCameraParams(Lcom/oneplus/camera/Camera;)V

    .line 452
    iput-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    .line 459
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->close()V

    .line 462
    iput-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    .line 466
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->onExit(I)V

    .line 467
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 699
    invoke-super {p0}, Lcom/oneplus/camera/ModeController;->onInitialize()V

    .line 702
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    .line 703
    .local v0, "cameraThread":Lcom/oneplus/camera/CameraThread;
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/panorama/PanoramaController$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/panorama/PanoramaController$5;-><init>(Lcom/oneplus/camera/panorama/PanoramaController;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 719
    return-void
.end method

.method public stopCapture(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/CaptureHandle;)Z
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "handle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 959
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->isEntered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 967
    :goto_0
    return v0

    .line 961
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    if-eq v2, p2, :cond_1

    .line 963
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string v2, "stopCapture() - Unknown capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 966
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/oneplus/camera/panorama/PanoramaController;->stopCapture(ZZ)V

    move v0, v1

    .line 967
    goto :goto_0
.end method
