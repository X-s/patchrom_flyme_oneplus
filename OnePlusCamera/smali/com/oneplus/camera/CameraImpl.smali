.class Lcom/oneplus/camera/CameraImpl;
.super Lcom/oneplus/camera/BaseCamera;
.source "CameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/CameraImpl$11;
    }
.end annotation


# static fields
.field private static final DEBUG_DUMP_CAPTURE_REQUEST:Z = false

.field private static final EXPOSURE_TIME_PREVIEW_MAX:J = 0xbebc200L

.field private static final FLAG_ON_PREVIEW_RESTART:I = 0x1

.field private static final INTERNAL_PREVIEW_CALLBACK_PROFILE:J = 0x7d0L

.field private static final INTERVAL_OPEN_DEVICE_RETRY:J = 0x64L

.field private static final JPEG_QUALITY_BURST:B = 0x5at

.field private static final MSG_AF_COMPLETE_TIMEOUT:I = 0x271c

.field private static final MSG_AF_START_TIMEOUT:I = 0x271b

.field private static final MSG_CAPTURE_SESSION_CLOSE_TIMEOUT:I = 0x2724

.field private static final MSG_FLASH_PRECAPTURE_TIMEOUT:I = 0x272e

.field private static final MSG_PREVIEW_FRAME_RECEIVED:I = 0x2710

.field private static final MSG_PREVIEW_FRAME_TIMEOUT:I = 0x2711

.field private static final MSG_START_AF:I = 0x271a

.field private static final PROFILE_PREVIEW_CALLBACK:Z = true

.field private static final TIMEOUT_AF_COMPLETE:J = 0x1388L

.field private static final TIMEOUT_AF_START:J = 0x1388L

.field private static final TIMEOUT_CAPTURE_SESSION_CLOSED:J = 0x3e8L

.field private static final TIMEOUT_OPEN_DEVICE_RETRY:J = 0x1388L

.field private static final TIMEOUT_PRECAPTURE_FLASH:J = 0x1388L

.field private static final TIMEOUT_PREVIEW_FRAME:J = 0xbb8L


# instance fields
.field private m_AeRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;"
        }
    .end annotation
.end field

.field private m_AfRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;"
        }
    .end annotation
.end field

.field private m_AwbMode:I

.field private m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final m_CameraInfo:Lcom/oneplus/camera/CameraInfo;

.field private final m_CameraManager:Landroid/hardware/camera2/CameraManager;

.field private m_CaptureHandle:Lcom/oneplus/base/Handle;

.field private m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final m_CaptureSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

.field private m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_DefaultVideoPreviewFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_Device:Landroid/hardware/camera2/CameraDevice;

.field private final m_DeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private m_DigitalZoom:F

.field private m_ExposureCompensation:F

.field private m_ExposureTime:J

.field private m_FaceListIndex:I

.field private final m_FaceLists:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$Face;",
            ">;"
        }
    .end annotation
.end field

.field private m_FlashMode:Lcom/oneplus/camera/FlashMode;

.field private m_FocusDistance:F

.field private m_FocusMode:Lcom/oneplus/camera/FocusMode;

.field private m_ISOValue:I

.field private final m_Id:Ljava/lang/String;

.field private m_IsAELocked:Z

.field private m_IsAutoFocusStarting:Z

.field private m_IsAutoFocusTimeout:Z

.field private m_IsAwbLocked:Z

.field private m_IsCaptureSequenceCompleted:Z

.field private m_IsCaptureSessionClosed:Z

.field private m_IsCaptureStartedReceived:Z

.field private m_IsFaceDetectionEnabled:Z

.field private m_IsPreCaptureFlashComplete:Z

.field private m_IsPreCaptureFlashTimeout:Z

.field private m_IsPreCaptureFlashTriggered:Z

.field private volatile m_IsPreviewReceived:Z

.field private m_IsPreviewStoppedForCapture:Z

.field private m_IsRawCaptureEnabled:Z

.field private m_IsRecordingMode:Z

.field private m_JpegQuality:I

.field private m_LastPreviewCbProfileTime:J

.field private m_LastRawFocusState:I

.field private m_MediaRecorder:Landroid/media/MediaRecorder;

.field private m_OpenCameraStartTime:J

.field private m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

.field private final m_PictureAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final m_PictureCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private m_PictureCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

.field private m_PictureReader:Landroid/media/ImageReader;

.field private m_PictureSize:Landroid/util/Size;

.field private m_PictureSurface:Landroid/view/Surface;

