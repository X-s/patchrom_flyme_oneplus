.class public final Lcom/oneplus/camera/panorama/PanoramaController;
.super Lcom/oneplus/camera/ModeController;
.source "PanoramaController.java"

# interfaces
.implements Lcom/oneplus/camera/PhotoCaptureHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/panorama/PanoramaController$1;,
        Lcom/oneplus/camera/panorama/PanoramaController$2;,
        Lcom/oneplus/camera/panorama/PanoramaController$3;,
        Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;,
        Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;,
        Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;
    }
.end annotation

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
.field private static final CROP_EXCEEDED_ANGLE:Z = false

.field static final DIRECTION_AUTO:I = 0x0

.field static final DIRECTION_DOWN:I = 0x12

.field static final DIRECTION_LEFT:I = 0x21

.field static final DIRECTION_RIGHT:I = 0x11

.field static final DIRECTION_UP:I = 0x22

.field private static final DURATION_FAIL_TO_ADD_FRAMES_TIMEOUT:J = 0xbb8L

.field private static final EXTRA_TARGET_SIZE:I = 0x438

.field private static final MAX_XMP_HORIZONTAL_VIEW_ANGLE:I = 0x15e

.field private static final MSG_FAIL_TO_ADD_FRAMES:I = 0x272e

.field static final MSG_GYROSCOPE_CHANGED:I = 0x2724

.field private static final MSG_RESTORE_MOVING_SPEED_STATE:I = 0x2738

.field static final MSG_SET_DIRECTION:I = 0x2710

.field static final MSG_SET_PREVIEW_FRAME_SIZE:I = 0x271a

.field static final MSG_STOP_CAPTURE:I = 0x2711

.field private static final RATIO_FRAME_THUMB_SCALE:I = 0x4

.field private static final RATIO_RESULT_LONG_SIDE:F = 11.63f

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

.field private static final SAVE_FRAMES:Z = false

.field private static final SAVE_YUV_DIRECTLY:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD_DISPLACEMENT_WARNING:F = 0.05f

.field private static final THRESHOLD_HEIGHT_TO_SAVE_YUV_DIRECTLY:I = 0x9c4

.field private static final THRESHOLD_MOVE_TOO_FAST_ENTER:F = 1.5f

.field private static final THRESHOLD_MOVE_TOO_FAST_EXIT:F = 1.3f

.field private static final THRESHOLD_RESTORE_MOVING_SPEED:J = 0x1f4L

.field private static final THRESHOLD_SMALL_ROTATION_ANGLE:F = 2.0f

.field private static final m_FrameSaveExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private m_AELockHandle:Lcom/oneplus/base/Handle;

.field private m_AwbLockHandle:Lcom/oneplus/base/Handle;

.field private m_Camera:Lcom/oneplus/camera/Camera;

.field private m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

.field private m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

.field private m_CaptureRotation:Lcom/oneplus/base/Rotation;

.field private m_CaptureTime:J

.field private final m_Corrections:[I

.field private m_Direction:I

.field private m_Engine:J

.field private m_ExifTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_ExposureController:Lcom/oneplus/camera/ExposureController;

.field private m_FocusController:Lcom/oneplus/camera/FocusController;

.field private m_FocusLockHandle:Lcom/oneplus/base/Handle;

.field private m_FrameHeight:I

.field private m_FrameIndex:I

.field private m_FrameWidth:I

.field private final m_GyroFrameOffsets:[F

.field private m_IsCapturing:Z

.field private m_IsFirstFrame:Z

.field private m_IsMovingTooFast:Z

.field private m_LastFrameAddTime:J

.field private m_LastGyroscopeChangeTime:J

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

.field private m_ResultSize:[I

.field private final m_RotatedAngles:[F

.field private final m_SensorCropRegion:Landroid/graphics/Rect;

.field private m_SensorSizeFull:Landroid/util/Size;

.field private m_TargetHeight:I

.field private m_TargetWidth:I

.field private m_UsePreviewFramesToStitch:Z

.field private m_ViewAngles:Landroid/util/SizeF;

.field private m_WhiteBalanceController:Lcom/oneplus/camera/WhiteBalanceController;

.field private m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/panorama/PanoramaController;)Lcom/oneplus/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/panorama/PanoramaController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsCapturing:Z

    return v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/panorama/PanoramaController;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    return v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/panorama/PanoramaController;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    return v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/panorama/PanoramaController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z

    return v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/panorama/PanoramaController;)Lcom/oneplus/camera/media/YuvToBitmapWorker;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/Camera;)Lcom/oneplus/camera/Camera;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/panorama/PanoramaController;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaController;->onFrameCaptured(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/panorama/PanoramaController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->onPreviewFrameBitmapAvailable()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaController;->onPreviewFrameReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaController;->restoreCameraParams(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/panorama/PanoramaController;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaController;->setupCameraParams(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/oneplus/camera/panorama/PanoramaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameSaveExecutor:Ljava/util/concurrent/Executor;

    .line 74
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 4
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 494
    const-string/jumbo v0, "Panorama controller"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/ModeController;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;)V

    .line 128
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    .line 129
    const/16 v0, 0x22

    iput v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    .line 139
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_GyroFrameOffsets:[F

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsFirstFrame:Z

    .line 145
    const/16 v0, 0x5a

    iput v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_OutputOrientation:I

    .line 146
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    .line 147
    iput v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    .line 148
    iput v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    .line 149
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    .line 150
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_SensorCropRegion:Landroid/graphics/Rect;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z

    .line 179
    new-instance v0, Lcom/oneplus/camera/panorama/PanoramaController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/panorama/PanoramaController$1;-><init>(Lcom/oneplus/camera/panorama/PanoramaController;)V

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 187
    new-instance v0, Lcom/oneplus/camera/panorama/PanoramaController$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/panorama/PanoramaController$2;-><init>(Lcom/oneplus/camera/panorama/PanoramaController;)V

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 201
    new-instance v0, Lcom/oneplus/camera/panorama/PanoramaController$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/panorama/PanoramaController$3;-><init>(Lcom/oneplus/camera/panorama/PanoramaController;)V

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameBitmapAvailListener:Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;

    .line 492
    return-void
.end method

.method private static native addFrame(J[B[F[I[IZ)I
.end method

.method private completeCapture(ILcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    const/4 v3, 0x0

    .line 642
    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCapture()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-wide v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    invoke-static {v0, v1}, Lcom/oneplus/camera/panorama/PanoramaController;->destroyEngine(J)V

    .line 646
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    .line 649
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->isUILinked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v0

    const/16 v1, 0x2714

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 655
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AELockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AELockHandle:Lcom/oneplus/base/Handle;

    .line 656
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AwbLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AwbLockHandle:Lcom/oneplus/base/Handle;

    .line 657
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    .line 660
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v0, v1, v2, p2}, Lcom/oneplus/camera/CameraThread;->completeCapture(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)Z

    .line 663
    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 664
    iput-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ExifTags:Ljava/util/HashMap;

    .line 665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsFirstFrame:Z

    .line 640
    return-void

    .line 652
    :cond_0
    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCapture() - No UI to notify"

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
    .locals 28
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 806
    sget-object v2, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onFrameCaptured()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v15

    .line 810
    .local v15, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-eqz v15, :cond_0

    array-length v2, v15

    if-nez v2, :cond_1

    .line 812
    :cond_0
    sget-object v2, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onFrameCaptured() - Invalid YUV frame, ignore"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return-void

    .line 817
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsFirstFrame:Z

    if-eqz v2, :cond_2

    .line 819
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsFirstFrame:Z

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 821
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraThread;->playDefaultShutterSound()V

    .line 825
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_GyroFrameOffsets:[F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ViewAngles:Landroid/util/SizeF;

    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    div-float/2addr v3, v4

    neg-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_GyroFrameOffsets:[F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ViewAngles:Landroid/util/SizeF;

    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    div-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 867
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameIndex:I

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x0

    aget v17, v2, v3

    .line 871
    .local v17, "prevResultWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x1

    aget v16, v2, v3

    .line 872
    .local v16, "prevResultHeight":I
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

    move-result v20

    .line 873
    .local v20, "result":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int v24, v2, v17

    .line 874
    .local v24, "resultWidthDiff":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v22, v2, v16

    .line 875
    .local v22, "resultHeightDiff":I
    if-eqz v24, :cond_b

    const/16 v23, 0x1

    .line 876
    .local v23, "resultWidthChanged":Z
    :goto_0
    if-eqz v22, :cond_c

    const/16 v21, 0x1

    .line 877
    .local v21, "resultHeightChanged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_LastFrameAddTime:J

    .line 878
    .local v12, "lastFrameAddTime":J
    if-nez v23, :cond_3

    if-eqz v21, :cond_4

    .line 880
    :cond_3
    sget-object v2, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onFrameCaptured() - Result size changed to "

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "x"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 881
    sget-object v2, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onFrameCaptured() - Target size "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "x"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 884
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    sparse-switch v2, :sswitch_data_0

    .line 892
    move/from16 v27, v23

    .line 893
    .local v27, "updatePreviewFrame":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_e

    const/4 v11, 0x1

    .line 896
    .local v11, "isSmallRotationAngle":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v2, :cond_f

    if-eqz v27, :cond_f

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v3}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->addNV21Frame([BII)V

    .line 904
    :goto_3
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

    .line 905
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

    .line 906
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

    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v3, v2, v4

    .line 910
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_LastFrameAddTime:J

    .line 911
    if-eqz v11, :cond_4

    .line 912
    const/16 v20, 0x0

    .line 916
    .end local v11    # "isSmallRotationAngle":Z
    .end local v27    # "updatePreviewFrame":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-eqz v2, :cond_6

    .line 918
    :cond_5
    sget-object v2, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onFrameCaptured() - Corrections : ("

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ", "

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-static/range {v2 .. v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 920
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    sparse-switch v2, :sswitch_data_1

    .line 930
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

    if-ge v2, v3, :cond_12

    .line 931
    const/4 v10, 0x0

    .line 936
    .local v10, "displacement":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v2

    const/16 v3, 0x2724

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v10, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 941
    .end local v10    # "displacement":I
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    sparse-switch v2, :sswitch_data_2

    .line 959
    if-nez v23, :cond_19

    .line 960
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    .line 972
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    if-eq v2, v14, :cond_7

    .line 974
    if-eqz v14, :cond_1e

    .line 976
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    .line 977
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2738

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v2

    const/16 v3, 0x2725

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 985
    :cond_7
    :goto_6
    const/4 v9, 0x0

    .line 986
    .local v9, "causedByError":Z
    const/4 v2, -0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_8

    .line 987
    const/16 v20, -0xa

    .line 988
    :cond_8
    sparse-switch v20, :sswitch_data_3

    .line 1016
    sget-object v2, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFrameCaptured() - Fail to add frame, result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const/16 v26, 0x0

    .line 1018
    .local v26, "stopImmediately":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    sparse-switch v2, :sswitch_data_4

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    if-ge v2, v3, :cond_9

    .line 1028
    const/16 v26, 0x1

    .line 1031
    :cond_9
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x272e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x272e

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1033
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v2

    const/16 v3, 0x2712

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1034
    if-nez v26, :cond_21

    .line 1035
    return-void

    .line 875
    .end local v9    # "causedByError":Z
    .end local v12    # "lastFrameAddTime":J
    .end local v21    # "resultHeightChanged":Z
    .end local v23    # "resultWidthChanged":Z
    .end local v26    # "stopImmediately":Z
    :cond_b
    const/16 v23, 0x0

    .restart local v23    # "resultWidthChanged":Z
    goto/16 :goto_0

    .line 876
    :cond_c
    const/16 v21, 0x0

    .restart local v21    # "resultHeightChanged":Z
    goto/16 :goto_1

    .line 888
    .restart local v12    # "lastFrameAddTime":J
    :sswitch_0
    move/from16 v27, v21

    .line 889
    .restart local v27    # "updatePreviewFrame":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_d

    const/4 v11, 0x1

    .restart local v11    # "isSmallRotationAngle":Z
    goto/16 :goto_2

    .end local v11    # "isSmallRotationAngle":Z
    :cond_d
    const/4 v11, 0x0

    .restart local v11    # "isSmallRotationAngle":Z
    goto/16 :goto_2

    .line 893
    .end local v11    # "isSmallRotationAngle":Z
    :cond_e
    const/4 v11, 0x0

    .restart local v11    # "isSmallRotationAngle":Z
    goto/16 :goto_2

    .line 900
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    int-to-float v3, v3

    div-float v18, v2, v3

    .line 901
    .local v18, "relativeCorrX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    int-to-float v3, v3

    div-float v19, v2, v3

    .line 902
    .local v19, "relativeCorrY":F
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v18, v6, v7

    const/4 v7, 0x1

    aput v19, v6, v7

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/16 v6, 0x2711

    invoke-static {v2, v6, v3, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto/16 :goto_3

    .line 924
    .end local v11    # "isSmallRotationAngle":Z
    .end local v18    # "relativeCorrX":F
    .end local v19    # "relativeCorrY":F
    .end local v27    # "updatePreviewFrame":Z
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

    if-ge v2, v3, :cond_10

    .line 925
    const/4 v10, 0x0

    .restart local v10    # "displacement":I
    goto/16 :goto_4

    .line 927
    .end local v10    # "displacement":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_11

    const/16 v10, 0x21

    .restart local v10    # "displacement":I
    goto/16 :goto_4

    .end local v10    # "displacement":I
    :cond_11
    const/16 v10, 0x11

    .restart local v10    # "displacement":I
    goto/16 :goto_4

    .line 933
    .end local v10    # "displacement":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_13

    const/16 v10, 0x22

    .restart local v10    # "displacement":I
    goto/16 :goto_4

    .end local v10    # "displacement":I
    :cond_13
    const/16 v10, 0x12

    .restart local v10    # "displacement":I
    goto/16 :goto_4

    .line 945
    .end local v10    # "displacement":I
    :sswitch_2
    if-nez v21, :cond_14

    .line 946
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    .local v14, "moveTooFast":Z
    goto/16 :goto_5

    .line 947
    .end local v14    # "moveTooFast":Z
    :cond_14
    if-lez v16, :cond_18

    .line 949
    move/from16 v0, v22

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_LastFrameAddTime:J

    sub-long/2addr v4, v12

    long-to-float v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v25, v2, v3

    .line 950
    .local v25, "speed":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    if-eqz v2, :cond_16

    .line 951
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    int-to-float v2, v2

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, v25, v2

    if-ltz v2, :cond_15

    const/4 v14, 0x1

    .local v14, "moveTooFast":Z
    goto/16 :goto_5

    .end local v14    # "moveTooFast":Z
    :cond_15
    const/4 v14, 0x0

    .restart local v14    # "moveTooFast":Z
    goto/16 :goto_5

    .line 953
    .end local v14    # "moveTooFast":Z
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, v25, v2

    if-ltz v2, :cond_17

    const/4 v14, 0x1

    .restart local v14    # "moveTooFast":Z
    goto/16 :goto_5

    .end local v14    # "moveTooFast":Z
    :cond_17
    const/4 v14, 0x0

    .restart local v14    # "moveTooFast":Z
    goto/16 :goto_5

    .line 956
    .end local v14    # "moveTooFast":Z
    .end local v25    # "speed":F
    :cond_18
    const/4 v14, 0x0

    .restart local v14    # "moveTooFast":Z
    goto/16 :goto_5

    .line 961
    .end local v14    # "moveTooFast":Z
    :cond_19
    if-lez v17, :cond_1d

    .line 963
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    if-eqz v2, :cond_1b

    .line 964
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    int-to-float v2, v2

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v0, v24

    if-lt v0, v2, :cond_1a

    const/4 v14, 0x1

    .restart local v14    # "moveTooFast":Z
    goto/16 :goto_5

    .end local v14    # "moveTooFast":Z
    :cond_1a
    const/4 v14, 0x0

    .restart local v14    # "moveTooFast":Z
    goto/16 :goto_5

    .line 966
    .end local v14    # "moveTooFast":Z
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v0, v24

    if-lt v0, v2, :cond_1c

    const/4 v14, 0x1

    .restart local v14    # "moveTooFast":Z
    goto/16 :goto_5

    .end local v14    # "moveTooFast":Z
    :cond_1c
    const/4 v14, 0x0

    .restart local v14    # "moveTooFast":Z
    goto/16 :goto_5

    .line 969
    .end local v14    # "moveTooFast":Z
    :cond_1d
    const/4 v14, 0x0

    .restart local v14    # "moveTooFast":Z
    goto/16 :goto_5

    .line 980
    .end local v14    # "moveTooFast":Z
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2738

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2738

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    .line 991
    .restart local v9    # "causedByError":Z
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x272e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 992
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    sparse-switch v2, :sswitch_data_5

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    if-ge v2, v3, :cond_1f

    .line 1001
    return-void

    .line 996
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    if-ge v2, v3, :cond_1f

    .line 997
    return-void

    .line 1004
    :cond_1f
    sget-object v2, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onFrameCaptured() - Target size reached, stop capture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    :goto_8
    if-eqz v9, :cond_22

    sget-object v2, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    :goto_9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9, v2}, Lcom/oneplus/camera/panorama/PanoramaController;->stopCapture(ZZLcom/oneplus/camera/CaptureCompleteReason;)V

    .line 804
    return-void

    .line 1008
    :sswitch_5
    sget-object v2, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFrameCaptured() - Notify UI, result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x272e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1010
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x272e

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1011
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v2

    const/16 v3, 0x2712

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1012
    return-void

    .line 1022
    .restart local v26    # "stopImmediately":Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    if-ge v2, v3, :cond_9

    .line 1023
    const/16 v26, 0x1

    goto/16 :goto_7

    .line 1036
    :cond_21
    const/4 v9, 0x1

    goto :goto_8

    .line 1041
    .end local v26    # "stopImmediately":Z
    :cond_22
    sget-object v2, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    goto :goto_9

    .line 884
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x22 -> :sswitch_0
    .end sparse-switch

    .line 920
    :sswitch_data_1
    .sparse-switch
        0x12 -> :sswitch_1
        0x22 -> :sswitch_1
    .end sparse-switch

    .line 941
    :sswitch_data_2
    .sparse-switch
        0x12 -> :sswitch_2
        0x22 -> :sswitch_2
    .end sparse-switch

    .line 988
    :sswitch_data_3
    .sparse-switch
        -0xb -> :sswitch_5
        0x0 -> :sswitch_3
    .end sparse-switch

    .line 1018
    :sswitch_data_4
    .sparse-switch
        0x12 -> :sswitch_6
        0x22 -> :sswitch_6
    .end sparse-switch

    .line 992
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

    .line 1049
    iget-boolean v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsCapturing:Z

    if-nez v1, :cond_0

    .line 1050
    return-void

    .line 1053
    :cond_0
    iget-wide v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_LastGyroscopeChangeTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1055
    iget-wide v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_LastGyroscopeChangeTime:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float v0, v1, v2

    .line 1056
    .local v0, "duration":F
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    aget v2, v1, v7

    aget v3, p3, v7

    mul-float/2addr v3, v6

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v7

    .line 1057
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    aget v2, v1, v8

    aget v3, p3, v8

    mul-float/2addr v3, v6

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v8

    .line 1058
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    aget v2, v1, v9

    aget v3, p3, v9

    mul-float/2addr v3, v6

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v9

    .line 1060
    .end local v0    # "duration":F
    :cond_1
    iput-wide p1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_LastGyroscopeChangeTime:J

    .line 1046
    return-void
.end method

.method private onPreviewFrameBitmapAvailable()V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1095
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-nez v3, :cond_0

    .line 1096
    return-void

    .line 1097
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v3}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->acquireLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1098
    .local v0, "frame":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1099
    return-void

    .line 1102
    :cond_1
    iget-boolean v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsCapturing:Z

    if-eqz v3, :cond_3

    .line 1104
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    aget v3, v3, v8

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    aget v3, v3, v9

    if-lez v3, :cond_2

    .line 1106
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    aget v3, v3, v8

    int-to-float v3, v3

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 1107
    .local v1, "relativeCorrX":F
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Corrections:[I

    aget v3, v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 1108
    .local v2, "relativeCorrY":F
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    aget v5, v5, v9

    new-array v6, v7, [Ljava/lang/Object;

    new-array v7, v7, [F

    aput v1, v7, v8

    aput v2, v7, v9

    aput-object v7, v6, v8

    aput-object v0, v6, v9

    const/16 v7, 0x2711

    invoke-static {v3, v7, v4, v5, v6}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1092
    .end local v1    # "relativeCorrX":F
    .end local v2    # "relativeCorrY":F
    :goto_0
    return-void

    .line 1111
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v3, v0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->releaseBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1114
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v3

    const/16 v4, 0x271b

    invoke-static {v3, v4, v8, v8, v0}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method private onPreviewFrameReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 6
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 1122
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-nez v2, :cond_0

    .line 1123
    return-void

    .line 1124
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->isUILinked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1125
    return-void

    .line 1128
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1119
    :goto_0
    return-void

    .line 1131
    :sswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->addMultiPlaneYuvFrame([Lcom/oneplus/camera/media/ImagePlane;)V

    goto :goto_0

    .line 1135
    :sswitch_1
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v1

    .line 1136
    .local v1, "nv21":[B
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1138
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v0

    .line 1139
    .local v0, "inputSize":Landroid/util/Size;
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    iget v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/oneplus/media/ImageUtils;->scaleNV21Image([BIIII)[B

    move-result-object v1

    .line 1141
    .end local v0    # "inputSize":Landroid/util/Size;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v2, v1}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->addNV21Frame([B)V

    goto :goto_0

    .line 1128
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x23 -> :sswitch_0
    .end sparse-switch
.end method

.method private restoreCameraParams(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 1151
    if-nez p1, :cond_0

    .line 1152
    return-void

    .line 1153
    :cond_0
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1156
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1158
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1149
    return-void
.end method

.method private setupCameraParams(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 1169
    if-nez p1, :cond_0

    .line 1170
    return-void

    .line 1171
    :cond_0
    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupCameraParams() - Camera : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1172
    iget-boolean v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z

    if-nez v0, :cond_1

    .line 1174
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1178
    :cond_1
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1180
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1167
    return-void
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

.method private stopCapture(ZZLcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 17
    .param p1, "stitch"    # Z
    .param p2, "causedByError"    # Z
    .param p3, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    if-nez v3, :cond_1

    .line 1190
    :cond_0
    sget-object v3, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCapture() - Not capturing"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    return-void

    .line 1188
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsCapturing:Z

    if-eqz v3, :cond_0

    .line 1194
    sget-object v3, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopCapture() - Stitch : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsCapturing:Z

    .line 1198
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x272e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1199
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x2738

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1202
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z

    if-nez v3, :cond_2

    .line 1204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 1205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    sget-object v4, Lcom/oneplus/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v3, v4, v5}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1209
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v3, :cond_3

    .line 1210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureInput(II)V

    .line 1214
    :cond_3
    if-eqz p1, :cond_a

    .line 1217
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->isUILinked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1218
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v4

    if-eqz p2, :cond_5

    const/4 v3, 0x1

    :goto_0
    const/16 v5, 0x2713

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1223
    :goto_1
    new-instance v16, Lcom/oneplus/base/SimpleRef;

    invoke-direct/range {v16 .. v16}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 1224
    .local v16, "yuvResultRef":Lcom/oneplus/base/SimpleRef;, "Lcom/oneplus/base/SimpleRef<[B>;"
    const/4 v3, 0x2

    new-array v12, v3, [I

    .line 1225
    .local v12, "resultSize":[I
    sget-object v3, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCapture() - Stitch start"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0, v12}, Lcom/oneplus/camera/panorama/PanoramaController;->stitch(JLcom/oneplus/base/Ref;[I)I

    move-result v11

    .line 1227
    .local v11, "result":I
    sget-object v3, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopCapture() - Stitch result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    if-nez v11, :cond_4

    .line 1233
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ExifTags:Ljava/util/HashMap;

    .line 1234
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v10, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1235
    .local v10, "dateFormat":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ExifTags:Ljava/util/HashMap;

    const-string/jumbo v4, "DateTime"

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ExifTags:Ljava/util/HashMap;

    const-string/jumbo v4, "Orientation"

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1240
    .local v14, "time":J
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/base/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 1242
    .local v13, "yuvResult":[B
    const/4 v3, 0x0

    aget v3, v12, v3

    const/16 v4, 0x9c4

    if-lt v3, v4, :cond_8

    .line 1244
    const/4 v3, 0x0

    aget v3, v12, v3

    if-lez v3, :cond_7

    const/4 v3, 0x1

    aget v3, v12, v3

    if-lez v3, :cond_7

    .line 1246
    sget-object v3, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCapture() - Save YUV directly"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    new-instance v8, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    sget-object v3, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;->YUV_TO_JPEG:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    invoke-direct {v8, v13, v12, v3}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;-><init>([B[ILcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;)V

    .line 1250
    .local v8, "data":Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;
    new-instance v2, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ExifTags:Ljava/util/HashMap;

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;[B[FLjava/util/Map;Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    .line 1251
    .local v2, "saveTask":Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    .line 1270
    .end local v2    # "saveTask":Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;
    .end local v8    # "data":Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v14, v4, v14

    .line 1271
    sget-object v3, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopCapture() - Takes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms to process stitched picture"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    .end local v10    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v12    # "resultSize":[I
    .end local v13    # "yuvResult":[B
    .end local v14    # "time":J
    .end local v16    # "yuvResultRef":Lcom/oneplus/base/SimpleRef;, "Lcom/oneplus/base/SimpleRef<[B>;"
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v11, v1}, Lcom/oneplus/camera/panorama/PanoramaController;->completeCapture(ILcom/oneplus/camera/CaptureCompleteReason;)V

    .line 1185
    return-void

    .line 1218
    .end local v11    # "result":I
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1220
    :cond_6
    sget-object v3, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCapture() - No UI to notify"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1254
    .restart local v10    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v11    # "result":I
    .restart local v12    # "resultSize":[I
    .restart local v13    # "yuvResult":[B
    .restart local v14    # "time":J
    .restart local v16    # "yuvResultRef":Lcom/oneplus/base/SimpleRef;, "Lcom/oneplus/base/SimpleRef<[B>;"
    :cond_7
    sget-object v3, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopCapture() - Result size is too small : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v12, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v12, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1258
    :cond_8
    const/4 v3, 0x0

    aget v3, v12, v3

    if-lez v3, :cond_9

    const/4 v3, 0x1

    aget v3, v12, v3

    if-lez v3, :cond_9

    .line 1260
    new-instance v8, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    sget-object v3, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;->YUV_TO_BMP_TO_JPEG:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    invoke-direct {v8, v13, v12, v3}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;-><init>([B[ILcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;)V

    .line 1263
    .restart local v8    # "data":Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;
    new-instance v2, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ExifTags:Ljava/util/HashMap;

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;[B[FLjava/util/Map;Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    .line 1264
    .restart local v2    # "saveTask":Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    goto/16 :goto_2

    .line 1267
    .end local v2    # "saveTask":Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;
    .end local v8    # "data":Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;
    :cond_9
    sget-object v3, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopCapture() - Result size is too small : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v12, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v12, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1275
    .end local v10    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v11    # "result":I
    .end local v12    # "resultSize":[I
    .end local v13    # "yuvResult":[B
    .end local v14    # "time":J
    .end local v16    # "yuvResultRef":Lcom/oneplus/base/SimpleRef;, "Lcom/oneplus/base/SimpleRef<[B>;"
    :cond_a
    const/4 v11, 0x0

    .restart local v11    # "result":I
    goto/16 :goto_3
.end method


# virtual methods
.method public capture(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/CaptureHandle;I)Z
    .locals 10
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "frameCount"    # I

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->isEntered()Z

    move-result v4

    if-nez v4, :cond_0

    .line 508
    const/4 v4, 0x0

    return v4

    .line 509
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    if-eq v4, p1, :cond_1

    .line 511
    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "capture() - Unknown camera"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v4, 0x0

    return v4

    .line 517
    :cond_1
    iget-boolean v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z

    if-eqz v4, :cond_2

    .line 518
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 521
    .local v0, "frameSize":Landroid/util/Size;
    :goto_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    .line 522
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    .line 525
    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    .line 526
    .local v2, "paddingTargetWidth":I
    iget v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    .line 527
    .local v1, "paddingTargetHeight":I
    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    sparse-switch v4, :sswitch_data_0

    .line 537
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x413a147b    # 11.63f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    .line 538
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    .line 539
    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    iget v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameWidth:I

    add-int v2, v4, v5

    .line 540
    iget v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    .line 543
    :goto_1
    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "capture() - Target size : "

    iget v6, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "x"

    iget v8, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 546
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Direction:I

    invoke-static {v4, v5, v2, v1, v6}, Lcom/oneplus/camera/panorama/PanoramaController;->createEngine(IIIII)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    .line 547
    iget-wide v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 549
    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "capture() - Fail to create stitcher"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Fail to create panorama stitcher."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 520
    .end local v0    # "frameSize":Landroid/util/Size;
    .end local v1    # "paddingTargetHeight":I
    .end local v2    # "paddingTargetWidth":I
    :cond_2
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .restart local v0    # "frameSize":Landroid/util/Size;
    goto :goto_0

    .line 531
    .restart local v1    # "paddingTargetHeight":I
    .restart local v2    # "paddingTargetWidth":I
    :sswitch_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    .line 532
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x413a147b    # 11.63f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    .line 533
    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    .line 534
    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    iget v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameHeight:I

    add-int v1, v4, v5

    .line 535
    goto :goto_1

    .line 552
    :cond_3
    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "capture() - Engine : "

    const-string/jumbo v6, "0x%x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-nez v4, :cond_4

    .line 556
    const-class v4, Lcom/oneplus/camera/ExposureController;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/panorama/PanoramaController;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ExposureController;

    iput-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    .line 557
    :cond_4
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v4, :cond_7

    .line 558
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/oneplus/camera/ExposureController;->lockAutoExposure(I)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AELockHandle:Lcom/oneplus/base/Handle;

    .line 563
    :goto_2
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_WhiteBalanceController:Lcom/oneplus/camera/WhiteBalanceController;

    if-nez v4, :cond_5

    .line 564
    const-class v4, Lcom/oneplus/camera/WhiteBalanceController;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/panorama/PanoramaController;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/WhiteBalanceController;

    iput-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_WhiteBalanceController:Lcom/oneplus/camera/WhiteBalanceController;

    .line 565
    :cond_5
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_WhiteBalanceController:Lcom/oneplus/camera/WhiteBalanceController;

    if-eqz v4, :cond_8

    .line 566
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_WhiteBalanceController:Lcom/oneplus/camera/WhiteBalanceController;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/oneplus/camera/WhiteBalanceController;->lockAutoWhiteBalance(I)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AwbLockHandle:Lcom/oneplus/base/Handle;

    .line 571
    :goto_3
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-nez v4, :cond_6

    .line 572
    const-class v4, Lcom/oneplus/camera/FocusController;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/panorama/PanoramaController;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/FocusController;

    iput-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusController:Lcom/oneplus/camera/FocusController;

    .line 573
    :cond_6
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v4, :cond_9

    .line 574
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusController:Lcom/oneplus/camera/FocusController;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/oneplus/camera/FocusController;->lockFocus(I)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    .line 579
    :goto_4
    iget-boolean v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z

    if-nez v4, :cond_b

    .line 581
    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "capture() - Start burst capture"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Lcom/oneplus/camera/Camera;->capture(II)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 583
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 585
    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "capture() - Fail to start capture"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-wide v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    invoke-static {v4, v5}, Lcom/oneplus/camera/panorama/PanoramaController;->destroyEngine(J)V

    .line 587
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Engine:J

    .line 588
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AELockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AELockHandle:Lcom/oneplus/base/Handle;

    .line 589
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AwbLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_AwbLockHandle:Lcom/oneplus/base/Handle;

    .line 590
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    .line 591
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Fail to start capture."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 560
    :cond_7
    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "capture() - No ExposureController to lock AE"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 568
    :cond_8
    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "capture() - No WhiteBalanceController to lock Awb"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 576
    :cond_9
    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "capture() - No FocusController to lock focus"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 593
    :cond_a
    sget-object v4, Lcom/oneplus/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v4, v5}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 597
    :cond_b
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v4, :cond_c

    .line 598
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    iget v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    iget v6, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureInput(II)V

    .line 601
    :cond_c
    iput-object p2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureTime:J

    .line 603
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/Rotation;

    iput-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureRotation:Lcom/oneplus/base/Rotation;

    .line 604
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    iput-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_SensorSizeFull:Landroid/util/Size;

    .line 607
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 608
    .local v3, "pictureSize":Landroid/util/Size;
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_SensorCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 609
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_SensorCropRegion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_SensorSizeFull:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_SensorSizeFull:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 610
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    iget-object v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_SensorCropRegion:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/oneplus/camera/Camera;->calculateViewAngles(Landroid/graphics/Rect;I)Landroid/util/SizeF;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ViewAngles:Landroid/util/SizeF;

    .line 613
    const/4 v4, 0x0

    iput v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_FrameIndex:I

    .line 614
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 615
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_ResultSize:[I

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 618
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_LastGyroscopeChangeTime:J

    .line 619
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 620
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 621
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PartialRotatedAngles:[F

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v5, v4, v6

    .line 622
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 623
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 624
    iget-object v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_RotatedAngles:[F

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v5, v4, v6

    .line 627
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->isUILinked()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 628
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetWidth:I

    iget v6, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_TargetHeight:I

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x2710

    invoke-static {v4, v8, v5, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 633
    :goto_5
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    .line 634
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsCapturing:Z

    .line 635
    const/4 v4, 0x1

    return v4

    .line 630
    :cond_d
    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "capture() - No UI to notify"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 527
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
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 681
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 727
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->handleMessage(Landroid/os/Message;)V

    .line 679
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 684
    :sswitch_1
    iget-boolean v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsCapturing:Z

    if-eqz v1, :cond_0

    .line 686
    sget-object v1, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "handleMessage() - Fail to add frames, stop capture"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v2, v2, v1}, Lcom/oneplus/camera/panorama/PanoramaController;->stopCapture(ZZLcom/oneplus/camera/CaptureCompleteReason;)V

    goto :goto_0

    .line 693
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 694
    .local v0, "args":[Ljava/lang/Object;
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aget-object v1, v0, v2

    check-cast v1, [F

    invoke-direct {p0, v4, v5, v1}, Lcom/oneplus/camera/panorama/PanoramaController;->onGyroscopeChanged(J[F)V

    goto :goto_0

    .line 699
    .end local v0    # "args":[Ljava/lang/Object;
    :sswitch_3
    iput-boolean v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_IsMovingTooFast:Z

    .line 700
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v1

    const/16 v2, 0x2725

    invoke-static {v1, v2, v3, v3, v4}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 708
    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    .line 709
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    .line 710
    iget v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 711
    iget v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    .line 712
    :cond_1
    iget v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2

    .line 713
    iget v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    .line 714
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 717
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    iget v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureInput(II)V

    .line 718
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    iget v3, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureOutput(II)V

    goto :goto_0

    .line 723
    :sswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    sget-object v2, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v1, v3, v2}, Lcom/oneplus/camera/panorama/PanoramaController;->stopCapture(ZZLcom/oneplus/camera/CaptureCompleteReason;)V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    .line 681
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

    const/4 v8, 0x0

    .line 741
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->onEnter(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    return v8

    .line 745
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraNativeLibrary;->load()V

    .line 748
    invoke-static {}, Lcom/oneplus/camera/panorama/PanoramaController;->initializeEngine()Z

    move-result v0

    if-nez v0, :cond_1

    .line 750
    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onEnter() - Fail to initialize engine"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return v8

    .line 755
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    .line 756
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/panorama/PanoramaController;->setupCameraParams(Lcom/oneplus/camera/Camera;)V

    .line 759
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0, p0, v8}, Lcom/oneplus/camera/CameraThread;->setPhotoCaptureHandler(Lcom/oneplus/camera/PhotoCaptureHandler;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    .line 760
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 762
    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onEnter() - Fail to change capture handler"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    return v8

    .line 767
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Size;

    .line 768
    .local v9, "previewSize":Landroid/util/Size;
    :goto_0
    new-instance v0, Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameWidth:I

    iget v6, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x3

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/camera/media/YuvToBitmapWorker;-><init>(Landroid/content/Context;IIIIILandroid/graphics/Bitmap$Config;I)V

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    .line 769
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_PreviewFrameBitmapAvailListener:Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;

    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->setOnBitmapAvailableListener(Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;Landroid/os/Handler;)V

    .line 770
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    const/16 v2, 0x271a

    invoke-static {v0, v2, v8, v8, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 773
    const/4 v0, 0x1

    return v0

    .line 767
    .end local v9    # "previewSize":Landroid/util/Size;
    :cond_3
    new-instance v9, Landroid/util/Size;

    invoke-direct {v9, v1, v1}, Landroid/util/Size;-><init>(II)V

    .restart local v9    # "previewSize":Landroid/util/Size;
    goto :goto_0
.end method

.method protected onExit(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 782
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/panorama/PanoramaController;->restoreCameraParams(Lcom/oneplus/camera/Camera;)V

    .line 785
    iput-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_Camera:Lcom/oneplus/camera/Camera;

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandlerHandle:Lcom/oneplus/base/Handle;

    .line 792
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->close()V

    .line 795
    iput-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    .line 799
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->onExit(I)V

    .line 779
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 1069
    invoke-super {p0}, Lcom/oneplus/camera/ModeController;->onInitialize()V

    .line 1072
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    .line 1073
    .local v0, "cameraThread":Lcom/oneplus/camera/CameraThread;
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/panorama/PanoramaController$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/panorama/PanoramaController$4;-><init>(Lcom/oneplus/camera/panorama/PanoramaController;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1066
    return-void
.end method

.method public stopCapture(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)Z
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1285
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController;->isEntered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1286
    return v2

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    if-eq v0, p2, :cond_1

    .line 1289
    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCapture() - Unknown capture handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    return v2

    .line 1292
    :cond_1
    invoke-direct {p0, v1, v2, p3}, Lcom/oneplus/camera/panorama/PanoramaController;->stopCapture(ZZLcom/oneplus/camera/CaptureCompleteReason;)V

    .line 1293
    return v1
.end method