.field private m_PreviewCallbackBuffer:[B

.field private m_PreviewCallbackCount:I

.field private m_PreviewCallbackReader:Landroid/media/ImageReader;

.field private final m_PreviewCallbackReaderCallback:Landroid/media/ImageReader$OnImageAvailableListener;

.field private m_PreviewCallbackSurface:Landroid/view/Surface;

.field private final m_PreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private m_PreviewFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private m_PreviewSize:Landroid/util/Size;

.field private m_PreviewSurface:Landroid/view/Surface;

.field private m_PreviousAeState:Lcom/oneplus/camera/AutoExposureState;

.field private m_PreviousFlashState:I

.field private final m_RawCallback:Landroid/media/ImageReader$OnImageAvailableListener;

.field private m_RawReader:Landroid/media/ImageReader;

.field private m_RawSurface:Landroid/view/Surface;

.field private m_ReceivedCaptureCompletedCount:I

.field private final m_ReceivedCaptureCompletedResults:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private m_ReceivedCaptureStartedCount:I

.field private final m_ReceivedCaptureStartedResults:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private m_ReceivedPictureCount:I

.field private final m_ReceivedPictures:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[",
            "Lcom/oneplus/camera/media/ImagePlane;",
            ">;"
        }
    .end annotation
.end field

.field private m_ReceivedRawPictureCount:I

.field private final m_ReceivedRawPictures:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[",
            "Lcom/oneplus/camera/media/ImagePlane;",
            ">;"
        }
    .end annotation
.end field

.field private m_SceneMode:I

.field private volatile m_State:Lcom/oneplus/camera/Camera$State;

.field private m_TargetCapturedFrameCount:I

.field private final m_TempList:Ljava/util/List;

.field private final m_TempSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private m_VideoSize:Landroid/util/Size;

.field private m_VideoSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Lcom/oneplus/camera/CameraInfo;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "cameraChar"    # Lcom/oneplus/camera/CameraInfo;

    .prologue
    .line 298
    invoke-direct {p0, p1, p4}, Lcom/oneplus/camera/BaseCamera;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CameraInfo;)V

    .line 76
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_AeRegions:Ljava/util/List;

    .line 78
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_AfRegions:Ljava/util/List;

    .line 80
    const/4 v8, 0x1

    iput v8, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    .line 83
    new-instance v8, Lcom/oneplus/camera/CameraImpl$1;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/CameraImpl$1;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 102
    sget-object v8, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 109
    new-instance v8, Lcom/oneplus/camera/CameraImpl$2;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/CameraImpl$2;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_DeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 129
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    .line 131
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    .line 133
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/util/List;

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    .line 135
    sget-object v8, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    .line 136
    const/high16 v8, -0x40800000    # -1.0f

    iput v8, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusDistance:F

    .line 137
    sget-object v8, Lcom/oneplus/camera/FocusMode;->DISABLED:Lcom/oneplus/camera/FocusMode;

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 145
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    .line 146
    const/4 v8, -0x1

    iput v8, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    .line 154
    const/4 v8, -0x1

    iput v8, p0, Lcom/oneplus/camera/CameraImpl;->m_JpegQuality:I

    .line 156
    const/4 v8, 0x0

    iput v8, p0, Lcom/oneplus/camera/CameraImpl;->m_LastRawFocusState:I

    .line 160
    new-instance v8, Lcom/oneplus/camera/CameraImpl$3;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/CameraImpl$3;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 187
    new-instance v8, Lcom/oneplus/camera/CameraImpl$4;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/CameraImpl$4;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 219
    new-instance v8, Landroid/util/Size;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 226
    new-instance v8, Lcom/oneplus/camera/CameraImpl$5;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/CameraImpl$5;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReaderCallback:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 235
    new-instance v8, Lcom/oneplus/camera/CameraImpl$6;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/CameraImpl$6;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 244
    new-instance v8, Landroid/util/Size;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 246
    new-instance v8, Lcom/oneplus/camera/CameraImpl$7;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/CameraImpl$7;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_RawCallback:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 276
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    .line 278
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedResults:Ljava/util/Queue;

    .line 280
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    .line 282
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    .line 283
    const/4 v8, 0x0

    iput v8, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    .line 284
    sget-object v8, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    .line 286
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_TempList:Ljava/util/List;

    .line 288
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    .line 289
    new-instance v8, Landroid/util/Size;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 291
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSessionClosed:Z

    .line 300
    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CameraImpl() - ID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iput-object p2, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    .line 304
    iput-object p4, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraInfo:Lcom/oneplus/camera/CameraInfo;

    .line 305
    iput-object p3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    .line 308
    sget-object v8, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 309
    .local v6, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 310
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 313
    :cond_0
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p4, v8}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Range;

    .line 314
    .local v2, "fpsRangesList":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 315
    .local v1, "fpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    sget-object v8, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 316
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 318
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Range;

    .line 319
    .local v7, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x1e

    if-ne v8, v9, :cond_2

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x1e

    if-ge v8, v9, :cond_2

    .line 321
    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v4, v8, -0x14

    .line 322
    .local v4, "lowerBoundDiff":I
    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, -0x14

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v4, v8, :cond_2

    .line 323
    :cond_1
    iput-object v7, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    .line 316
    .end local v4    # "lowerBoundDiff":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 326
    .end local v7    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-eqz v8, :cond_5

    .line 327
    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v9, "CameraImpl() - Default video FPS range : "

    iget-object v10, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    invoke-static {v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    :goto_1
    sget-object v8, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 333
    .local v0, "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    sget-object v8, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 334
    sget-object v8, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 339
    :cond_4
    :goto_2
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p4, v8}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 340
    .local v5, "maxFaceCount":I
    if-lez v5, :cond_7

    .line 342
    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v9, "CameraImpl() - Max face count : "

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    :goto_3
    if-ltz v3, :cond_8

    .line 344
    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v9, v8, v3

    .line 343
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 329
    .end local v0    # "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    .end local v5    # "maxFaceCount":I
    :cond_5
    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v9, "CameraImpl() - No suitable FPS range for video"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 335
    .restart local v0    # "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    :cond_6
    sget-object v8, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 336
    sget-object v8, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    goto :goto_2

    .line 348
    .restart local v5    # "maxFaceCount":I
    :cond_7
    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v9, "CameraImpl() - Face detection is unsupported"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    :goto_4
    if-ltz v3, :cond_8

    .line 350
    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    aput-object v9, v8, v3

    .line 349
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 352
    :cond_8
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/camera/CameraImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onCaptureSequenceCompleted()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/camera/CameraImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onPreviewFrameReceived()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onPreviewCaptureCompleted(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/camera/CameraImpl;Landroid/media/Image;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;
    .param p1, "x1"    # Landroid/media/Image;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onRawPictureReceived(Landroid/media/Image;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/camera/CameraImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->stopCaptureInternal(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/camera/CameraImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/oneplus/camera/CameraImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashComplete:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/oneplus/camera/CameraImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onPreCaptureFlashComplete()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/camera/CameraImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->captureInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onDeviceOpened(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraDevice;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraImpl;->onDeviceError(Landroid/hardware/camera2/CameraDevice;IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/camera/CameraImpl;Landroid/media/Image;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;
    .param p1, "x1"    # Landroid/media/Image;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onPictureReceived(Landroid/media/Image;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "x2"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "x3"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p4, "x4"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/camera/CameraImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "x2"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "x3"    # J
    .param p5, "x4"    # J

    .prologue
    .line 51
    invoke-direct/range {p0 .. p6}, Lcom/oneplus/camera/CameraImpl;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/camera/CameraImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/CameraImpl;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addPreviewReceivedHandler(Lcom/oneplus/base/EventHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<Lcom/oneplus/camera/CameraCaptureEventArgs;>;"
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->hasHandlers(Lcom/oneplus/base/EventKey;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 371
    .local v0, "isFirstHandler":Z
    :goto_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-super {p0, v1, p1}, Lcom/oneplus/camera/BaseCamera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 372
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "addPreviewReceivedHandler() - Add preview call-back surface"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 376
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    .line 379
    :cond_0
    return-void

    .line 370
    .end local v0    # "isFirstHandler":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applyAELock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 2
    .param p1, "isLocked"    # Z
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 385
    if-nez p2, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 388
    :goto_0
    return v0

    .line 387
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 388
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private applyAERegions(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 11
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 407
    if-nez p2, :cond_0

    .line 430
    :goto_0
    return v1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_TempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 412
    iget-object v9, p0, Lcom/oneplus/camera/CameraImpl;->m_TempList:Ljava/util/List;

    .line 413
    .local v9, "regionList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    .line 415
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->createMeteringRectangle(Lcom/oneplus/camera/Camera$MeteringRect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v7

    .line 416
    .local v7, "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    if-eqz v7, :cond_1

    .line 417
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 420
    .end local v7    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    new-array v8, v10, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v0, v8, v1

    .line 429
    .local v8, "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :goto_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    move v1, v10

    .line 430
    goto :goto_0

    .line 424
    .end local v8    # "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 425
    .restart local v8    # "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-interface {v9, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_2
.end method

.method private applyAfRegions(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 11
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 439
    sget-object v2, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FocusMode:[I

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FocusMode;

    invoke-virtual {v0}, Lcom/oneplus/camera/FocusMode;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 472
    :cond_0
    :goto_0
    return v1

    .line 449
    :pswitch_0
    if-eqz p2, :cond_0

    .line 453
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_TempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 454
    iget-object v9, p0, Lcom/oneplus/camera/CameraImpl;->m_TempList:Ljava/util/List;

    .line 455
    .local v9, "regionList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    .line 457
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->createMeteringRectangle(Lcom/oneplus/camera/Camera$MeteringRect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v7

    .line 458
    .local v7, "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    if-eqz v7, :cond_1

    .line 459
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 462
    .end local v7    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 463
    new-array v8, v10, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v0, v8, v1

    .line 471
    .local v8, "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :goto_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    move v1, v10

    .line 472
    goto :goto_0

    .line 466
    .end local v8    # "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 467
    .restart local v8    # "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-interface {v9, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_2

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private applyAwbLock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 2
    .param p1, "isLocked"    # Z
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 395
    if-nez p2, :cond_0

    .line 396
    const/4 v0, 0x0

    .line 398
    :goto_0
    return v0

    .line 397
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 398
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private applyAwbMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 3
    .param p1, "awbMode"    # I
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/4 v0, 0x1

    .line 479
    if-eqz p2, :cond_1

    .line 481
    packed-switch p1, :pswitch_data_0

    .line 491
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 494
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 497
    :goto_1
    return v0

    .line 485
    :pswitch_0
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    if-nez v1, :cond_0

    .line 486
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 488
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 497
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 481
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private applyExposureCompensation(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 3
    .param p1, "ev"    # F
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 505
    if-nez p2, :cond_0

    .line 506
    const/4 v1, 0x0

    .line 513
    :goto_0
    return v1

    .line 509
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 512
    .local v0, "steps":I
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 513
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private applyExposureTime(JLandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 7
    .param p1, "exposureTime"    # J
    .param p3, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const-wide/32 v4, 0xbebc200

    const-wide/16 v2, -0x1

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 521
    if-nez p3, :cond_0

    .line 541
    :goto_0
    return v0

    .line 525
    :cond_0
    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 527
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v0, p3}, Lcom/oneplus/camera/CameraImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 528
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_1
    move v0, v6

    .line 541
    goto :goto_0

    .line 532
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 533
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 534
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_2

    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "applyExposureTime() - Exposure time is "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, ", lower to "

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, " nano secs"

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 537
    const-wide/32 p1, 0xbebc200

    .line 539
    :cond_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private applyFaceDetection(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 2
    .param p1, "isEnabled"    # Z
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/4 v0, 0x0

    .line 548
    if-nez p2, :cond_0

    .line 554
    :goto_0
    return v0

    .line 550
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-nez v1, :cond_1

    .line 551
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 554
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 553
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private applyFocusDistance(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 2
    .param p1, "focusDistance"    # F
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 562
    if-nez p2, :cond_0

    .line 563
    const/4 v0, 0x0

    .line 570
    :goto_0
    return v0

    .line 566
    :cond_0
    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    .line 567
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 570
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 568
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_DISTANCE_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private applyFocusMode(Lcom/oneplus/camera/FocusMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 5
    .param p1, "focusMode"    # Lcom/oneplus/camera/FocusMode;
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/4 v1, 0x0

    .line 580
    sget-object v2, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FocusMode:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/FocusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 604
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyFocusMode() - Unknown focus mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_0
    :goto_0
    return v1

    .line 583
    :pswitch_0
    const/4 v0, 0x0

    .line 609
    .local v0, "afModeValue":I
    :cond_1
    :goto_1
    if-eqz p2, :cond_0

    .line 611
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 613
    const/4 v1, 0x1

    goto :goto_0

    .line 587
    .end local v0    # "afModeValue":I
    :pswitch_1
    const/4 v0, 0x1

    .line 589
    .restart local v0    # "afModeValue":I
    goto :goto_1

    .line 591
    .end local v0    # "afModeValue":I
    :pswitch_2
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v2, :cond_2

    .line 592
    const/4 v0, 0x3

    .line 595
    .restart local v0    # "afModeValue":I
    :goto_2
    if-eqz p2, :cond_1

    .line 596
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 594
    .end local v0    # "afModeValue":I
    :cond_2
    const/4 v0, 0x4

    .restart local v0    # "afModeValue":I
    goto :goto_2

    .line 600
    .end local v0    # "afModeValue":I
    :pswitch_3
    const/4 v0, 0x0

    .line 602
    .restart local v0    # "afModeValue":I
    goto :goto_1

    .line 580
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private applyISO(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 3
    .param p1, "iso"    # I
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 623
    if-nez p2, :cond_0

    .line 638
    :goto_0
    return v0

    .line 627
    :cond_0
    if-ne p1, v1, :cond_1

    .line 629
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/camera/CameraImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 630
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 638
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 634
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 635
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 636
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private applyPreviewFpsRange(Landroid/util/Range;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 2
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-nez p2, :cond_0

    .line 646
    const/4 v0, 0x0

    .line 663
    :goto_0
    return v0

    .line 647
    :cond_0
    if-eqz p1, :cond_1

    .line 648
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 663
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 649
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-nez v0, :cond_3

    .line 651
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    if-eqz v0, :cond_2

    .line 652
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "applyPreviewFpsRange() - No default photo preview FPS range"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 658
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-eqz v0, :cond_4

    .line 659
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 661
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "applyPreviewFpsRange() - No default video preview FPS range"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private applyScalerCropRegion(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 2
    .param p1, "digitalZoom"    # F
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 670
    if-nez p2, :cond_0

    .line 671
    const/4 v0, 0x0

    .line 673
    :goto_0
    return v0

    .line 672
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->mappingZoomToScalerRegion(F)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 673
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private applySceneMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 3
    .param p1, "sceneMode"    # I
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/4 v0, 0x1

    .line 680
    if-eqz p2, :cond_1

    .line 682
    if-nez p1, :cond_0

    .line 684
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 690
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 693
    :goto_1
    return v0

    .line 688
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 693
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private applyToPreview()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 700
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_0

    .line 702
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-eq v1, v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "applyToPreview() - Capturing burst photos"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/4 v0, 0x0

    .line 710
    :cond_0
    :goto_0
    return v0

    .line 707
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "applyToPreview() - Fail to apply new request to preview"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private captureInternal()Z
    .locals 1

    .prologue
    .line 864
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->captureInternal(I)Z

    move-result v0

    return v0
.end method

.method private captureInternal(I)Z
    .locals 24
    .param p1, "flags"    # I

    .prologue
    .line 869
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "captureInternal() - Capture state is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const/16 v19, 0x0

    .line 1100
    :goto_0
    return v19

    .line 874
    :cond_0
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "captureInternal() - Preview state is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const/16 v19, 0x0

    goto :goto_0

    .line 881
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->isRawCaptureNeeded()Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 882
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 885
    :cond_2
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/Camera$HardwareLevel;

    .line 886
    .local v9, "hardwareLevel":Lcom/oneplus/camera/Camera$HardwareLevel;
    sget-object v19, Lcom/oneplus/camera/Camera$HardwareLevel;->LEGACY:Lcom/oneplus/camera/Camera$HardwareLevel;

    move-object/from16 v0, v19

    if-eq v9, v0, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3

    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/oneplus/camera/AutoExposureState;->SEARCHING:Lcom/oneplus/camera/AutoExposureState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviousAeState:Lcom/oneplus/camera/AutoExposureState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 892
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "captureInternal() - Trigger pre-capture flash"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 898
    .local v4, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 901
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/camera/CameraImpl;->prepareCaptureRequestParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 902
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 905
    const/16 v19, 0x272e

    const-wide/16 v20, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    move-object/from16 v19, v0

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v20

    new-instance v21, Lcom/oneplus/camera/CameraImpl$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraImpl$9;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v22

    invoke-virtual/range {v19 .. v22}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 921
    .end local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catch_0
    move-exception v6

    .line 923
    .local v6, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v6}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 929
    .end local v6    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    const/4 v7, 0x1

    .line 930
    .local v7, "enableZsl":Z
    :goto_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewStoppedForCapture:Z

    .line 931
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v19, v20, v22

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 933
    :cond_5
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewStoppedForCapture:Z

    .line 934
    const/4 v7, 0x0

    .line 938
    :cond_6
    const/4 v4, 0x0

    .line 939
    .restart local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 943
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "captureInternal() - Use video snapshot template"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 959
    :cond_7
    :goto_2
    if-nez v4, :cond_8

    .line 963
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "captureInternal() - Use still capture template"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 981
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewStoppedForCapture:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 983
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 986
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->isRawCaptureNeeded()Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "captureInternal() - add m_RawSurface"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 993
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/camera/CameraImpl;->prepareCaptureRequestParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 997
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/CameraImpl;->applyPreviewFpsRange(Landroid/util/Range;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 1000
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    .line 1001
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1004
    :cond_d
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    .line 1005
    .local v12, "pictureSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_CameraInfo:Lcom/oneplus/camera/CameraInfo;

    move-object/from16 v19, v0

    sget-object v20, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual/range {v19 .. v20}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/util/Size;

    .line 1006
    .local v18, "thumbSizes":[Landroid/util/Size;
    const/16 v17, 0x0

    .line 1007
    .local v17, "thumbSize":Landroid/util/Size;
    const/16 v16, 0x0

    .line 1008
    .local v16, "thumbPixelCount":I
    if-eqz v12, :cond_11

    if-eqz v18, :cond_11

    .line 1010
    invoke-static {v12}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;

    move-result-object v14

    .line 1011
    .local v14, "ratio":Lcom/oneplus/util/AspectRatio;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v10, v19, -0x1

    .local v10, "i":I
    :goto_3
    if-ltz v10, :cond_11

    .line 1013
    aget-object v15, v18, v10

    .line 1014
    .local v15, "size":Landroid/util/Size;
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v19

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v20

    mul-int v13, v19, v20

    .line 1015
    .local v13, "pixelCount":I
    invoke-static {v15}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v19

    move-object/from16 v0, v19

    if-ne v0, v14, :cond_e

    move/from16 v0, v16

    if-le v13, v0, :cond_e

    .line 1017
    move-object/from16 v17, v15

    .line 1018
    move/from16 v16, v13

    .line 1011
    :cond_e
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 929
    .end local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v7    # "enableZsl":Z
    .end local v10    # "i":I
    .end local v12    # "pictureSize":Landroid/util/Size;
    .end local v13    # "pixelCount":I
    .end local v14    # "ratio":Lcom/oneplus/util/AspectRatio;
    .end local v15    # "size":Landroid/util/Size;
    .end local v16    # "thumbPixelCount":I
    .end local v17    # "thumbSize":Landroid/util/Size;
    .end local v18    # "thumbSizes":[Landroid/util/Size;
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 949
    .restart local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .restart local v7    # "enableZsl":Z
    :cond_10
    if-eqz v7, :cond_7

    .line 953
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "captureInternal() - Use ZSL template"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 956
    :catch_1
    move-exception v19

    goto/16 :goto_2

    .line 966
    :catch_2
    move-exception v8

    .line 968
    .local v8, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "captureInternal() - Fail to create capture request builder"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 971
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 973
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1022
    .end local v8    # "ex":Ljava/lang/Throwable;
    .restart local v12    # "pictureSize":Landroid/util/Size;
    .restart local v16    # "thumbPixelCount":I
    .restart local v17    # "thumbSize":Landroid/util/Size;
    .restart local v18    # "thumbSizes":[Landroid/util/Size;
    :cond_11
    if-eqz v17, :cond_14

    .line 1023
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "captureInternal() - Thumbnail image size : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1029
    :goto_4
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1032
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 1034
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_JpegQuality:I

    move/from16 v19, v0

    if-gez v19, :cond_15

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "captureInternal() - Use default JPEG quality"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :goto_5
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/oneplus/base/Rotation;

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v5

    .line 1044
    .local v5, "deviceOrientation":I
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 1045
    neg-int v5, v5

    .line 1046
    :cond_12
    sget-object v20, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int v19, v19, v5

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x168

    move/from16 v19, v0

    move/from16 v0, v19

    rem-int/lit16 v0, v0, 0x168

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1049
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/Location;

    .line 1050
    .local v11, "location":Landroid/location/Location;
    if-eqz v11, :cond_13

    .line 1051
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1054
    :cond_13
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/CameraImpl;->m_PictureCaptureRequest:Landroid/hardware/camera2/CaptureRequest;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 1070
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewStoppedForCapture:Z

    move/from16 v19, v0

    if-eqz v19, :cond_17

    and-int/lit8 v19, p1, 0x1

    if-nez v19, :cond_17

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "captureInternal() - Restart capture session first"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->restartCaptureSession()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 1074
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1026
    .end local v5    # "deviceOrientation":I
    .end local v11    # "location":Landroid/location/Location;
    :cond_14
    :try_start_7
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v19

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v20

    const/16 v21, 0x64

    const/16 v22, 0x64

    const/16 v23, 0x1

    invoke-static/range {v19 .. v23}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v17

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "captureInternal() - Cannot find thumbnail image size with same aspect ratio, use "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_4

    .line 1056
    .end local v12    # "pictureSize":Landroid/util/Size;
    .end local v16    # "thumbPixelCount":I
    .end local v17    # "thumbSize":Landroid/util/Size;
    .end local v18    # "thumbSizes":[Landroid/util/Size;
    :catch_3
    move-exception v8

    .line 1058
    .restart local v8    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "captureInternal() - Fail to create capture request"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1060
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1061
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1062
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1037
    .end local v8    # "ex":Ljava/lang/Throwable;
    .restart local v12    # "pictureSize":Landroid/util/Size;
    .restart local v16    # "thumbPixelCount":I
    .restart local v17    # "thumbSize":Landroid/util/Size;
    .restart local v18    # "thumbSizes":[Landroid/util/Size;
    :cond_15
    :try_start_8
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_JpegQuality:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1040
    :cond_16
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v20, 0x5a

    invoke-static/range {v20 .. v20}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_5

    .line 1082
    .restart local v5    # "deviceOrientation":I
    .restart local v11    # "location":Landroid/location/Location;
    :cond_17
    :try_start_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_PictureCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_PictureCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v22

    invoke-virtual/range {v19 .. v22}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 1097
    :goto_6
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1100
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1085
    :cond_18
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_PictureCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_PictureCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v22

    invoke-virtual/range {v19 .. v22}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_6

    .line 1087
    :catch_4
    move-exception v8

    .line 1089
    .restart local v8    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "captureInternal() - Fail to start capture"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1091
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1092
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1093
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 946
    .end local v5    # "deviceOrientation":I
    .end local v8    # "ex":Ljava/lang/Throwable;
    .end local v11    # "location":Landroid/location/Location;
    .end local v12    # "pictureSize":Landroid/util/Size;
    .end local v16    # "thumbPixelCount":I
    .end local v17    # "thumbSize":Landroid/util/Size;
    .end local v18    # "thumbSizes":[Landroid/util/Size;
    :catch_5
    move-exception v19

    goto/16 :goto_2
.end method

.method private changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;
    .locals 2
    .param p1, "state"    # Lcom/oneplus/camera/Camera$State;

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    .line 1108
    .local v0, "oldState":Lcom/oneplus/camera/Camera$State;
    if-eq v0, p1, :cond_0

    .line 1110
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    .line 1111
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1113
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    return-object v1
.end method

.method private close(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 1186
    if-eqz p1, :cond_0

    .line 1190
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close() - Close \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' [start]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close() - Close \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' [end]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1193
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close() - Fail to close \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1199
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close() - Close \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' [end]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close() - Close \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' [end]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private closeInternal()V
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->close(Landroid/hardware/camera2/CameraDevice;)V

    .line 1175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    .line 1179
    :cond_0
    sget-object v0, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 1180
    return-void
.end method

.method private copyImage(Landroid/media/Image;)[Lcom/oneplus/camera/media/ImagePlane;
    .locals 1
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 1208
    const/4 v0, 0x0

    check-cast v0, [[B

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/CameraImpl;->copyImage(Landroid/media/Image;[[B)[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v0

    return-object v0
.end method

.method private copyImage(Landroid/media/Image;[[B)[Lcom/oneplus/camera/media/ImagePlane;
    .locals 11
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "dataBuffers"    # [[B

    .prologue
    const/4 v10, 0x0

    .line 1212
    if-nez p1, :cond_1

    .line 1214
    iget-object v7, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v8, "copyImage() - No image"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    new-array v5, v10, [Lcom/oneplus/camera/media/ImagePlane;

    .line 1240
    :cond_0
    :goto_0
    return-object v5

    .line 1219
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    .line 1220
    .local v4, "originalPlanes":[Landroid/media/Image$Plane;
    array-length v7, v4

    new-array v5, v7, [Lcom/oneplus/camera/media/ImagePlane;

    .line 1221
    .local v5, "planes":[Lcom/oneplus/camera/media/ImagePlane;
    array-length v7, v5

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    .line 1223
    if-eqz p2, :cond_2

    array-length v7, p2

    if-lt v7, v2, :cond_2

    aget-object v0, p2, v2

    .line 1224
    .local v0, "data":[B
    :goto_2
    aget-object v3, v4, v2

    .line 1225
    .local v3, "originalPlane":Landroid/media/Image$Plane;
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1226
    .local v6, "srcBuffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_3

    array-length v7, v0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 1229
    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v6, v0, v7, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1230
    new-instance v7, Lcom/oneplus/camera/media/ImagePlane;

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    invoke-direct {v7, v0, v8, v9}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    aput-object v7, v5, v2

    .line 1221
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1223
    .end local v0    # "data":[B
    .end local v3    # "originalPlane":Landroid/media/Image$Plane;
    .end local v6    # "srcBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 1233
    .restart local v0    # "data":[B
    .restart local v3    # "originalPlane":Landroid/media/Image$Plane;
    .restart local v6    # "srcBuffer":Ljava/nio/ByteBuffer;
    :cond_3
    new-instance v7, Lcom/oneplus/camera/media/ImagePlane;

    invoke-direct {v7, v3}, Lcom/oneplus/camera/media/ImagePlane;-><init>(Landroid/media/Image$Plane;)V

    aput-object v7, v5, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1237
    .end local v0    # "data":[B
    .end local v2    # "i":I
    .end local v3    # "originalPlane":Landroid/media/Image$Plane;
    .end local v4    # "originalPlanes":[Landroid/media/Image$Plane;
    .end local v5    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    .end local v6    # "srcBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 1239
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v8, "copyImage() - Fail to copy image"

    invoke-static {v7, v8, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1240
    new-array v5, v10, [Lcom/oneplus/camera/media/ImagePlane;

    goto :goto_0
.end method

.method private copyImageAsNV21(Landroid/media/Image;)[Lcom/oneplus/camera/media/ImagePlane;
    .locals 8
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    const/4 v7, 0x0

    .line 1248
    if-nez p1, :cond_0

    .line 1250
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "copyImageAsNV21() - No image"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    new-array v2, v7, [Lcom/oneplus/camera/media/ImagePlane;

    .line 1267
    :goto_0
    return-object v2

    .line 1255
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    .line 1257
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 1258
    .local v0, "buffer":[B
    invoke-static {p1, v0}, Lcom/oneplus/camera/media/YuvUtils;->multiPlaneYuvToNV21(Landroid/media/Image;[B)V

    .line 1259
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/oneplus/camera/media/ImagePlane;

    const/4 v3, 0x0

    new-instance v4, Lcom/oneplus/camera/media/ImagePlane;

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v6

    invoke-direct {v4, v0, v5, v6}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1264
    .end local v0    # "buffer":[B
    :catch_0
    move-exception v1

    .line 1266
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "copyImageAsNV21() - Fail to copy image"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1267
    new-array v2, v7, [Lcom/oneplus/camera/media/ImagePlane;

    goto :goto_0

    .line 1261
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyImageAsNV21() - Unsupported image format : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/oneplus/camera/media/ImagePlane;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private createMeteringRectangle(Lcom/oneplus/camera/Camera$MeteringRect;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 9
    .param p1, "rect"    # Lcom/oneplus/camera/Camera$MeteringRect;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1275
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->isIgnorable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    const/4 v0, 0x0

    .line 1283
    :goto_0
    return-object v0

    .line 1277
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    .line 1278
    .local v8, "sensorSize":Landroid/util/Size;
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getLeft()F

    move-result v0

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v1, v0

    .line 1279
    .local v1, "left":I
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getTop()F

    move-result v0

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v2, v0

    .line 1280
    .local v2, "top":I
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getRight()F

    move-result v0

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v7, v0

    .line 1281
    .local v7, "right":I
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getBottom()F

    move-result v0

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v6, v0

    .line 1282
    .local v6, "bottom":I
    const/high16 v0, 0x447a0000    # 1000.0f

    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getWeight()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    add-int/lit8 v5, v0, 0x0

    .line 1283
    .local v5, "weight":I
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    sub-int v3, v7, v1

    sub-int v4, v6, v2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    goto :goto_0
.end method

.method private dumpCaptureRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;

    .prologue
    .line 1291
    if-eqz p2, :cond_2

    .line 1293
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "dumpCaptureRequest() - >>>>>> Start: "

    invoke-static {v4, v5, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1294
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1296
    .local v2, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1297
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    .line 1298
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1299
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1302
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "dumpCaptureRequest() - Request: "

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1301
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast v3, [Ljava/lang/Object;

    .end local v3    # "value":Ljava/lang/Object;
    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1304
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "dumpCaptureRequest() - <<<<<< End"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private getCameraCharacteristic()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 3

    .prologue
    .line 1368
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v1, :cond_0

    .line 1370
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "getCameraCharacteristic() - camera manager is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    const/4 v1, 0x0

    .line 1382
    :goto_0
    return-object v1

    .line 1375
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v1, :cond_1

    .line 1376
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1382
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    goto :goto_0

    .line 1378
    :catch_0
    move-exception v0

    .line 1380
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "getCameraCharacteristic() - failed to get camera characteristic"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private isRawCaptureNeeded()Z
    .locals 1

    .prologue
    .line 1432
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRawCaptureEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mappingZoomToScalerRegion(F)Landroid/graphics/Rect;
    .locals 5
    .param p1, "zoom"    # F

    .prologue
    const/4 v4, 0x0

    .line 1438
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 1439
    .local v1, "sensorSize":Landroid/util/Size;
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p1

    float-to-int v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1440
    .local v0, "cropRegion":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1441
    return-object v0
.end method

.method private onAutoFocusStartTimeout()V
    .locals 2

    .prologue
    .line 1448
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusStartTimeout()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 1452
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1454
    :cond_0
    return-void
.end method

.method private onAutoFocusTimeout()V
    .locals 3

    .prologue
    .line 1460
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-ne v0, v1, :cond_1

    .line 1462
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusTimeout()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1468
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    .line 1472
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 1473
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/FocusState;->UNFOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1475
    :cond_1
    return-void
.end method

.method private onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 7
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p4, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 1482
    sget-object v4, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 1483
    .local v0, "captureState":Lcom/oneplus/camera/OperationState;
    sget-object v4, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1489
    :pswitch_0
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCaptureCompleted() - Capture state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    :goto_0
    return-void

    .line 1492
    :pswitch_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v4, :cond_0

    .line 1494
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "onCaptureCompleted() - No capture handle"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1500
    :cond_0
    invoke-direct {p0, p3}, Lcom/oneplus/camera/CameraImpl;->updatePropertyState(Landroid/hardware/camera2/CaptureResult;)V

    .line 1503
    iget v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedCount:I

    .line 1506
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "onCaptureCompleted() - Index : "

    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1507
    if-nez p4, :cond_2

    const/4 v3, 0x1

    .line 1508
    .local v3, "success":Z
    :goto_1
    if-nez v3, :cond_1

    sget-object v4, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-eq v4, v5, :cond_1

    .line 1509
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "onCaptureCompleted() - Capture failed"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    :cond_1
    iget v4, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedCount:I

    iget v5, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-le v4, v5, :cond_3

    .line 1514
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "onCaptureCompleted() - Unexpected call-back, drop"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1507
    .end local v3    # "success":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1520
    .restart local v3    # "success":Z
    :cond_3
    const/4 v2, 0x0

    .line 1521
    .local v2, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-eqz v3, :cond_6

    .line 1523
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/camera/media/ImagePlane;

    .line 1524
    .local v1, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v1, :cond_4

    .line 1526
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "onCaptureCompleted() - Wait for picture"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v4, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1532
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->isRawCaptureNeeded()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1534
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v2, [Lcom/oneplus/camera/media/ImagePlane;

    .line 1535
    .restart local v2    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v2, :cond_5

    .line 1537
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "onCaptureCompleted() - Wait for raw picture"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v4, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1544
    :cond_5
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v1, [Lcom/oneplus/camera/media/ImagePlane;

    .line 1550
    .restart local v1    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :goto_2
    invoke-direct {p0, p3, v1, v2}, Lcom/oneplus/camera/CameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    goto/16 :goto_0

    .line 1547
    .end local v1    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    goto :goto_2

    .line 1483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onCaptureCompleted(Z)V
    .locals 3
    .param p1, "continueCaptureSession"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1554
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureCompleted()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedResults:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1558
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1559
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1560
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1563
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashComplete:Z

    .line 1564
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTimeout:Z

    .line 1565
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    .line 1566
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureStartedReceived:Z

    .line 1567
    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    .line 1568
    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedCount:I

    .line 1569
    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    .line 1570
    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    .line 1571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    .line 1572
    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    .line 1573
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSequenceCompleted:Z

    .line 1574
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1575
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1578
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 1580
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewStoppedForCapture:Z

    if-eqz v0, :cond_2

    .line 1582
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureCompleted() - Restart capture session"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->restartCaptureSession()V

    .line 1593
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1595
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_3

    .line 1597
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureCompleted() - Stop capture session"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 1599
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 1607
    :cond_1
    :goto_1
    return-void

    .line 1585
    :cond_2
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureCompleted() - Restart preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    goto :goto_0

    .line 1601
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_1

    .line 1603
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureCompleted() - Continue stopping preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    goto :goto_1
.end method

.method private onCaptureSequenceCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1614
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureSequenceCompleted()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSequenceCompleted:Z

    .line 1620
    sget-object v1, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1632
    :goto_0
    :pswitch_0
    return-void

    .line 1623
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureSequenceCompleted() - Wait for picture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1629
    :cond_0
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto :goto_0

    .line 1620
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 6
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1640
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eq v1, p1, :cond_1

    .line 1642
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureSessionClosed() - Unknown session : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    :cond_0
    :goto_0
    return-void

    .line 1646
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureSessionClosed() - Session : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1650
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2724

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1653
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 1655
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1656
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    .line 1658
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_3

    .line 1660
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    invoke-virtual {v1, v4, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1661
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 1662
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    .line 1666
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    .line 1668
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1669
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    .line 1671
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_5

    .line 1673
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    invoke-virtual {v1, v4, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1674
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 1675
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    .line 1679
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1681
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_6

    .line 1682
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1681
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1683
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1687
    .end local v0    # "i":I
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x271a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1690
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    .line 1691
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1692
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 1693
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 1694
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    .line 1695
    iput v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    .line 1696
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    .line 1697
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    if-eqz v1, :cond_8

    .line 1699
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    .line 1700
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1704
    :cond_8
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1707
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v1, :cond_9

    .line 1709
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1710
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    .line 1712
    :cond_9
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_a

    .line 1714
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    invoke-virtual {v1, v4, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1715
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 1716
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    .line 1718
    :cond_a
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    .line 1721
    sget-object v2, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1734
    :goto_2
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1737
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v2, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    if-ne v1, v2, :cond_0

    .line 1739
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureSessionClosed() - Close camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->closeInternal()V

    goto/16 :goto_0

    .line 1725
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureSessionClosed() - Restart capture session immediately"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startCaptureSession()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1729
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureSessionClosed() - Fail to restart capture session"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1721
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onCaptureSessionConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 1805
    if-eqz p1, :cond_0

    .line 1806
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 1809
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_1

    .line 1811
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureSessionConfigured() - Current session state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    :goto_0
    return-void

    .line 1815
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureSessionConfigureFailed()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 1821
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_2

    .line 1823
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureSessionConfigureFailed() - Fail to create capture session, cancel starting preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1829
    :cond_2
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1830
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0
.end method

.method private onCaptureSessionConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_1

    .line 1752
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureSessionConfigured() - Current session state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 1754
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 1756
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1757
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 1798
    :cond_0
    :goto_0
    return-void

    .line 1762
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureSessionConfigured() - Session : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 1766
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1769
    sget-object v1, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1776
    :pswitch_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 1781
    :pswitch_2
    new-instance v0, Lcom/oneplus/camera/CameraImpl$10;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraImpl$10;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    const-wide/16 v2, 0x64

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1772
    :pswitch_3
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequest()Z

    goto :goto_0

    .line 1792
    :pswitch_4
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequest()Z

    goto :goto_0

    .line 1769
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1776
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .prologue
    .line 1838
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 1839
    .local v0, "captureState":Lcom/oneplus/camera/OperationState;
    sget-object v1, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1845
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureStarted() - Capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    :goto_0
    return-void

    .line 1848
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v1, :cond_0

    .line 1850
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureStarted() - No capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1855
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureStarted() - Index : "

    iget v3, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1856
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    .line 1857
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureStartedReceived:Z

    .line 1860
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-le v1, v2, :cond_1

    .line 1862
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureStarted() - Unexpected call-back, drop"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1867
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    iget v3, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;I)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0

    .line 1839
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDeviceError(Landroid/hardware/camera2/CameraDevice;IZ)V
    .locals 7
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I
    .param p3, "disconnected"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1876
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v3, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-ne v2, v3, :cond_3

    .line 1878
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/camera/CameraImpl;->m_OpenCameraStartTime:J

    sub-long v0, v2, v4

    .line 1879
    .local v0, "duration":J
    const-wide/16 v2, 0x1324

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 1881
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeviceError() - Retry opening camera, elapsed time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1888
    :goto_0
    invoke-direct {p0, v6}, Lcom/oneplus/camera/CameraImpl;->openInternal(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1948
    .end local v0    # "duration":J
    :cond_0
    :goto_1
    return-void

    .line 1891
    .restart local v0    # "duration":J
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeviceError() - Cannot open camera in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v2, v3, :cond_2

    .line 1928
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "onDeviceError() - Cancel preview starting"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1934
    :cond_2
    if-eqz p3, :cond_6

    .line 1936
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeviceError() - Camera \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' disconnected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    const/4 v4, -0x2

    invoke-direct {v3, p0, v4}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;-><init>(Lcom/oneplus/camera/Camera;I)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1946
    :goto_2
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v3, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-ne v2, v3, :cond_0

    .line 1947
    sget-object v2, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    goto :goto_1

    .line 1895
    .end local v0    # "duration":J
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeviceError() - Current state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->EVENT_ERROR:Lcom/oneplus/base/EventKey;

    sget-object v3, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1901
    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraImpl;->close(I)V

    .line 1902
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1903
    sget-object v2, Lcom/oneplus/camera/Camera$State;->UNAVAILABLE:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 1911
    :cond_4
    :goto_3
    sget-object v3, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v2}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 1921
    :goto_4
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    goto/16 :goto_1

    .line 1904
    :cond_5
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v3, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    if-ne v2, v3, :cond_4

    .line 1906
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->EVENT_OPEN_CANCELLED:Lcom/oneplus/base/EventKey;

    sget-object v3, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1907
    sget-object v2, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    goto :goto_3

    .line 1915
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "onDeviceError() - Stop capture directly"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    invoke-direct {p0, v6}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto :goto_4

    .line 1941
    .restart local v0    # "duration":J
    :cond_6
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeviceError() - Fail to open camera \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    invoke-direct {v3, p0, p2}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;-><init>(Lcom/oneplus/camera/Camera;I)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto/16 :goto_2

    .line 1886
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 1911
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onDeviceOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-eq v0, v1, :cond_2

    .line 1957
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceOpened() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->close(Landroid/hardware/camera2/CameraDevice;)V

    .line 1959
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1960
    sget-object v0, Lcom/oneplus/camera/Camera$State;->UNAVAILABLE:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 1987
    :cond_0
    :goto_0
    return-void

    .line 1961
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    if-ne v0, v1, :cond_0

    .line 1963
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->EVENT_OPEN_CANCELLED:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1964
    sget-object v0, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    goto :goto_0

    .line 1969
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceOpened() - Camera ID : \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', Device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    .line 1975
    sget-object v0, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 1978
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 1980
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startCaptureSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1982
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onDeviceOpened() - Fail to start capture session"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onFirstPreviewFrameReceived()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2071
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSessionClosed:Z

    if-eqz v1, :cond_1

    .line 2099
    :cond_0
    :goto_0
    return-void

    .line 2074
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "onFirstPreviewFrameReceived()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2080
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_2

    .line 2082
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "onFirstPreviewFrameReceived() - Continue stopping capture session"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 2084
    invoke-direct {p0, v3}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    goto :goto_0

    .line 2089
    :cond_2
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 2090
    .local v0, "previewState":Lcom/oneplus/camera/OperationState;
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_3

    .line 2092
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFirstPreviewFrameReceived() - Preview state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2097
    :cond_3
    iput-boolean v4, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    .line 2098
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V
    .locals 14
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p2, "picturePlanes"    # [Lcom/oneplus/camera/media/ImagePlane;
    .param p3, "rawPicturePlanes"    # [Lcom/oneplus/camera/media/ImagePlane;

    .prologue
    .line 2106
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/camera/OperationState;

    .line 2107
    .local v11, "captureState":Lcom/oneplus/camera/OperationState;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v1, v0

    if-nez v1, :cond_8

    :cond_0
    const/4 v12, 0x1

    .line 2108
    .local v12, "failed":Z
    :goto_0
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v1, :cond_9

    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lt v1, v2, :cond_9

    const/4 v13, 0x1

    .line 2109
    .local v13, "frameCountReached":Z
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->isRawCaptureNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2111
    if-nez v12, :cond_1

    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v1, v0

    if-nez v1, :cond_a

    :cond_1
    const/4 v12, 0x1

    .line 2112
    :goto_2
    if-eqz v13, :cond_b

    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lt v1, v2, :cond_b

    const/4 v13, 0x1

    .line 2115
    :cond_2
    :goto_3
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v11, v1, :cond_4

    .line 2117
    if-nez v13, :cond_3

    if-eqz v12, :cond_4

    .line 2119
    :cond_3
    if-eqz v12, :cond_c

    .line 2120
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "onPictureReceived() - Capture failed, start completing capture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    :goto_4
    sget-object v11, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    .line 2124
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraImpl;->stopCaptureInternal(Z)V

    .line 2129
    :cond_4
    if-nez v12, :cond_d

    .line 2131
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2132
    .local v3, "pictureFormat":I
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 2133
    .local v4, "pictureSize":Landroid/util/Size;
    sget-object v7, Lcom/oneplus/camera/CameraImpl;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v5, p2

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2135
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->isRawCaptureNeeded()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2137
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    .line 2138
    .local v8, "sensorSize":Landroid/util/Size;
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v6, v2, -0x1

    const/16 v7, 0x20

    move-object/from16 v9, p3

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2145
    .end local v3    # "pictureFormat":I
    .end local v4    # "pictureSize":Landroid/util/Size;
    .end local v8    # "sensorSize":Landroid/util/Size;
    :cond_5
    :goto_5
    if-nez v13, :cond_6

    if-eqz v12, :cond_7

    :cond_6
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v11, v1, :cond_7

    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSequenceCompleted:Z

    if-eqz v1, :cond_7

    .line 2146
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    .line 2147
    :cond_7
    return-void

    .line 2107
    .end local v12    # "failed":Z
    .end local v13    # "frameCountReached":Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2108
    .restart local v12    # "failed":Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 2111
    .restart local v13    # "frameCountReached":Z
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 2112
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 2122
    :cond_c
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "onPictureReceived() - Frame count reached, start completing capture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2142
    :cond_d
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    iget v5, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v5}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;I)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_5
.end method

.method private onPictureReceived(Landroid/media/Image;)V
    .locals 10
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 1994
    sget-object v6, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    .line 1995
    .local v1, "captureState":Lcom/oneplus/camera/OperationState;
    sget-object v6, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2001
    :pswitch_0
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPictureReceived() - Capture state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    :goto_0
    return-void

    .line 2004
    :pswitch_1
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v6, :cond_0

    .line 2006
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onPictureReceived() - No capture handle"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2012
    :cond_0
    sget-object v6, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x11

    if-eq v6, v7, :cond_2

    .line 2013
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->copyImage(Landroid/media/Image;)[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v4

    .line 2018
    .local v4, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :goto_1
    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    .line 2019
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2020
    .local v3, "logBuffer":Ljava/lang/StringBuilder;
    const-string v6, "{ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v6, v4

    if-ge v2, v6, :cond_3

    .line 2023
    if-lez v2, :cond_1

    .line 2024
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    :cond_1
    aget-object v6, v4, v2

    invoke-virtual {v6}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2021
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2015
    .end local v2    # "i":I
    .end local v3    # "logBuffer":Ljava/lang/StringBuilder;
    .end local v4    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->copyImageAsNV21(Landroid/media/Image;)[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v4

    .restart local v4    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    goto :goto_1

    .line 2027
    .restart local v2    # "i":I
    .restart local v3    # "logBuffer":Ljava/lang/StringBuilder;
    :cond_3
    const-string v6, " }"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2028
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onPictureReceived() - Index : "

    iget v8, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, ", picture data size : "

    invoke-static {v6, v7, v8, v9, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2031
    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    iget v7, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-le v6, v7, :cond_4

    .line 2033
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onPictureReceived() - Unexpected picture, drop"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2038
    :cond_4
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2039
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    if-nez v0, :cond_5

    .line 2041
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2042
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onPictureReceived() - Received picture before capture completed"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2047
    :cond_5
    const/4 v5, 0x0

    .line 2048
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->isRawCaptureNeeded()Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2050
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v5, [Lcom/oneplus/camera/media/ImagePlane;

    .line 2051
    .restart local v5    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v5, :cond_6

    .line 2053
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onPictureReceived() - Wait for raw picture"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2060
    :cond_6
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2063
    .restart local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    invoke-direct {p0, v0, v4, v5}, Lcom/oneplus/camera/CameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    goto/16 :goto_0

    .line 1995
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onPreCaptureFlashComplete()V
    .locals 2

    .prologue
    .line 2153
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTimeout:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashComplete:Z

    if-eqz v0, :cond_0

    .line 2155
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onPreCaptureFlashComplete() - Capture for pre-capture flash timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    .line 2158
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->captureInternal()Z

    .line 2160
    :cond_0
    return-void
.end method

.method private onPreviewCaptureCompleted(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 2167
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 2168
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onFirstPreviewFrameReceived()V

    .line 2171
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/AutoExposureState;

    .line 2172
    .local v1, "prevAeState":Lcom/oneplus/camera/AutoExposureState;
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updatePropertyState(Landroid/hardware/camera2/CaptureResult;)V

    .line 2174
    const/4 v0, 0x0

    .line 2175
    .local v0, "aeStateChanged":Z
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 2176
    const/4 v0, 0x1

    .line 2179
    :cond_1
    sget-object v2, Lcom/oneplus/camera/AutoExposureState;->PRECAPTURE:Lcom/oneplus/camera/AutoExposureState;

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v2, v3, :cond_2

    .line 2183
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "onPreviewCaptureCompleted() - Pre-capture flash completed, capture photo"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    const/16 v2, 0x272e

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 2185
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    .line 2186
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->captureInternal()Z

    .line 2188
    :cond_2
    return-void
.end method

.method private onPreviewFrameReceived()V
    .locals 23

    .prologue
    .line 2196
    sget-object v4, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraImpl;->hasHandlers(Lcom/oneplus/base/EventKey;)Z

    move-result v12

    .line 2197
    .local v12, "hasHandlers":Z
    const/4 v8, 0x0

    .line 2198
    .local v8, "planes":[Lcom/oneplus/camera/media/ImagePlane;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    if-eqz v4, :cond_3

    .line 2200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v14

    .line 2203
    .local v14, "image":Landroid/media/Image;
    if-eqz v12, :cond_2

    if-eqz v14, :cond_2

    .line 2205
    :try_start_0
    invoke-virtual {v14}, Landroid/media/Image;->getWidth()I

    move-result v19

    .line 2206
    .local v19, "width":I
    invoke-virtual {v14}, Landroid/media/Image;->getHeight()I

    move-result v13

    .line 2207
    .local v13, "height":I
    mul-int v4, v19, v13

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v18, v4, 0x2

    .line 2208
    .local v18, "nv21Size":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    array-length v4, v4

    move/from16 v0, v18

    if-eq v4, v0, :cond_1

    .line 2209
    :cond_0
    move/from16 v0, v18

    new-array v4, v0, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    .line 2210
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    invoke-static {v14, v4}, Lcom/oneplus/camera/media/YuvUtils;->multiPlaneYuvToNV21(Landroid/media/Image;[B)V

    .line 2211
    const/4 v4, 0x1

    new-array v8, v4, [Lcom/oneplus/camera/media/ImagePlane;

    .end local v8    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    const/4 v4, 0x0

    new-instance v5, Lcom/oneplus/camera/media/ImagePlane;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    const/4 v7, 0x1

    move/from16 v0, v19

    invoke-direct {v5, v6, v7, v0}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    aput-object v5, v8, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2225
    .end local v13    # "height":I
    .end local v18    # "nv21Size":I
    .end local v19    # "width":I
    .restart local v8    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_2
    if-eqz v14, :cond_3

    .line 2226
    invoke-virtual {v14}, Landroid/media/Image;->close()V

    .line 2231
    .end local v14    # "image":Landroid/media/Image;
    :cond_3
    sget-object v4, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v4, v5, :cond_9

    const/4 v15, 0x1

    .line 2232
    .local v15, "isPreviewStarted":Z
    :goto_0
    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v4, :cond_4

    .line 2234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "onPreviewFrameReceived() - Remove preview call-back surface"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 2236
    if-eqz v15, :cond_4

    .line 2237
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    .line 2243
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 2244
    .local v20, "profileTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    sub-long v16, v20, v4

    .line 2245
    .local v16, "interval":J
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    .line 2246
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_a

    const-wide/16 v4, 0x7d0

    cmp-long v4, v16, v4

    if-ltz v4, :cond_a

    .line 2248
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    int-to-double v4, v4

    move-wide/from16 v0, v16

    long-to-double v6, v0

    div-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v10, v4, v6

    .line 2249
    .local v10, "fps":D
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    .line 2250
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    .line 2251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "onPreviewFrameReceived() - FPS : %.1f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    .end local v10    # "fps":D
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    if-nez v4, :cond_6

    .line 2259
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->onFirstPreviewFrameReceived()V

    .line 2262
    :cond_6
    if-nez v15, :cond_b

    .line 2268
    :cond_7
    :goto_2
    return-void

    .line 2225
    .end local v8    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    .end local v15    # "isPreviewStarted":Z
    .end local v16    # "interval":J
    .end local v20    # "profileTime":J
    .restart local v14    # "image":Landroid/media/Image;
    :catchall_0
    move-exception v4

    if-eqz v14, :cond_8

    .line 2226
    invoke-virtual {v14}, Landroid/media/Image;->close()V

    :cond_8
    throw v4

    .line 2231
    .end local v14    # "image":Landroid/media/Image;
    .restart local v8    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2253
    .restart local v15    # "isPreviewStarted":Z
    .restart local v16    # "interval":J
    .restart local v20    # "profileTime":J
    :cond_a
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    .line 2254
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    goto :goto_1

    .line 2266
    :cond_b
    if-eqz v12, :cond_7

    if-eqz v8, :cond_7

    .line 2267
    sget-object v22, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_2
.end method

.method private onRawPictureReceived(Landroid/media/Image;)V
    .locals 10
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 2274
    sget-object v6, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    .line 2275
    .local v1, "captureState":Lcom/oneplus/camera/OperationState;
    sget-object v6, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2281
    :pswitch_0
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRawPictureReceived() - Capture state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    :goto_0
    return-void

    .line 2284
    :pswitch_1
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v6, :cond_0

    .line 2286
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onRawPictureReceived() - No capture handle"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2291
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->copyImage(Landroid/media/Image;)[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v5

    .line 2294
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    .line 2295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2296
    .local v3, "logBuffer":Ljava/lang/StringBuilder;
    const-string v6, "{ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2297
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 2299
    if-lez v2, :cond_1

    .line 2300
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2301
    :cond_1
    aget-object v6, v5, v2

    invoke-virtual {v6}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2297
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2303
    :cond_2
    const-string v6, " }"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2304
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onRawPictureReceived() - Index : "

    iget v8, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, ", picture data size : "

    invoke-static {v6, v7, v8, v9, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2307
    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v6, :cond_3

    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    iget v7, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-le v6, v7, :cond_3

    .line 2309
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onRawPictureReceived() - Unexpected picture, drop"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2314
    :cond_3
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2315
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    if-nez v0, :cond_4

    .line 2317
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2318
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onRawPictureReceived() - Received picture before capture completed"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2323
    :cond_4
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/oneplus/camera/media/ImagePlane;

    .line 2324
    .local v4, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v4, :cond_5

    .line 2326
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onRawPictureReceived() - Wait for picture"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2332
    :cond_5
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2335
    .restart local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    invoke-direct {p0, v0, v4, v5}, Lcom/oneplus/camera/CameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    goto/16 :goto_0

    .line 2275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private openInternal(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .line 2386
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openInternal() - Start opening camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_DeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2388
    const/4 v1, 0x1

    .line 2394
    :goto_0
    return v1

    .line 2390
    :catch_0
    move-exception v0

    .line 2392
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openInternal() - Fail to start opening camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2393
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    const/4 v3, -0x4

    invoke-direct {v2, p0, v3}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;-><init>(Lcom/oneplus/camera/Camera;I)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2394
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private prepareCaptureRequestParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3
    .param p1, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2406
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAELocked:Z

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyAELock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2407
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AeRegions:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyAERegions(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2408
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureCompensation:F

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyExposureCompensation(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2411
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyFocusMode(Lcom/oneplus/camera/FocusMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2412
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AfRegions:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyAfRegions(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2418
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applySceneMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2421
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyAwbMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2422
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAwbLocked:Z

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyAwbLock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2424
    iget-wide v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oneplus/camera/CameraImpl;->applyExposureTime(JLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2427
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusDistance:F

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyFocusDistance(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2430
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyISO(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2433
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    if-eqz v0, :cond_0

    .line 2435
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "prepareCaptureRequestParams() - FPS range : "

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2436
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2440
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyScalerCropRegion(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2443
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyFaceDetection(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2444
    return-void
.end method

.method private prepareSurface(Ljava/lang/Object;)Landroid/view/Surface;
    .locals 7
    .param p1, "receiver"    # Ljava/lang/Object;

    .prologue
    .line 2451
    instance-of v4, p1, Landroid/view/SurfaceHolder;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 2453
    check-cast v0, Landroid/view/SurfaceHolder;

    .line 2455
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 2476
    .end local v0    # "holder":Landroid/view/SurfaceHolder;
    :goto_0
    return-object v2

    .line 2457
    :cond_0
    instance-of v4, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 2459
    check-cast v3, Landroid/graphics/SurfaceTexture;

    .line 2461
    .local v3, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2462
    .local v2, "surface":Landroid/view/Surface;
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2464
    .end local v2    # "surface":Landroid/view/Surface;
    .end local v3    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :cond_1
    instance-of v4, p1, Landroid/media/ImageReader;

    if-eqz v4, :cond_2

    move-object v1, p1

    .line 2466
    check-cast v1, Landroid/media/ImageReader;

    .line 2467
    .local v1, "reader":Landroid/media/ImageReader;
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 2468
    .restart local v2    # "surface":Landroid/view/Surface;
    goto :goto_0

    .line 2469
    .end local v1    # "reader":Landroid/media/ImageReader;
    .end local v2    # "surface":Landroid/view/Surface;
    :cond_2
    instance-of v4, p1, Landroid/view/Surface;

    if-eqz v4, :cond_3

    move-object v2, p1

    .line 2470
    check-cast v2, Landroid/view/Surface;

    .restart local v2    # "surface":Landroid/view/Surface;
    goto :goto_0

    .line 2473
    .end local v2    # "surface":Landroid/view/Surface;
    :cond_3
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareSurface() - Unsupported receiver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removePreviewReceivedHandler(Lcom/oneplus/base/EventHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2495
    .local p1, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<Lcom/oneplus/camera/CameraCaptureEventArgs;>;"
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-super {p0, v0, p1}, Lcom/oneplus/camera/BaseCamera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2496
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->hasHandlers(Lcom/oneplus/base/EventKey;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 2498
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "removePreviewReceivedHandler() - Remove preview call-back surface"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 2500
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    .line 2501
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    .line 2502
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 2503
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    .line 2505
    :cond_0
    return-void
.end method

.method private restartCaptureSession()V
    .locals 2

    .prologue
    .line 3911
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_0

    .line 3922
    :goto_0
    return-void

    .line 3914
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "restartCaptureSession()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3917
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 3918
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->stopDriverCaptureSession()V

    .line 3921
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0
.end method

.method private setAELockedProp(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2565
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2566
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAELocked:Z

    if-ne v1, p1, :cond_0

    .line 2575
    :goto_0
    return v0

    .line 2570
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAELocked:Z

    .line 2571
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyAELock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2572
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2575
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private setAERegionsProp(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2602
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2605
    if-nez p1, :cond_1

    .line 2606
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2613
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AeRegions:Ljava/util/List;

    .line 2614
    .local v0, "oldRegions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_AeRegions:Ljava/util/List;

    .line 2615
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyAERegions(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAELocked:Z

    if-nez v1, :cond_0

    .line 2616
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2619
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2607
    .end local v0    # "oldRegions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_MAX_AE_REGION_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v2, v1, :cond_2

    .line 2608
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Too many AE regions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2610
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0
.end method

.method private setAFRegionsProp(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2628
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2631
    if-nez p1, :cond_1

    .line 2632
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2638
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "setAFRegionsProp() - Regions : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2641
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AfRegions:Ljava/util/List;

    .line 2642
    .local v0, "oldRegions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_AfRegions:Ljava/util/List;

    .line 2643
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyAfRegions(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2644
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2651
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2633
    .end local v0    # "oldRegions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_MAX_AF_REGION_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v2, v1, :cond_2

    .line 2634
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Too many AF regions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2636
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0
.end method

.method private setAWBModeProp(I)Z
    .locals 5
    .param p1, "awbMode"    # I

    .prologue
    .line 2659
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2660
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2661
    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    if-ne v2, p1, :cond_0

    .line 2662
    const/4 v2, 0x1

    .line 2681
    :goto_0
    return v2

    .line 2663
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2664
    .local v0, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2666
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAWBModeProp() - Invalid awb mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    const/4 v2, 0x0

    goto :goto_0

    .line 2670
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setAWBModeProp() - Awb mode : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2673
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    .line 2674
    .local v1, "oldAwbMode":I
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    .line 2677
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/camera/CameraImpl;->applyAwbMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2678
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2681
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private setAwbLockedProp(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2583
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2584
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAwbLocked:Z

    if-ne v1, p1, :cond_0

    .line 2593
    :goto_0
    return v0

    .line 2588
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAwbLocked:Z

    .line 2589
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyAwbLock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2590
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2593
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private setDigitalZoomProp(F)Z
    .locals 2
    .param p1, "zoom"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2687
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2688
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2689
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    .line 2690
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2691
    iput v1, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    .line 2692
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->applyScalerCropRegion(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2693
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2694
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setExposureCompensationProp(F)Z
    .locals 8
    .param p1, "ev"    # F

    .prologue
    .line 2702
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2703
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2706
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2707
    .local v0, "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 2708
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2713
    :cond_0
    :goto_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2714
    .local v2, "step":F
    div-float v3, p1, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    mul-float p1, v3, v2

    .line 2715
    iget v3, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureCompensation:F

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    .line 2716
    const/4 v3, 0x0

    .line 2727
    :goto_1
    return v3

    .line 2709
    .end local v2    # "step":F
    :cond_1
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    .line 2710
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    .line 2718
    .restart local v2    # "step":F
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "setExposureCompensationProp() - EV : "

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2721
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureCompensation:F

    .line 2722
    .local v1, "oldEV":F
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureCompensation:F

    .line 2723
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v3}, Lcom/oneplus/camera/CameraImpl;->applyExposureCompensation(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2724
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2727
    :cond_3
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1
.end method

.method private setExposureTimeProp(J)Z
    .locals 7
    .param p1, "exposureTime"    # J

    .prologue
    .line 2735
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2736
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2737
    iget-wide v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    cmp-long v1, v4, p1

    if-nez v1, :cond_0

    .line 2738
    const/4 v1, 0x1

    .line 2765
    :goto_0
    return v1

    .line 2739
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2740
    .local v0, "exposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const-wide/16 v4, -0x1

    cmp-long v1, p1, v4

    if-eqz v1, :cond_1

    .line 2742
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, p1, v4

    if-lez v1, :cond_3

    .line 2744
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "setExposureTimeProp() - Exposure time is too large, trim to upper"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 2754
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "setExposureTimeProp() - Exposure time : "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2757
    iget-wide v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    .line 2758
    .local v2, "oldExposureTime":J
    iput-wide p1, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    .line 2761
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/camera/CameraImpl;->applyExposureTime(JLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2762
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2765
    :cond_2
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 2747
    .end local v2    # "oldExposureTime":J
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, p1, v4

    if-gez v1, :cond_1

    .line 2749
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "setExposureTimeProp() - Exposure time is too small, trim to lower"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_1
.end method

.method private setFaceDetectionProp(Z)Z
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2772
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2773
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    if-ne v1, p1, :cond_0

    .line 2778
    :goto_0
    return v0

    .line 2775
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    .line 2776
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyFaceDetection(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2777
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2778
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 8
    .param p1, "flashMode"    # Lcom/oneplus/camera/FlashMode;
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 2786
    const/4 v1, 0x1

    .line 2787
    .local v1, "canAEModeOn":Z
    iget-wide v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget v3, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 2788
    :cond_0
    const/4 v1, 0x0

    .line 2791
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

    .line 2792
    if-eqz p2, :cond_3

    .line 2796
    sget-object v3, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FlashMode:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2824
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported flash mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2799
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    sget-object v4, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    if-ne v3, v4, :cond_4

    .line 2801
    const/4 v0, 0x1

    .line 2802
    .local v0, "aeCtrlValue":I
    const/4 v2, 0x0

    .line 2803
    .local v2, "flashModeValue":I
    sget-object v3, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    iput-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

    .line 2826
    :goto_0
    if-nez v1, :cond_2

    .line 2828
    const/4 v0, 0x0

    .line 2829
    const/4 v2, 0x0

    .line 2831
    :cond_2
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2832
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2836
    .end local v0    # "aeCtrlValue":I
    .end local v2    # "flashModeValue":I
    :cond_3
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    .line 2837
    return-void

    .line 2807
    :cond_4
    const/4 v0, 0x2

    .line 2808
    .restart local v0    # "aeCtrlValue":I
    const/4 v2, 0x1

    .line 2810
    .restart local v2    # "flashModeValue":I
    goto :goto_0

    .line 2812
    .end local v0    # "aeCtrlValue":I
    .end local v2    # "flashModeValue":I
    :pswitch_1
    const/4 v0, 0x1

    .line 2813
    .restart local v0    # "aeCtrlValue":I
    const/4 v2, 0x0

    .line 2814
    .restart local v2    # "flashModeValue":I
    goto :goto_0

    .line 2816
    .end local v0    # "aeCtrlValue":I
    .end local v2    # "flashModeValue":I
    :pswitch_2
    const/4 v0, 0x3

    .line 2817
    .restart local v0    # "aeCtrlValue":I
    const/4 v2, 0x1

    .line 2818
    .restart local v2    # "flashModeValue":I
    goto :goto_0

    .line 2820
    .end local v0    # "aeCtrlValue":I
    .end local v2    # "flashModeValue":I
    :pswitch_3
    const/4 v0, 0x1

    .line 2821
    .restart local v0    # "aeCtrlValue":I
    const/4 v2, 0x2

    .line 2822
    .restart local v2    # "flashModeValue":I
    goto :goto_0

    .line 2796
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setFlashModeProp(Lcom/oneplus/camera/FlashMode;)Z
    .locals 5
    .param p1, "flashMode"    # Lcom/oneplus/camera/FlashMode;

    .prologue
    const/4 v2, 0x0

    .line 2844
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2845
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    .line 2846
    .local v0, "oldFlashMode":Lcom/oneplus/camera/FlashMode;
    if-ne v0, p1, :cond_0

    move v1, v2

    .line 2862
    :goto_0
    return v1

    .line 2848
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    if-eq p1, v1, :cond_1

    .line 2850
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFlashModeProp() - No flash on camera \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2851
    goto :goto_0

    .line 2855
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "setFlashModeProp() - Flash mode : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2856
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2859
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2862
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private setFocusDistanceProp(F)Z
    .locals 5
    .param p1, "focusDistance"    # F

    .prologue
    .line 2870
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2871
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2872
    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusDistance:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 2873
    const/4 v2, 0x1

    .line 2900
    :goto_0
    return v2

    .line 2874
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_DISTANCE_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2875
    .local v0, "focusDistanceRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    .line 2877
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    .line 2879
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setFocusDistance() - Focus distance is too large, trim to upper"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2889
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setFocusDistance() - Focus distance : "

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2892
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusDistance:F

    .line 2893
    .local v1, "oldFocusDistance":F
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusDistance:F

    .line 2896
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/camera/CameraImpl;->applyFocusDistance(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2897
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2900
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_DISTANCE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 2882
    .end local v1    # "oldFocusDistance":F
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 2884
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setFocusDistance() - Focus distance is too small, trim to lower"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2885
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_1
.end method

.method private setFocusModeProp(Lcom/oneplus/camera/FocusMode;)Z
    .locals 5
    .param p1, "focusMode"    # Lcom/oneplus/camera/FocusMode;

    .prologue
    .line 2908
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2911
    if-nez p1, :cond_0

    .line 2912
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No focus mode specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2913
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2914
    .local v0, "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2916
    sget-object v2, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2917
    sget-object p1, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    .line 2922
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFocusModeProp() - Invalid focus mode, change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    if-ne v2, p1, :cond_4

    .line 2925
    const/4 v2, 0x0

    .line 2942
    :goto_1
    return v2

    .line 2918
    :cond_2
    sget-object v2, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2919
    sget-object p1, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    goto :goto_0

    .line 2921
    :cond_3
    sget-object p1, Lcom/oneplus/camera/FocusMode;->DISABLED:Lcom/oneplus/camera/FocusMode;

    goto :goto_0

    .line 2927
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setFocusModeProp() - Focus mode : "

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2930
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 2931
    .local v1, "oldMode":Lcom/oneplus/camera/FocusMode;
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 2932
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/camera/CameraImpl;->applyFocusMode(Lcom/oneplus/camera/FocusMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v2, v3, :cond_5

    .line 2934
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2942
    :cond_5
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1
.end method

.method private setISOProp(I)Z
    .locals 5
    .param p1, "iso"    # I

    .prologue
    .line 2950
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2951
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2952
    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    if-ne v2, p1, :cond_0

    .line 2953
    const/4 v2, 0x1

    .line 2980
    :goto_0
    return v2

    .line 2954
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2955
    .local v0, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 2957
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le p1, v2, :cond_3

    .line 2959
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setISOProp() - ISO value is too large, trim to upper"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2960
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2969
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setISOProp() - ISO value : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2972
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    .line 2973
    .local v1, "oldIsoValue":I
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    .line 2976
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/camera/CameraImpl;->applyISO(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2977
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2980
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 2962
    .end local v1    # "oldIsoValue":I
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 2964
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setISOProp() - ISO value is too small, trim to lower"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1
.end method

.method private setJpegQualityProp(I)Z
    .locals 2
    .param p1, "quality"    # I

    .prologue
    .line 2987
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2988
    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 2989
    :cond_0
    const/4 v0, 0x0

    .line 2991
    :goto_0
    return v0

    .line 2990
    :cond_1
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_JpegQuality:I

    .line 2991
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private setPictureSize(Landroid/util/Size;)Z
    .locals 5
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    const/4 v2, 0x0

    .line 2999
    if-nez p1, :cond_0

    .line 3000
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No picture size specified."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3001
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3003
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPictureSize() - Size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not contained in size list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3004
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid picture size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3006
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 3024
    :goto_0
    return v1

    .line 3010
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPictureSize() - Size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 3012
    .local v0, "prevSize":Landroid/util/Size;
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 3013
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3016
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v3, :cond_3

    .line 3018
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setPictureSize() - Restart capture session to apply new picture size"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 3020
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startCaptureSession()Z

    .line 3024
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setPreviewFpsRangeProp(Landroid/util/Range;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3554
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3555
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3558
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    invoke-virtual {v1, p1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3559
    :cond_0
    const/4 v1, 0x0

    .line 3574
    :goto_0
    return v1

    .line 3560
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3562
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewFpsRangeProp() - Invalid range : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3567
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewFpsRangeProp() - FPS range : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3568
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    .line 3569
    .local v0, "oldRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    .line 3570
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyPreviewFpsRange(Landroid/util/Range;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3571
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 3574
    :cond_3
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private setPreviewReceiver(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "receiver"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 3032
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3033
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    .line 3034
    .local v0, "prevReceiver":Ljava/lang/Object;
    if-ne v0, p1, :cond_0

    .line 3075
    :goto_0
    return v2

    .line 3036
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v3, v4, :cond_1

    .line 3038
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreviewReceiver() - Preview state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot change preview receiver when preview state is not STOPPED."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3043
    :cond_1
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 3046
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v2, :cond_4

    .line 3049
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 3051
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 3052
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3053
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 3054
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    .line 3058
    :cond_3
    if-eqz p1, :cond_4

    .line 3060
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->prepareSurface(Ljava/lang/Object;)Landroid/view/Surface;

    move-result-object v1

    .line 3061
    .local v1, "surface":Landroid/view/Surface;
    if-eqz v1, :cond_5

    .line 3062
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 3072
    .end local v1    # "surface":Landroid/view/Surface;
    :cond_4
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v2, p1}, Lcom/oneplus/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3075
    const/4 v2, 0x1

    goto :goto_0

    .line 3065
    .restart local v1    # "surface":Landroid/view/Surface;
    :cond_5
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setPreviewReceiver() - Fail to prepare Surface"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3066
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid preview receiver."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setPreviewSizeProp(Landroid/util/Size;)Z
    .locals 6
    .param p1, "previewSize"    # Landroid/util/Size;

    .prologue
    const/4 v3, 0x0

    .line 3083
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3084
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3087
    if-nez p1, :cond_0

    .line 3088
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No preview size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3089
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 3090
    .local v1, "oldSize":Landroid/util/Size;
    invoke-virtual {p1, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 3124
    :goto_0
    return v2

    .line 3092
    :cond_1
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3094
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPreviewSizeProp() - Invalid preview size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 3095
    goto :goto_0

    .line 3100
    :cond_2
    sget-object v4, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v2}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 3109
    const/4 v0, 0x0

    .line 3114
    .local v0, "needRestartPreview":Z
    :goto_1
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 3117
    if-eqz v0, :cond_3

    .line 3119
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "setPreviewSizeProp() - Restart preview"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3120
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->startPreview(I)Z

    .line 3124
    :cond_3
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 3104
    .end local v0    # "needRestartPreview":Z
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "setPreviewSizeProp() - Stop preview to change preview size"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->stopPreview(I)V

    .line 3106
    const/4 v0, 0x1

    .line 3107
    .restart local v0    # "needRestartPreview":Z
    goto :goto_1

    .line 3100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setRawCaptureProp(Z)Z
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 3130
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRawCaptureProp() - isEnabled is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3131
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3132
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRawCaptureEnabled:Z

    if-ne v1, p1, :cond_0

    .line 3136
    :goto_0
    return v0

    .line 3134
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRawCaptureEnabled:Z

    .line 3136
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private setRecordingModeProp(Z)Z
    .locals 5
    .param p1, "isRecordingMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3143
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3144
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-ne v1, p1, :cond_0

    .line 3180
    :goto_0
    return v2

    .line 3146
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v3, :cond_1

    .line 3148
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRecordingModeProp() - Current capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot change recording mode due to current capture state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3152
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRecordingModeProp() - Recording mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3156
    sget-object v3, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 3165
    const/4 v0, 0x0

    .line 3170
    .local v0, "needRestartPreview":Z
    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    .line 3173
    if-eqz v0, :cond_2

    .line 3175
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setRecordingModeProp() - Restart preview"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3176
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->startPreview(I)Z

    .line 3180
    :cond_2
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 3160
    .end local v0    # "needRestartPreview":Z
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setRecordingModeProp() - Stop preview to change recording mode"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopPreview(I)V

    .line 3162
    const/4 v0, 0x1

    .line 3163
    .restart local v0    # "needRestartPreview":Z
    goto :goto_1

    :cond_3
    move v1, v2

    .line 3180
    goto :goto_2

    .line 3156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setSceneModeProp(I)Z
    .locals 5
    .param p1, "sceneMode"    # I

    .prologue
    .line 3188
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3189
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3190
    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    if-ne v2, p1, :cond_0

    .line 3191
    const/4 v2, 0x1

    .line 3208
    :goto_0
    return v2

    .line 3192
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3193
    .local v1, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 3195
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSceneModeProp() - Invalid scene mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3196
    const/4 v2, 0x0

    goto :goto_0

    .line 3199
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setSceneModeProp() - Scene mode : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3202
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/camera/CameraImpl;->applySceneMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3203
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 3206
    :cond_2
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    .line 3207
    .local v0, "oldSceneMode":I
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    .line 3208
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private setVideoSizeProp(Landroid/util/Size;)Z
    .locals 5
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    const/4 v2, 0x0

    .line 3216
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3217
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3218
    sget-object v3, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 3230
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 3231
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No video size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3222
    :pswitch_0
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v1, :cond_0

    .line 3223
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setVideoSizeProp() - Apply video size when starting preview next time"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3232
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3234
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVideoSizeProp() - Invalid video size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3245
    :goto_1
    return v1

    .line 3237
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 3238
    goto :goto_1

    .line 3240
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "setVideoSizeProp() - Video size : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3243
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 3244
    .local v0, "oldSize":Landroid/util/Size;
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 3245
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 3218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startAutoFocus()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3272
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v3, :cond_0

    .line 3337
    :goto_0
    return-void

    .line 3276
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v3, v6, :cond_2

    move v2, v4

    .line 3277
    .local v2, "isPreviewStarted":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 3283
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startAutoFocus()"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3288
    if-eqz v2, :cond_4

    .line 3291
    sget-object v6, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FocusState:[I

    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/FocusState;

    invoke-virtual {v3}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v3

    aget v3, v6, v3

    packed-switch v3, :pswitch_data_0

    .line 3307
    :goto_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startAutoFocus() - Trigger AF"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3308
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3311
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 3314
    .local v0, "afRequest":Landroid/hardware/camera2/CaptureRequest;
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 3320
    .end local v0    # "afRequest":Landroid/hardware/camera2/CaptureRequest;
    :goto_3
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3321
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-ne v3, v5, :cond_3

    .line 3323
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3324
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3325
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "isPreviewStarted":Z
    :cond_2
    move v2, v5

    .line 3276
    goto :goto_1

    .line 3295
    .restart local v2    # "isPreviewStarted":Z
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startAutoFocus() - Cancel current auto-focus"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3298
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->cancelAutoFocus(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3304
    :goto_4
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v6, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 3300
    :catch_0
    move-exception v1

    .line 3302
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startAutoFocus() - Fail to cancel auto-focus"

    invoke-static {v3, v6, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 3316
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 3318
    .restart local v1    # "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startAutoFocus() - Fail to start autofocus"

    invoke-static {v3, v6, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3329
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    iput-boolean v4, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 3330
    const/16 v3, 0x271b

    const-wide/16 v6, 0x1388

    invoke-static {p0, v3, v4, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 3331
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3335
    :cond_4
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startCaptureSession()Z
    .locals 11

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3344
    sget-object v5, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    iget-object v9, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v9}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v9

    aget v5, v5, v9

    packed-switch v5, :pswitch_data_0

    .line 3358
    :pswitch_0
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCaptureSession() - Current session state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 3493
    :goto_0
    :pswitch_1
    return v7

    .line 3363
    :pswitch_2
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-gtz v5, :cond_1

    .line 3365
    :cond_0
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startCaptureSession() - Empty preview size"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 3366
    goto :goto_0

    .line 3370
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 3371
    .local v2, "pictureSize":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-gtz v5, :cond_3

    .line 3373
    :cond_2
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startCaptureSession() - Empty picture size"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 3374
    goto :goto_0

    .line 3378
    :cond_3
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3379
    .local v1, "pictureFormat":I
    sparse-switch v1, :sswitch_data_0

    .line 3389
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCaptureSession() - Unknown picture format : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 3390
    goto :goto_0

    .line 3386
    :sswitch_0
    const/16 v1, 0x23

    .line 3394
    :sswitch_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3395
    .local v4, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oneplus/camera/CameraImpl;->prepareSurface(Ljava/lang/Object;)Landroid/view/Surface;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    .line 3396
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    if-nez v5, :cond_4

    .line 3398
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startCaptureSession() - Fail to prepare Surface for preview"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 3399
    goto :goto_0

    .line 3401
    :cond_4
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3404
    iget-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    if-eqz v5, :cond_6

    .line 3406
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v9, "startCaptureSession() - Video surface : "

    iget-object v10, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    invoke-static {v5, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3407
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3418
    :goto_1
    iget-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-nez v5, :cond_8

    .line 3419
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v10

    const/16 v5, 0x100

    if-ne v1, v5, :cond_7

    move v5, v6

    :goto_2
    invoke-static {v9, v10, v1, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    .line 3424
    :goto_3
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startCaptureSession() - Picture reader buffer size : "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3425
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 3426
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    .line 3427
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3429
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->isRawCaptureNeeded()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3431
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startCaptureSession() - add rawSurface into surfaces list"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3432
    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 3433
    .local v3, "sensorSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    const/16 v9, 0x20

    invoke-static {v5, v6, v9, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    .line 3434
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_RawCallback:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 3435
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    .line 3436
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3443
    .end local v3    # "sensorSize":Landroid/util/Size;
    :cond_5
    :try_start_0
    iget-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-nez v5, :cond_a

    .line 3444
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3452
    :goto_4
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    .line 3455
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 3456
    iget-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    if-eqz v5, :cond_b

    .line 3457
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 3465
    :goto_5
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v5}, Lcom/oneplus/camera/CameraImpl;->prepareCaptureRequestParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3466
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v5, v6}, Lcom/oneplus/camera/CameraImpl;->applyPreviewFpsRange(Landroid/util/Range;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3476
    :goto_6
    :try_start_1
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startCaptureSession() - Create capture session for camera \'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v5, v4, v6, v9}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 3478
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSessionClosed:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3487
    sget-object v5, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 3490
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x2711

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3411
    :cond_6
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v9, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    const/16 v10, 0x23

    invoke-static {v5, v9, v10, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    .line 3412
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    iget-object v9, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReaderCallback:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 3413
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    .line 3414
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    move v5, v7

    .line 3419
    goto/16 :goto_2

    .line 3420
    :cond_8
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-lez v5, :cond_9

    .line 3421
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v5, v6, v1, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    goto/16 :goto_3

    .line 3423
    :cond_9
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v5, v6, v1, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    goto/16 :goto_3

    .line 3447
    :cond_a
    :try_start_2
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startCaptureSession() - Create request builder for video recording"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3448
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 3468
    :catch_0
    move-exception v0

    .line 3470
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startCaptureSession() - Fail to create preview request builder"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 3460
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_b
    :try_start_3
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startCaptureSession() - Add preview call-back surface"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3461
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_5

    .line 3480
    :catch_1
    move-exception v0

    .line 3482
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCaptureSession() - Fail to create capture session for camera \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v7, v8

    .line 3483
    goto/16 :goto_0

    .line 3344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 3379
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x20 -> :sswitch_1
        0x23 -> :sswitch_1
        0x100 -> :sswitch_1
    .end sparse-switch
.end method

.method private startPreviewRequest()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3582
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v2, :cond_0

    .line 3584
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreviewRequest() - Capture session state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3613
    :goto_0
    return v0

    .line 3587
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 3593
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreviewRequest() - Preview state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3594
    goto :goto_0

    .line 3597
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreviewRequest() - Start preview request for camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3600
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3603
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    sget-object v2, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    if-ne v0, v2, :cond_1

    .line 3604
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->cancelAutoFocus(I)V

    .line 3607
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3608
    const/4 v0, 0x1

    goto :goto_0

    .line 3612
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move v0, v1

    .line 3613
    goto :goto_0

    .line 3587
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startPreviewRequestDirectly()Z
    .locals 5

    .prologue
    .line 3623
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "startPreviewRequestDirectly()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3627
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3628
    const/4 v1, 0x1

    .line 3633
    :goto_0
    return v1

    .line 3630
    :catch_0
    move-exception v0

    .line 3632
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreviewRequestDirectly() - Fail to start preview for camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3633
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private stopCaptureInternal(Z)V
    .locals 6
    .param p1, "abortCaptures"    # Z

    .prologue
    const/4 v5, 0x1

    .line 3711
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v3, :cond_1

    .line 3713
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "stopCaptureInternal() - No capture handle"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3779
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3716
    :cond_1
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 3717
    .local v0, "captureState":Lcom/oneplus/camera/OperationState;
    sget-object v3, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3731
    :goto_1
    :pswitch_1
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3734
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x272e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3737
    const/4 v2, 0x0

    .line 3738
    .local v2, "ignoreCallbacks":Z
    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v3, :cond_2

    .line 3740
    iget v3, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-eq v3, v5, :cond_3

    .line 3744
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "stopCaptureInternal() - Stop repeating request"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3745
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3769
    :cond_2
    :goto_2
    if-eqz v2, :cond_4

    .line 3771
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "stopCaptureInternal() - Stop capture directly"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3772
    invoke-direct {p0, v5}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto :goto_0

    .line 3722
    .end local v2    # "ignoreCallbacks":Z
    :pswitch_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "stopCaptureInternal() - Stop while starting"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3747
    .restart local v2    # "ignoreCallbacks":Z
    :catch_0
    move-exception v1

    .line 3749
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "stopCaptureInternal() - Fail to stop repeating"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3752
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    if-eqz p1, :cond_2

    .line 3756
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "stopCaptureInternal() - Abort captures"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3757
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 3758
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3764
    :goto_3
    const/4 v2, 0x1

    goto :goto_2

    .line 3760
    :catch_1
    move-exception v1

    .line 3762
    .restart local v1    # "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "stopCaptureInternal() - Fail to abort captures"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3774
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_4
    iget-boolean v3, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureStartedReceived:Z

    if-nez v3, :cond_0

    .line 3776
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "stopCaptureInternal() - Capture call-back not received yet, stop capture directly"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3777
    invoke-direct {p0, v5}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto/16 :goto_0

    .line 3717
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private stopCaptureSession(Z)V
    .locals 5
    .param p1, "stopDirectly"    # Z

    .prologue
    const/16 v4, 0x2724

    .line 3786
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSessionClosed:Z

    if-eqz v0, :cond_2

    .line 3788
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3790
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopCaptureSession() - Stop waiting for call-back"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3791
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3792
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 3870
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3795
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopCaptureSession() - CaptureSession is already closed"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3798
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3814
    :cond_3
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCaptureSession() - Stop capture session for camera \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3817
    sget-object v1, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 3843
    :cond_4
    :goto_1
    :pswitch_2
    sget-object v1, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2

    .line 3849
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopCaptureSession() - Stop preview directly"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3850
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3855
    :pswitch_3
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 3858
    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3860
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopCaptureSession() - Wait for first preview frame"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3803
    :pswitch_4
    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 3809
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopCaptureSession() - Stop while starting"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3810
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    goto/16 :goto_0

    .line 3822
    :pswitch_6
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopCaptureSession() - Stop capture and wait for completion"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3823
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 3824
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->stopCaptureInternal(Z)V

    .line 3825
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 3829
    :pswitch_7
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopCaptureSession() - Stop while starting capture, stop capture directly"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3830
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto :goto_1

    .line 3833
    :pswitch_8
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopCaptureSession() - Wait for capture completion"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3834
    if-nez p1, :cond_4

    .line 3836
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    goto/16 :goto_0

    .line 3865
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->stopDriverCaptureSession()V

    .line 3866
    if-eqz p1, :cond_6

    .line 3867
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto/16 :goto_0

    .line 3869
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3798
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 3817
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
    .end packed-switch

    .line 3843
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private stopDriverCaptureSession()V
    .locals 3

    .prologue
    .line 3878
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "stopDriverCaptureSession() - Stop repeating"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3879
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3887
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "stopDriverCaptureSession() - Abort captures"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3888
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3896
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "stopDriverCaptureSession() - Close session"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3897
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 3898
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSessionClosed:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 3904
    :goto_2
    return-void

    .line 3881
    :catch_0
    move-exception v0

    .line 3883
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "stopDriverCaptureSession() - Fail to stop repeating"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3890
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 3892
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "stopDriverCaptureSession() - Fail to abort captures"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3900
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 3902
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "stopDriverCaptureSession() - Fail to close captures"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private updateAEState(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 6
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 4048
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4049
    .local v0, "aeState":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 4050
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4051
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/AutoExposureState;

    .line 4053
    .local v2, "prevAeState":Lcom/oneplus/camera/AutoExposureState;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 4074
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAEState() - Unknown AE state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4075
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .line 4078
    .local v1, "aeStateChanged":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 4079
    iput-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviousAeState:Lcom/oneplus/camera/AutoExposureState;

    .line 4080
    :cond_1
    return v1

    .line 4056
    .end local v1    # "aeStateChanged":Z
    :pswitch_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->CONVERGED:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .line 4057
    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4059
    .end local v1    # "aeStateChanged":Z
    :pswitch_1
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .line 4060
    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4062
    .end local v1    # "aeStateChanged":Z
    :pswitch_2
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->LOCKED:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .line 4063
    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4065
    .end local v1    # "aeStateChanged":Z
    :pswitch_3
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->PRECAPTURE:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .line 4066
    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4068
    .end local v1    # "aeStateChanged":Z
    :pswitch_4
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->SEARCHING:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .line 4069
    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4071
    .end local v1    # "aeStateChanged":Z
    :pswitch_5
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .line 4072
    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4053
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private updateFaceDetectionResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 7
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 4088
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/Face;

    .line 4089
    .local v4, "rawData":[Landroid/hardware/camera2/params/Face;
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceListIndex:I

    aget-object v1, v5, v6

    .line 4090
    .local v1, "currentFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4110
    :goto_0
    return-void

    .line 4094
    :cond_1
    iget v5, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceListIndex:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v6, v6

    rem-int/2addr v5, v6

    iput v5, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceListIndex:I

    .line 4095
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceListIndex:I

    aget-object v3, v5, v6

    .line 4096
    .local v3, "newFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    .line 4098
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 4099
    .local v0, "cropRegion":Landroid/graphics/Rect;
    array-length v5, v4

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 4100
    aget-object v5, v4, v2

    invoke-static {v0, v5}, Lcom/oneplus/camera/Camera$Face;->obtain(Landroid/graphics/Rect;Landroid/hardware/camera2/params/Face;)Lcom/oneplus/camera/Camera$Face;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4099
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4104
    .end local v0    # "cropRegion":Landroid/graphics/Rect;
    .end local v2    # "i":I
    :cond_2
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v1, v3}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4107
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_3

    .line 4108
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera$Face;

    invoke-virtual {v5}, Lcom/oneplus/camera/Camera$Face;->recycle()V

    .line 4107
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 4109
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private updateFlashState(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 4116
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4118
    .local v1, "state":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 4151
    :cond_0
    :goto_0
    return-void

    .line 4119
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4120
    .local v0, "flashState":I
    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviousFlashState:I

    if-eq v0, v2, :cond_0

    .line 4122
    packed-switch v0, :pswitch_data_0

    .line 4146
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewCaptureCompleted() - Unknow flash state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4149
    :cond_2
    :goto_1
    iput v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviousFlashState:I

    goto :goto_0

    .line 4125
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "onPreviewCaptureCompleted() - Charging"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4128
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "onPreviewCaptureCompleted() - Fired"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4131
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "onPreviewCaptureCompleted() - Partial"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4134
    :pswitch_3
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "onPreviewCaptureCompleted() - Ready"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4135
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

    if-eqz v2, :cond_2

    .line 4137
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "onPreviewCaptureCompleted() - Ready, set pending flash mode : "

    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4138
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4139
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    goto :goto_1

    .line 4143
    :pswitch_4
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "onPreviewCaptureCompleted() - Unavailable"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateFocalLength(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 4157
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4158
    return-void
.end method

.method private updateFocusState(Landroid/hardware/camera2/CaptureResult;)V
    .locals 8
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    const/16 v7, 0x271c

    const/16 v6, 0x271b

    const/4 v5, 0x0

    .line 4165
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4166
    .local v0, "afState":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 4167
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4171
    :cond_0
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_LastRawFocusState:I

    .line 4172
    .local v1, "lastAfState":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_LastRawFocusState:I

    .line 4175
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    if-eqz v2, :cond_2

    .line 4177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4258
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 4182
    :pswitch_1
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4183
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4184
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4185
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4190
    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 4192
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4193
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4194
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4195
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4196
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4197
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->FOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4202
    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 4204
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4205
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4206
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4207
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4208
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4209
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->UNFOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4217
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 4247
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFocusState() - Unknown AF state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4248
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4249
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    if-eqz v2, :cond_3

    .line 4251
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4252
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4254
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4255
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4221
    :pswitch_4
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4224
    :pswitch_5
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4225
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4226
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4227
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4228
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4232
    :pswitch_6
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4233
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4234
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4235
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4236
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->FOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4240
    :pswitch_7
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4241
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4242
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4243
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4244
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->UNFOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 4217
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private updatePropertyState(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 4268
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updateAEState(Landroid/hardware/camera2/CaptureResult;)Z

    .line 4270
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updateFlashState(Landroid/hardware/camera2/CaptureResult;)V

    .line 4272
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updateFocusState(Landroid/hardware/camera2/CaptureResult;)V

    .line 4274
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updateFocalLength(Landroid/hardware/camera2/CaptureResult;)V

    .line 4276
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    .line 4277
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updateFaceDetectionResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 4279
    :cond_0
    return-void
.end method


# virtual methods
.method public addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;",
            "Lcom/oneplus/base/EventHandler",
            "<TTArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_0

    .line 361
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->addPreviewReceivedHandler(Lcom/oneplus/base/EventHandler;)V

    .line 364
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCamera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_0
.end method

.method public bindMediaRecorder(Landroid/media/MediaRecorder;I)Z
    .locals 5
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 719
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 720
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 721
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v2, v3, :cond_0

    .line 723
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindMediaRecorder() - Current capture state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :goto_0
    return v1

    .line 728
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 733
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    const/4 v1, 0x1

    goto :goto_0

    .line 735
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "bindMediaRecorder() - Error when set video source"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 738
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    goto :goto_0
.end method

.method public calculateViewAngles(Landroid/graphics/Rect;I)Landroid/util/SizeF;
    .locals 10
    .param p1, "cropRegion"    # Landroid/graphics/Rect;
    .param p2, "flags"    # I

    .prologue
    .line 751
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 752
    .local v2, "focalLength":F
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SizeF;

    .line 753
    .local v3, "sensorPhysicalSize":Landroid/util/SizeF;
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result v5

    div-float/2addr v5, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    double-to-float v0, v6

    .line 754
    .local v0, "anglesX":F
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-virtual {v3}, Landroid/util/SizeF;->getHeight()F

    move-result v5

    div-float/2addr v5, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    double-to-float v1, v6

    .line 757
    .local v1, "anglesY":F
    if-nez p1, :cond_0

    .line 758
    new-instance v5, Landroid/util/SizeF;

    invoke-direct {v5, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    .line 762
    :goto_0
    return-object v5

    .line 761
    :cond_0
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_SENSOR_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 762
    .local v4, "sensorSizeFull":Landroid/util/Size;
    new-instance v5, Landroid/util/SizeF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v7, v1

    invoke-direct {v5, v6, v7}, Landroid/util/SizeF;-><init>(FF)V

    goto :goto_0
.end method

.method public cancelAutoFocus(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 777
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_0

    .line 779
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "cancelAutoFocus()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 783
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 791
    :cond_0
    return-void

    .line 785
    :catch_0
    move-exception v0

    .line 787
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "cancelAutoFocus() - Fail to cancel autofocus"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public capture(II)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "frameCount"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 799
    if-nez p1, :cond_0

    .line 801
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture() - Invalid frame count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 857
    :goto_0
    return-object v1

    .line 806
    :cond_0
    const/4 v0, 0x0

    .line 807
    .local v0, "captureLater":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 808
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v3, :cond_1

    .line 810
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture() - Capture state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 811
    goto :goto_0

    .line 813
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v3}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 822
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture() - Current state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 823
    goto :goto_0

    .line 818
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "capture() - Opening camera, capture later"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const/4 v0, 0x1

    .line 825
    :pswitch_1
    sget-object v3, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_1

    .line 834
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture() - Preview state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 835
    goto/16 :goto_0

    .line 830
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "capture() - Starting preview, capture later"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const/4 v0, 0x1

    .line 839
    :pswitch_3
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 842
    new-instance v1, Lcom/oneplus/camera/CameraImpl$8;

    const-string v3, "Capture"

    invoke-direct {v1, p0, v3}, Lcom/oneplus/camera/CameraImpl$8;-><init>(Lcom/oneplus/camera/CameraImpl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    .line 852
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    .line 853
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->captureInternal()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v2

    .line 854
    goto/16 :goto_0

    .line 857
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 813
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 825
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public close(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1123
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 1124
    sget-object v0, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1139
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    if-eq v0, v1, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "close() - Close process has been interrupted"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :goto_0
    :pswitch_1
    return-void

    .line 1133
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "close() - Close while opening"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    sget-object v0, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    goto :goto_0

    .line 1146
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 1147
    sget-object v1, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 1164
    :goto_1
    :pswitch_3
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->closeInternal()V

    goto :goto_0

    .line 1151
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "close() - Force stopping capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto :goto_1

    .line 1124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1147
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 1314
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AeRegions:Ljava/util/List;

    .line 1362
    :goto_0
    return-object v0

    .line 1316
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AfRegions:Ljava/util/List;

    goto :goto_0

    .line 1318
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 1319
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1320
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 1321
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->getCameraCharacteristic()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    goto :goto_0

    .line 1322
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 1323
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureCompensation:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1324
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 1325
    iget-wide v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1326
    :cond_5
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 1327
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceListIndex:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 1328
    :cond_6
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 1329
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    goto :goto_0

    .line 1330
    :cond_7
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_DISTANCE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    .line 1331
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusDistance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1332
    :cond_8
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    .line 1333
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    goto :goto_0

    .line 1334
    :cond_9
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_a

    .line 1335
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    goto :goto_0

    .line 1336
    :cond_a
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_b

    .line 1337
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAELocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1338
    :cond_b
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_c

    .line 1339
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAwbLocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1340
    :cond_c
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_d

    .line 1341
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1342
    :cond_d
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_e

    .line 1343
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRawCaptureEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1344
    :cond_e
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_f

    .line 1345
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1346
    :cond_f
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_10

    .line 1347
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 1348
    :cond_10
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_12

    .line 1349
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_JpegQuality:I

    if-ltz v0, :cond_11

    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_JpegQuality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1350
    :cond_12
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_13

    .line 1351
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    goto/16 :goto_0

    .line 1352
    :cond_13
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_14

    .line 1353
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    goto/16 :goto_0

    .line 1354
    :cond_14
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_15

    .line 1355
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    goto/16 :goto_0

    .line 1356
    :cond_15
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_16

    .line 1357
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 1358
    :cond_16
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_17

    .line 1359
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    goto/16 :goto_0

    .line 1360
    :cond_17
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_18

    .line 1361
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    goto/16 :goto_0

    .line 1362
    :cond_18
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCamera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1389
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1424
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCamera;->handleMessage(Landroid/os/Message;)V

    .line 1427
    :goto_0
    return-void

    .line 1392
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onAutoFocusTimeout()V

    goto :goto_0

    .line 1396
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onAutoFocusStartTimeout()V

    goto :goto_0

    .line 1400
    :sswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - Capture session close timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    .line 1405
    :sswitch_3
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onPreviewFrameReceived()V

    goto :goto_0

    .line 1409
    :sswitch_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - First preview frame timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onFirstPreviewFrameReceived()V

    goto :goto_0

    .line 1414
    :sswitch_5
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startAutoFocus()V

    goto :goto_0

    .line 1418
    :sswitch_6
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - Pre-capture flash timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTimeout:Z

    .line 1420
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onPreCaptureFlashComplete()V

    goto :goto_0

    .line 1389
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_4
        0x271a -> :sswitch_5
        0x271b -> :sswitch_1
        0x271c -> :sswitch_0
        0x2724 -> :sswitch_2
        0x272e -> :sswitch_6
    .end sparse-switch
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    if-ne v0, v1, :cond_0

    .line 2344
    sget-object v0, Lcom/oneplus/camera/Camera$State;->UNAVAILABLE:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 2347
    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/BaseCamera;->onRelease()V

    .line 2348
    return-void
.end method

.method public open(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2356
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2357
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2358
    sget-object v2, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v3}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2369
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open() - Invalid state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2377
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 2366
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "open() - Open while closing"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    sget-object v2, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 2374
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/camera/CameraImpl;->m_OpenCameraStartTime:J

    .line 2375
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->openInternal(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 2376
    goto :goto_0

    .line 2377
    :cond_1
    sget-object v2, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 2358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;",
            "Lcom/oneplus/base/EventHandler",
            "<TTArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 2485
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_0

    .line 2486
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->removePreviewReceivedHandler(Lcom/oneplus/base/EventHandler;)V

    .line 2489
    :goto_0
    return-void

    .line 2488
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCamera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_0
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 2513
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 2514
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setAERegionsProp(Ljava/util/List;)Z

    move-result v0

    .line 2557
    :goto_0
    return v0

    .line 2515
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 2516
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setAFRegionsProp(Ljava/util/List;)Z

    move-result v0

    goto :goto_0

    .line 2517
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 2518
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setAWBModeProp(I)Z

    move-result v0

    goto :goto_0

    .line 2519
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    move-object v0, p2

    .line 2520
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setDigitalZoomProp(F)Z

    .line 2521
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 2522
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setExposureCompensationProp(F)Z

    move-result v0

    goto :goto_0

    .line 2523
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 2524
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setExposureTimeProp(J)Z

    move-result v0

    goto :goto_0

    .line 2525
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_5
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 2526
    check-cast p2, Lcom/oneplus/camera/FlashMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setFlashModeProp(Lcom/oneplus/camera/FlashMode;)Z

    move-result v0

    goto :goto_0

    .line 2527
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_6
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_DISTANCE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 2528
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setFocusDistanceProp(F)Z

    move-result v0

    goto :goto_0

    .line 2529
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_7
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    .line 2530
    check-cast p2, Lcom/oneplus/camera/FocusMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setFocusModeProp(Lcom/oneplus/camera/FocusMode;)Z

    move-result v0

    goto :goto_0

    .line 2531
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_8
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    .line 2532
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setAELockedProp(Z)Z

    move-result v0

    goto :goto_0

    .line 2533
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_9
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_a

    .line 2534
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setAwbLockedProp(Z)Z

    move-result v0

    goto/16 :goto_0

    .line 2535
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_a
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_b

    .line 2536
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setFaceDetectionProp(Z)Z

    move-result v0

    goto/16 :goto_0

    .line 2537
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_b
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_c

    .line 2538
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setISOProp(I)Z

    move-result v0

    goto/16 :goto_0

    .line 2539
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_c
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_d

    .line 2540
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setRawCaptureProp(Z)Z

    move-result v0

    goto/16 :goto_0

    .line 2541
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_d
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_e

    .line 2542
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setRecordingModeProp(Z)Z

    move-result v0

    goto/16 :goto_0

    .line 2543
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_e
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_f

    .line 2544
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setJpegQualityProp(I)Z

    move-result v0

    goto/16 :goto_0

    .line 2545
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_f
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_10

    .line 2546
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setPictureSize(Landroid/util/Size;)Z

    move-result v0

    goto/16 :goto_0

    .line 2547
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_10
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_11

    .line 2548
    check-cast p2, Landroid/util/Range;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setPreviewFpsRangeProp(Landroid/util/Range;)Z

    move-result v0

    goto/16 :goto_0

    .line 2549
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_11
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_12

    .line 2550
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setPreviewSizeProp(Landroid/util/Size;)Z

    move-result v0

    goto/16 :goto_0

    .line 2551
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_12
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_13

    .line 2552
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setPreviewReceiver(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 2553
    :cond_13
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_14

    .line 2554
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setSceneModeProp(I)Z

    move-result v0

    goto/16 :goto_0

    .line 2555
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_14
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_15

    .line 2556
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setVideoSizeProp(Landroid/util/Size;)Z

    move-result v0

    goto/16 :goto_0

    .line 2557
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_15
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public startAutoFocus(I)Z
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/16 v2, 0x271a

    .line 3254
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3255
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3256
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_0

    .line 3258
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAutoFocus() - Preview state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3259
    const/4 v0, 0x0

    .line 3267
    :goto_0
    return v0

    .line 3263
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3264
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3267
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startPreview(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3502
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3503
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3504
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v3, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v3, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-eq v0, v3, :cond_0

    .line 3506
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreview() - Camera state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3546
    :goto_0
    return v0

    .line 3509
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 3528
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v3, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    if-ne v0, v3, :cond_3

    .line 3530
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v3, :cond_2

    .line 3532
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3533
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequest()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    move v0, v2

    .line 3515
    goto :goto_0

    .line 3517
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_1

    .line 3518
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "startPreview() - Start on started."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3519
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    :goto_1
    move v0, v2

    .line 3524
    goto :goto_0

    .line 3521
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "startPreview() - Start while stopping"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3522
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 3535
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startCaptureSession()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3537
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "startPreview() - Fail to start capture session"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3538
    goto :goto_0

    .line 3542
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "startPreview() - Start preview while opening camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move v0, v2

    .line 3546
    goto :goto_0

    .line 3509
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public startVideoRecording(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 3643
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3644
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3645
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 3647
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "startVideoRecording() - No media recorder"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 3703
    :goto_0
    return v2

    .line 3653
    :cond_0
    sget-object v4, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v2}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 3670
    const/4 v1, 0x0

    .line 3677
    .local v1, "needRestartPreview":Z
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3686
    if-eqz v1, :cond_1

    .line 3688
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "startVideoRecording() - Restart preview"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3689
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->startPreview(I)Z

    .line 3695
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3703
    const/4 v2, 0x1

    goto :goto_0

    .line 3657
    .end local v1    # "needRestartPreview":Z
    :pswitch_0
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v2, :cond_2

    .line 3659
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "startVideoRecording() - Stop preview to change video surface"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3660
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->stopPreview(I)V

    .line 3661
    const/4 v1, 0x1

    .restart local v1    # "needRestartPreview":Z
    goto :goto_1

    .line 3665
    .end local v1    # "needRestartPreview":Z
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "startVideoRecording() - Set video surface in non-recording mode"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3666
    const/4 v1, 0x0

    .line 3668
    .restart local v1    # "needRestartPreview":Z
    goto :goto_1

    .line 3679
    :catch_0
    move-exception v0

    .line 3681
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "startVideoRecording() - Fail to get surface"

    invoke-static {v2, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 3682
    goto :goto_0

    .line 3697
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 3699
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "startVideoRecording() - Fail to start video recording"

    invoke-static {v2, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 3700
    goto :goto_0

    .line 3653
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public stopPreview(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x1

    .line 3930
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3931
    sget-object v1, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3944
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3947
    sget-object v1, Lcom/oneplus/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 3968
    :goto_1
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 3987
    :cond_0
    :goto_2
    :pswitch_2
    return-void

    .line 3939
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview() - Stop while starting"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3952
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview() - Wait for capture stop"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3955
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview() - Cancel capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3956
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureInternal(Z)V

    goto :goto_1

    .line 3959
    :pswitch_6
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview() - Stop capture and wait for stop"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3960
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureInternal(Z)V

    .line 3961
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 3963
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview() - Capture stopped immediately"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3931
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 3947
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public stopVideoRecording(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 3995
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3996
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3997
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 3999
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "stopVideoRecording() - No media recorder"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4017
    :goto_0
    return v1

    .line 4006
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopPreview(I)V

    .line 4007
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "stopVideoRecording() - MediaRecorder.stop [start]"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4008
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 4009
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "stopVideoRecording() - MediaRecorder.stop [end]"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4017
    const/4 v1, 0x1

    goto :goto_0

    .line 4011
    :catch_0
    move-exception v0

    .line 4013
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "stopVideoRecording() - Fail to stop recorder"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera2[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Facing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbindMediaRecorder(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 4034
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 4035
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 4038
    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 4039
    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    .line 4041
    const/4 v0, 0x1

    return v0
.end method
