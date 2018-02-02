.class Lcom/oneplus/camera/CameraImpl;
.super Lcom/oneplus/camera/BaseCamera;
.source "CameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/CameraImpl$1;,
        Lcom/oneplus/camera/CameraImpl$2;,
        Lcom/oneplus/camera/CameraImpl$3;,
        Lcom/oneplus/camera/CameraImpl$4;,
        Lcom/oneplus/camera/CameraImpl$5;,
        Lcom/oneplus/camera/CameraImpl$6;,
        Lcom/oneplus/camera/CameraImpl$7;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-Camera$StateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-FlashModeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-FocusModeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-FocusStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-OperationStateSwitchesValues:[I = null

.field private static final CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

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

.field private m_FocusMode:Lcom/oneplus/camera/FocusMode;

.field private m_FocusValue:F

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
.method static synthetic -get0(Lcom/oneplus/camera/CameraImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-Camera$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->-com-oneplus-camera-Camera$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->-com-oneplus-camera-Camera$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/Camera$State;->values()[Lcom/oneplus/camera/Camera$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/Camera$State;->UNAVAILABLE:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/camera/CameraImpl;->-com-oneplus-camera-Camera$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-FlashModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->-com-oneplus-camera-FlashModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->-com-oneplus-camera-FlashModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/FlashMode;->values()[Lcom/oneplus/camera/FlashMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/CameraImpl;->-com-oneplus-camera-FlashModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-FocusModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->-com-oneplus-camera-FocusModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->-com-oneplus-camera-FocusModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/FocusMode;->values()[Lcom/oneplus/camera/FocusMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/FocusMode;->DISABLED:Lcom/oneplus/camera/FocusMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/CameraImpl;->-com-oneplus-camera-FocusModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-FocusStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->-com-oneplus-camera-FocusStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->-com-oneplus-camera-FocusStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/FocusState;->values()[Lcom/oneplus/camera/FocusState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/FocusState;->FOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/FocusState;->UNFOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/camera/CameraImpl;->-com-oneplus-camera-FocusStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-OperationStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/OperationState;->values()[Lcom/oneplus/camera/OperationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/CameraImpl;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/CameraImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashComplete:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/CameraImpl;I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->captureInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p4, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/CameraImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onPreCaptureFlashComplete()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onPreviewCaptureCompleted(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/CameraImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onPreviewFrameReceived()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/oneplus/camera/CameraImpl;Landroid/media/Image;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onRawPictureReceived(Landroid/media/Image;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/oneplus/camera/CameraImpl;Z)V
    .locals 0
    .param p1, "abortCaptures"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->stopCaptureInternal(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/CameraImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onCaptureSequenceCompleted()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/oneplus/camera/CameraImpl;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraDevice;IZ)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I
    .param p3, "disconnected"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraImpl;->onDeviceError(Landroid/hardware/camera2/CameraDevice;IZ)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onDeviceOpened(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/CameraImpl;Landroid/media/Image;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onPictureReceived(Landroid/media/Image;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/oneplus/camera/CameraImpl;->CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Lcom/oneplus/camera/CameraInfo;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "cameraInfo"    # Lcom/oneplus/camera/CameraInfo;

    .prologue
    .line 306
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/BaseCamera;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CameraInfo;)V

    .line 85
    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_AeRegions:Ljava/util/List;

    .line 87
    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_AfRegions:Ljava/util/List;

    .line 88
    const/4 v12, 0x1

    iput v12, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    .line 91
    new-instance v12, Lcom/oneplus/camera/CameraImpl$1;

    invoke-direct {v12, p0}, Lcom/oneplus/camera/CameraImpl$1;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 110
    sget-object v12, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 117
    new-instance v12, Lcom/oneplus/camera/CameraImpl$2;

    invoke-direct {v12, p0}, Lcom/oneplus/camera/CameraImpl$2;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_DeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 137
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    .line 139
    const-wide/16 v12, -0x1

    iput-wide v12, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    .line 142
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/util/List;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    .line 143
    sget-object v12, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    .line 144
    sget-object v12, Lcom/oneplus/camera/FocusMode;->DISABLED:Lcom/oneplus/camera/FocusMode;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 145
    const/high16 v12, -0x40800000    # -1.0f

    iput v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusValue:F

    .line 153
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    .line 154
    const/4 v12, -0x1

    iput v12, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    .line 162
    const/4 v12, -0x1

    iput v12, p0, Lcom/oneplus/camera/CameraImpl;->m_JpegQuality:I

    .line 164
    const/4 v12, 0x0

    iput v12, p0, Lcom/oneplus/camera/CameraImpl;->m_LastRawFocusState:I

    .line 168
    new-instance v12, Lcom/oneplus/camera/CameraImpl$3;

    invoke-direct {v12, p0}, Lcom/oneplus/camera/CameraImpl$3;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 195
    new-instance v12, Lcom/oneplus/camera/CameraImpl$4;

    invoke-direct {v12, p0}, Lcom/oneplus/camera/CameraImpl$4;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 227
    new-instance v12, Landroid/util/Size;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/util/Size;-><init>(II)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 234
    new-instance v12, Lcom/oneplus/camera/CameraImpl$5;

    invoke-direct {v12, p0}, Lcom/oneplus/camera/CameraImpl$5;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReaderCallback:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 243
    new-instance v12, Lcom/oneplus/camera/CameraImpl$6;

    invoke-direct {v12, p0}, Lcom/oneplus/camera/CameraImpl$6;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 252
    new-instance v12, Landroid/util/Size;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/util/Size;-><init>(II)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 254
    new-instance v12, Lcom/oneplus/camera/CameraImpl$7;

    invoke-direct {v12, p0}, Lcom/oneplus/camera/CameraImpl$7;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_RawCallback:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 284
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    .line 286
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedResults:Ljava/util/Queue;

    .line 288
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    .line 290
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    .line 291
    const/4 v12, 0x0

    iput v12, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    .line 292
    sget-object v12, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    .line 295
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_TempList:Ljava/util/List;

    .line 296
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    .line 297
    new-instance v12, Landroid/util/Size;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/util/Size;-><init>(II)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 299
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSessionClosed:Z

    .line 308
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "CameraImpl() - ID : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    .line 312
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraInfo:Lcom/oneplus/camera/CameraInfo;

    .line 313
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    .line 316
    sget-object v12, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v12}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 317
    .local v9, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 318
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 321
    :cond_0
    sget-object v12, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 322
    .local v4, "fpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    sget-object v12, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v12, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 323
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_3

    .line 325
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Range;

    .line 326
    .local v10, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v10}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v13, 0x1e

    if-ne v12, v13, :cond_2

    invoke-virtual {v10}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v13, 0x1e

    if-ge v12, v13, :cond_2

    .line 328
    invoke-virtual {v10}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v7, v12, -0x14

    .line 329
    .local v7, "lowerBoundDiff":I
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v12, v12, -0x14

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-gt v7, v12, :cond_2

    .line 330
    :cond_1
    iput-object v10, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    .line 323
    .end local v7    # "lowerBoundDiff":I
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 333
    .end local v10    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-eqz v12, :cond_5

    .line 334
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "CameraImpl() - Default video FPS range : "

    iget-object v14, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    invoke-static {v12, v13, v14}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    :goto_1
    sget-object v12, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v12}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 340
    .local v3, "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    sget-object v12, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 341
    sget-object v12, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 346
    :cond_4
    :goto_2
    sget-object v12, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 347
    .local v8, "maxFaceCount":I
    if-lez v8, :cond_7

    .line 349
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "CameraImpl() - Max face count : "

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v12, v12

    add-int/lit8 v6, v12, -0x1

    :goto_3
    if-ltz v6, :cond_8

    .line 351
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v13, v12, v6

    .line 350
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 336
    .end local v3    # "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    .end local v8    # "maxFaceCount":I
    :cond_5
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "CameraImpl() - No suitable FPS range for video"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 342
    .restart local v3    # "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    :cond_6
    sget-object v12, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 343
    sget-object v12, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    goto :goto_2

    .line 355
    .restart local v8    # "maxFaceCount":I
    :cond_7
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "CameraImpl() - Face detection is unsupported"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v12, v12

    add-int/lit8 v6, v12, -0x1

    :goto_4
    if-ltz v6, :cond_8

    .line 357
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    sget-object v13, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    aput-object v13, v12, v6

    .line 356
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 362
    :cond_8
    :try_start_0
    const-string/jumbo v12, "android.hardware.camera2.params&Face"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 363
    .local v2, "faceClass":Ljava/lang/Class;
    const-string/jumbo v12, "getIsSmile"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 364
    .local v5, "getIsSmileMethod":Ljava/lang/reflect/Method;
    sget-object v12, Lcom/oneplus/camera/CameraImpl;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 365
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "CameraImpl() - smile capture is supported"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v2    # "faceClass":Ljava/lang/Class;
    .end local v5    # "getIsSmileMethod":Ljava/lang/reflect/Method;
    :goto_5
    sget-object v12, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STEP:Lcom/oneplus/base/PropertyKey;

    const v13, 0x3e4ccccd    # 0.2f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 303
    return-void

    .line 366
    :catch_0
    move-exception v11

    .line 367
    .local v11, "tr":Ljava/lang/Throwable;
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "CameraImpl() - Failed to get smile capture information"

    invoke-static {v12, v13, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    sget-object v12, Lcom/oneplus/camera/CameraImpl;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_5
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
    .line 391
    .local p1, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<Lcom/oneplus/camera/CameraCaptureEventArgs;>;"
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->hasHandlers(Lcom/oneplus/base/EventKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 392
    .local v0, "isFirstHandler":Z
    :goto_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-super {p0, v1, p1}, Lcom/oneplus/camera/BaseCamera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 393
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "addPreviewReceivedHandler() - Add preview call-back surface"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 397
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    .line 389
    :cond_0
    return-void

    .line 391
    .end local v0    # "isFirstHandler":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "isFirstHandler":Z
    goto :goto_0
.end method

.method private applyAELock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 2
    .param p1, "isLocked"    # Z
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 406
    if-nez p2, :cond_0

    .line 407
    const/4 v0, 0x0

    return v0

    .line 408
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 409
    const/4 v0, 0x1

    return v0
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

    .line 428
    if-nez p2, :cond_0

    .line 429
    return v1

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_TempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 433
    iget-object v9, p0, Lcom/oneplus/camera/CameraImpl;->m_TempList:Ljava/util/List;

    .line 434
    .local v9, "regionList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_2

    .line 436
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->createMeteringRectangle(Lcom/oneplus/camera/Camera$MeteringRect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v7

    .line 437
    .local v7, "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    if-eqz v7, :cond_1

    .line 438
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 441
    .end local v7    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    new-array v8, v10, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v0, v8, v1

    .line 450
    .local v8, "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :goto_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 451
    return v10

    .line 445
    .end local v8    # "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 446
    .restart local v8    # "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-interface {v9, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1
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

    .line 460
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-FocusModeSwitchesValues()[I

    move-result-object v2

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FocusMode;

    invoke-virtual {v0}, Lcom/oneplus/camera/FocusMode;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 466
    :pswitch_0
    return v1

    .line 470
    :pswitch_1
    if-nez p2, :cond_0

    .line 471
    return v1

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_TempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 475
    iget-object v9, p0, Lcom/oneplus/camera/CameraImpl;->m_TempList:Ljava/util/List;

    .line 476
    .local v9, "regionList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_2

    .line 478
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->createMeteringRectangle(Lcom/oneplus/camera/Camera$MeteringRect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v7

    .line 479
    .local v7, "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    if-eqz v7, :cond_1

    .line 480
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 483
    .end local v7    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 484
    new-array v8, v10, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v0, v8, v1

    .line 492
    .local v8, "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :goto_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 493
    return v10

    .line 487
    .end local v8    # "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 488
    .restart local v8    # "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-interface {v9, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private applyAwbLock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 2
    .param p1, "isLocked"    # Z
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 416
    if-nez p2, :cond_0

    .line 417
    const/4 v0, 0x0

    return v0

    .line 418
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method private applyAwbMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 3
    .param p1, "awbMode"    # I
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 500
    if-eqz p2, :cond_1

    .line 502
    packed-switch p1, :pswitch_data_0

    .line 512
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 515
    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 516
    return v2

    .line 506
    :pswitch_0
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    if-nez v0, :cond_0

    .line 507
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 509
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 518
    :cond_1
    return v0

    .line 502
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
    .line 526
    if-nez p2, :cond_0

    .line 527
    const/4 v1, 0x0

    return v1

    .line 530
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

    .line 533
    .local v0, "steps":I
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 534
    const/4 v1, 0x1

    return v1
.end method

.method private applyExposureTime(JLandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 11
    .param p1, "exposureTime"    # J
    .param p3, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const-wide/32 v8, 0xbebc200

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 542
    if-nez p3, :cond_0

    .line 543
    return v2

    .line 546
    :cond_0
    cmp-long v0, p1, v4

    if-nez v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v0, p3}, Lcom/oneplus/camera/CameraImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 549
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 562
    :goto_0
    return v6

    .line 553
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 554
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 555
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_2

    cmp-long v0, p1, v8

    if-lez v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyExposureTime() - Exposure time is "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, ", lower to "

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, " nano secs"

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 558
    const-wide/32 p1, 0xbebc200

    .line 560
    :cond_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyFaceDetection(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 2
    .param p1, "isEnabled"    # Z
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/4 v1, 0x0

    .line 569
    if-nez p2, :cond_0

    .line 570
    return v1

    .line 571
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v0, :cond_2

    .line 574
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 575
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 572
    :cond_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyFocusDistance(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 2
    .param p1, "focusDistance"    # F
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 583
    if-nez p2, :cond_0

    .line 584
    const/4 v0, 0x0

    return v0

    .line 587
    :cond_0
    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    .line 588
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 591
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 589
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyFocusMode(Lcom/oneplus/camera/FocusMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 5
    .param p1, "focusMode"    # Lcom/oneplus/camera/FocusMode;
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/4 v4, 0x0

    .line 601
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-FocusModeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/FocusMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 625
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applyFocusMode() - Unknown focus mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    return v4

    .line 604
    :pswitch_0
    const/4 v0, 0x0

    .line 630
    .local v0, "afModeValue":I
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 632
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 634
    const/4 v1, 0x1

    return v1

    .line 608
    .end local v0    # "afModeValue":I
    :pswitch_1
    const/4 v0, 0x1

    .line 610
    .restart local v0    # "afModeValue":I
    goto :goto_0

    .line 612
    .end local v0    # "afModeValue":I
    :pswitch_2
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v1, :cond_1

    .line 613
    const/4 v0, 0x3

    .line 616
    .restart local v0    # "afModeValue":I
    :goto_1
    if-eqz p2, :cond_0

    .line 617
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 615
    .end local v0    # "afModeValue":I
    :cond_1
    const/4 v0, 0x4

    .restart local v0    # "afModeValue":I
    goto :goto_1

    .line 621
    .end local v0    # "afModeValue":I
    :pswitch_3
    const/4 v0, 0x0

    .line 623
    .restart local v0    # "afModeValue":I
    goto :goto_0

    .line 636
    :cond_2
    return v4

    .line 601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private applyISO(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 3
    .param p1, "iso"    # I
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 644
    if-nez p2, :cond_0

    .line 645
    return v2

    .line 648
    :cond_0
    if-ne p1, v1, :cond_1

    .line 650
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/camera/CameraImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 651
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 659
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 655
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 656
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 657
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
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
    .line 666
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-nez p2, :cond_0

    .line 667
    const/4 v0, 0x0

    return v0

    .line 668
    :cond_0
    if-eqz p1, :cond_1

    .line 669
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 684
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 670
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-nez v0, :cond_3

    .line 672
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    if-eqz v0, :cond_2

    .line 673
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyPreviewFpsRange() - No default photo preview FPS range"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-eqz v0, :cond_4

    .line 680
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 682
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyPreviewFpsRange() - No default video preview FPS range"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private applyScalerCropRegion(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 2
    .param p1, "digitalZoom"    # F
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 691
    if-nez p2, :cond_0

    .line 692
    const/4 v0, 0x0

    return v0

    .line 693
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->mappingZoomToScalerRegion(F)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 694
    const/4 v0, 0x1

    return v0
.end method

.method private applySceneMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 3
    .param p1, "sceneMode"    # I
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 701
    if-eqz p2, :cond_1

    .line 703
    if-nez p1, :cond_0

    .line 705
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 711
    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 712
    return v2

    .line 709
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 714
    :cond_1
    return v0
.end method

.method private applyToPreview()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 721
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_1

    .line 723
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-eq v0, v2, :cond_0

    .line 725
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyToPreview() - Capturing burst photos"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const/4 v0, 0x0

    return v0

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyToPreview() - Fail to apply new request to preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_1
    return v2
.end method

.method private captureInternal()Z
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->captureInternal(I)Z

    move-result v0

    return v0
.end method

.method private captureInternal(I)Z
    .locals 24
    .param p1, "flags"    # I

    .prologue
    .line 898
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "captureInternal() - Capture state is "

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

    .line 901
    const/16 v19, 0x0

    return v19

    .line 903
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

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "captureInternal() - Preview state is "

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

    .line 906
    const/16 v19, 0x0

    return v19

    .line 910
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

    .line 911
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 914
    :cond_2
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/Camera$HardwareLevel;

    .line 915
    .local v9, "hardwareLevel":Lcom/oneplus/camera/Camera$HardwareLevel;
    sget-object v19, Lcom/oneplus/camera/Camera$HardwareLevel;->LEGACY:Lcom/oneplus/camera/Camera$HardwareLevel;

    move-object/from16 v0, v19

    if-eq v9, v0, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 958
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    const/4 v7, 0x0

    .line 959
    .local v7, "enableZsl":Z
    :goto_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewStoppedForCapture:Z

    .line 960
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v19, v20, v22

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    .line 962
    :cond_4
    :goto_2
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewStoppedForCapture:Z

    .line 963
    const/4 v7, 0x0

    .line 967
    :cond_5
    const/4 v4, 0x0

    .line 968
    .local v4, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 972
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 973
    .local v4, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Use video snapshot template"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 988
    .end local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_6
    :goto_3
    if-nez v4, :cond_7

    .line 992
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 993
    .restart local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Use still capture template"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1010
    .end local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewStoppedForCapture:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1012
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1015
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->isRawCaptureNeeded()Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - add m_RawSurface"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1022
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/camera/CameraImpl;->prepareCaptureRequestParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1026
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/CameraImpl;->applyPreviewFpsRange(Landroid/util/Range;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 1029
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 1030
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1033
    :cond_c
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    .line 1034
    .local v12, "pictureSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_CameraInfo:Lcom/oneplus/camera/CameraInfo;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v19 .. v20}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 1035
    .local v18, "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const/16 v17, 0x0

    .line 1036
    .local v17, "thumbSize":Landroid/util/Size;
    const/16 v16, 0x0

    .line 1037
    .local v16, "thumbPixelCount":I
    if-eqz v12, :cond_13

    if-eqz v18, :cond_13

    .line 1039
    invoke-static {v12}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;

    move-result-object v14

    .line 1040
    .local v14, "ratio":Lcom/oneplus/util/AspectRatio;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    .end local v17    # "thumbSize":Landroid/util/Size;
    .local v10, "i":I
    :goto_4
    if-ltz v10, :cond_13

    .line 1042
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Size;

    .line 1043
    .local v15, "size":Landroid/util/Size;
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v19

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v20

    mul-int v13, v19, v20

    .line 1044
    .local v13, "pixelCount":I
    invoke-static {v15}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v19

    move-object/from16 v0, v19

    if-ne v0, v14, :cond_d

    move/from16 v0, v16

    if-le v13, v0, :cond_d

    .line 1046
    move-object/from16 v17, v15

    .line 1047
    .local v17, "thumbSize":Landroid/util/Size;
    move/from16 v16, v13

    .line 1040
    .end local v17    # "thumbSize":Landroid/util/Size;
    :cond_d
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 918
    .end local v7    # "enableZsl":Z
    .end local v10    # "i":I
    .end local v12    # "pictureSize":Landroid/util/Size;
    .end local v13    # "pixelCount":I
    .end local v14    # "ratio":Lcom/oneplus/util/AspectRatio;
    .end local v15    # "size":Landroid/util/Size;
    .end local v16    # "thumbPixelCount":I
    .end local v18    # "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_f

    .line 919
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/oneplus/camera/AutoExposureState;->SEARCHING:Lcom/oneplus/camera/AutoExposureState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviousAeState:Lcom/oneplus/camera/AutoExposureState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 921
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Trigger pre-capture flash"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 927
    .restart local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 930
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/camera/CameraImpl;->prepareCaptureRequestParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 931
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 934
    const/16 v19, 0x272e

    const-wide/16 v20, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    move-object/from16 v19, v0

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v20

    new-instance v21, Lcom/oneplus/camera/CameraImpl$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraImpl$9;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v22

    .line 937
    invoke-virtual/range {v19 .. v22}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0

    .line 948
    const/16 v19, 0x1

    return v19

    .line 951
    .end local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catch_0
    move-exception v6

    .line 952
    .local v6, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v6}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 958
    .end local v6    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_10
    const/4 v7, 0x1

    .restart local v7    # "enableZsl":Z
    goto/16 :goto_1

    .line 960
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_5

    goto/16 :goto_2

    .line 978
    .local v4, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_12
    if-eqz v7, :cond_6

    .line 982
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 983
    .local v4, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Use ZSL template"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 986
    .end local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catch_1
    move-exception v8

    .local v8, "ex":Ljava/lang/Throwable;
    goto/16 :goto_3

    .line 996
    .end local v8    # "ex":Ljava/lang/Throwable;
    :catch_2
    move-exception v8

    .line 997
    .restart local v8    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Fail to create capture request builder"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1000
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1002
    const/16 v19, 0x0

    return v19

    .line 1051
    .end local v8    # "ex":Ljava/lang/Throwable;
    .restart local v12    # "pictureSize":Landroid/util/Size;
    .restart local v16    # "thumbPixelCount":I
    .restart local v18    # "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_13
    if-eqz v17, :cond_16

    .line 1052
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Thumbnail image size : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1058
    :goto_5
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1061
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 1063
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_JpegQuality:I

    move/from16 v19, v0

    if-gez v19, :cond_17

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Use default JPEG quality"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    :goto_6
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/oneplus/base/Rotation;

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v5

    .line 1073
    .local v5, "deviceOrientation":I
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 1074
    neg-int v5, v5

    .line 1075
    :cond_14
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

    .line 1078
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/Location;

    .line 1079
    .local v11, "location":Landroid/location/Location;
    if-eqz v11, :cond_15

    .line 1080
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1083
    :cond_15
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/CameraImpl;->m_PictureCaptureRequest:Landroid/hardware/camera2/CaptureRequest;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 1099
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewStoppedForCapture:Z

    move/from16 v19, v0

    if-eqz v19, :cond_19

    and-int/lit8 v19, p1, 0x1

    if-nez v19, :cond_19

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Restart capture session first"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->restartCaptureSession()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 1103
    const/16 v19, 0x1

    return v19

    .line 1055
    .end local v5    # "deviceOrientation":I
    .end local v11    # "location":Landroid/location/Location;
    :cond_16
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

    .line 1056
    .restart local v17    # "thumbSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "captureInternal() - Cannot find thumbnail image size with same aspect ratio, use "

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

    goto/16 :goto_5

    .line 1086
    .end local v12    # "pictureSize":Landroid/util/Size;
    .end local v16    # "thumbPixelCount":I
    .end local v17    # "thumbSize":Landroid/util/Size;
    .end local v18    # "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :catch_3
    move-exception v8

    .line 1087
    .restart local v8    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Fail to create capture request"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1089
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1090
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1091
    const/16 v19, 0x0

    return v19

    .line 1066
    .end local v8    # "ex":Ljava/lang/Throwable;
    .restart local v12    # "pictureSize":Landroid/util/Size;
    .restart local v16    # "thumbPixelCount":I
    .restart local v18    # "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_17
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

    goto/16 :goto_6

    .line 1069
    :cond_18
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v20, 0x5a

    invoke-static/range {v20 .. v20}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_6

    .line 1111
    .restart local v5    # "deviceOrientation":I
    .restart local v11    # "location":Landroid/location/Location;
    :cond_19
    :try_start_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 1112
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

    .line 1126
    :goto_7
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1129
    const/16 v19, 0x1

    return v19

    .line 1114
    :cond_1a
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

    goto :goto_7

    .line 1117
    :catch_4
    move-exception v8

    .line 1118
    .restart local v8    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Fail to start capture"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1120
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1121
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1122
    const/16 v19, 0x0

    return v19

    .line 976
    .end local v5    # "deviceOrientation":I
    .end local v8    # "ex":Ljava/lang/Throwable;
    .end local v11    # "location":Landroid/location/Location;
    .end local v12    # "pictureSize":Landroid/util/Size;
    .end local v16    # "thumbPixelCount":I
    .end local v18    # "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :catch_5
    move-exception v8

    .restart local v8    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_3
.end method

.method private changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;
    .locals 2
    .param p1, "state"    # Lcom/oneplus/camera/Camera$State;

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    .line 1137
    .local v0, "oldState":Lcom/oneplus/camera/Camera$State;
    if-eq v0, p1, :cond_0

    .line 1139
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    .line 1140
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1142
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    return-object v1
.end method

.method private close(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 1216
    if-eqz p1, :cond_0

    .line 1220
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "close() - Close \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' [start]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "close() - Close \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' [end]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1224
    :catch_0
    move-exception v0

    .line 1225
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "close() - Fail to close \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1229
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "close() - Close \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' [end]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1228
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 1229
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "close() - Close \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' [end]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    throw v1
.end method

.method private closeInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1201
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->close(Landroid/hardware/camera2/CameraDevice;)V

    .line 1204
    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    .line 1205
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1209
    :cond_0
    sget-object v0, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 1198
    return-void
.end method

.method private copyImage(Landroid/media/Image;)[Lcom/oneplus/camera/media/ImagePlane;
    .locals 1
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 1238
    const/4 v0, 0x0

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

    .line 1242
    if-nez p1, :cond_0

    .line 1244
    iget-object v7, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "copyImage() - No image"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    new-array v7, v10, [Lcom/oneplus/camera/media/ImagePlane;

    return-object v7

    .line 1249
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    .line 1250
    .local v4, "originalPlanes":[Landroid/media/Image$Plane;
    array-length v7, v4

    new-array v5, v7, [Lcom/oneplus/camera/media/ImagePlane;

    .line 1251
    .local v5, "planes":[Lcom/oneplus/camera/media/ImagePlane;
    array-length v7, v5

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1253
    if-eqz p2, :cond_1

    array-length v7, p2

    if-lt v7, v2, :cond_1

    aget-object v0, p2, v2

    .line 1254
    :goto_1
    aget-object v3, v4, v2

    .line 1255
    .local v3, "originalPlane":Landroid/media/Image$Plane;
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1256
    .local v6, "srcBuffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_2

    array-length v7, v0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 1259
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1260
    new-instance v7, Lcom/oneplus/camera/media/ImagePlane;

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    invoke-direct {v7, v0, v8, v9}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    aput-object v7, v5, v2

    .line 1251
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1253
    .end local v3    # "originalPlane":Landroid/media/Image$Plane;
    .end local v6    # "srcBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    const/4 v0, 0x0

    .local v0, "data":[B
    goto :goto_1

    .line 1263
    .end local v0    # "data":[B
    .restart local v3    # "originalPlane":Landroid/media/Image$Plane;
    .restart local v6    # "srcBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    new-instance v7, Lcom/oneplus/camera/media/ImagePlane;

    invoke-direct {v7, v3}, Lcom/oneplus/camera/media/ImagePlane;-><init>(Landroid/media/Image$Plane;)V

    aput-object v7, v5, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1268
    .end local v2    # "i":I
    .end local v3    # "originalPlane":Landroid/media/Image$Plane;
    .end local v4    # "originalPlanes":[Landroid/media/Image$Plane;
    .end local v5    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    .end local v6    # "srcBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 1269
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "copyImage() - Fail to copy image"

    invoke-static {v7, v8, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1270
    new-array v7, v10, [Lcom/oneplus/camera/media/ImagePlane;

    return-object v7

    .line 1265
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "i":I
    .restart local v4    # "originalPlanes":[Landroid/media/Image$Plane;
    .restart local v5    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_3
    return-object v5
.end method

.method private copyImageAsNV21(Landroid/media/Image;)[Lcom/oneplus/camera/media/ImagePlane;
    .locals 7
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    const/4 v6, 0x0

    .line 1278
    if-nez p1, :cond_0

    .line 1280
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "copyImageAsNV21() - No image"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    new-array v2, v6, [Lcom/oneplus/camera/media/ImagePlane;

    return-object v2

    .line 1285
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    .line 1287
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 1288
    .local v0, "buffer":[B
    invoke-static {p1, v0}, Lcom/oneplus/camera/media/YuvUtils;->multiPlaneYuvToNV21(Landroid/media/Image;[B)V

    .line 1289
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/oneplus/camera/media/ImagePlane;

    new-instance v3, Lcom/oneplus/camera/media/ImagePlane;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v3, v0, v5, v4}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    return-object v2

    .line 1291
    .end local v0    # "buffer":[B
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "copyImageAsNV21() - Unsupported image format : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/oneplus/camera/media/ImagePlane;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1295
    :catch_0
    move-exception v1

    .line 1296
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "copyImageAsNV21() - Fail to copy image"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1297
    new-array v2, v6, [Lcom/oneplus/camera/media/ImagePlane;

    return-object v2
.end method

.method private createMeteringRectangle(Lcom/oneplus/camera/Camera$MeteringRect;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 9
    .param p1, "rect"    # Lcom/oneplus/camera/Camera$MeteringRect;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1305
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->isIgnorable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    const/4 v0, 0x0

    return-object v0

    .line 1307
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    .line 1308
    .local v8, "sensorSize":Landroid/util/Size;
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getLeft()F

    move-result v0

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v1, v0

    .line 1309
    .local v1, "left":I
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getTop()F

    move-result v0

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v2, v0

    .line 1310
    .local v2, "top":I
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getRight()F

    move-result v0

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v7, v0

    .line 1311
    .local v7, "right":I
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getBottom()F

    move-result v0

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v6, v0

    .line 1312
    .local v6, "bottom":I
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getWeight()F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    add-int/lit8 v5, v0, 0x0

    .line 1313
    .local v5, "weight":I
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    sub-int v3, v7, v1

    sub-int v4, v6, v2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    return-object v0
.end method

.method private dumpCaptureRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;

    .prologue
    .line 1321
    if-eqz p2, :cond_2

    .line 1323
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "dumpCaptureRequest() - >>>>>> Start: "

    invoke-static {v4, v5, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1324
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1326
    .local v1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1327
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    .line 1328
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1329
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1332
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "dumpCaptureRequest() - Request: "

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1331
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast v3, [Ljava/lang/Object;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1334
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "dumpCaptureRequest() - <<<<<< End"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private getCameraCharacteristic()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1407
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v1, :cond_0

    .line 1409
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCameraCharacteristic() - camera manager is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    return-object v3

    .line 1414
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v1, :cond_1

    .line 1415
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v1

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCameraCharacteristic() - failed to get camera characteristic"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isRawCaptureNeeded()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1471
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRawCaptureEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mappingZoomToScalerRegion(F)Landroid/graphics/Rect;
    .locals 5
    .param p1, "zoom"    # F

    .prologue
    const/4 v4, 0x0

    .line 1477
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 1478
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

    .line 1479
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

    .line 1480
    return-object v0
.end method

.method private onAutoFocusStartTimeout()V
    .locals 2

    .prologue
    .line 1487
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAutoFocusStartTimeout()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 1491
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1485
    :cond_0
    return-void
.end method

.method private onAutoFocusTimeout()V
    .locals 3

    .prologue
    .line 1499
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-ne v0, v1, :cond_1

    .line 1501
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAutoFocusTimeout()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1507
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    .line 1511
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 1512
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/FocusState;->UNFOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1497
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
    const/4 v3, 0x0

    .line 1521
    sget-object v4, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 1522
    .local v0, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1528
    :pswitch_0
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCaptureCompleted() - Capture state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    return-void

    .line 1531
    :pswitch_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v4, :cond_0

    .line 1533
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCaptureCompleted() - No capture handle"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    return-void

    .line 1539
    :cond_0
    invoke-direct {p0, p3}, Lcom/oneplus/camera/CameraImpl;->updatePropertyState(Landroid/hardware/camera2/CaptureResult;)V

    .line 1542
    iget v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedCount:I

    .line 1545
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCaptureCompleted() - Index : "

    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1546
    if-nez p4, :cond_1

    const/4 v3, 0x1

    .line 1547
    .local v3, "success":Z
    :cond_1
    if-nez v3, :cond_2

    sget-object v4, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-eq v4, v5, :cond_2

    .line 1548
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCaptureCompleted() - Capture failed"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    :cond_2
    iget v4, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedCount:I

    iget v5, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-le v4, v5, :cond_3

    .line 1553
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCaptureCompleted() - Unexpected call-back, drop"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    return-void

    .line 1559
    :cond_3
    const/4 v2, 0x0

    .line 1560
    .local v2, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-eqz v3, :cond_6

    .line 1562
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/camera/media/ImagePlane;

    .line 1563
    .local v1, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v1, :cond_4

    .line 1565
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCaptureCompleted() - Wait for picture"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v4, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1567
    return-void

    .line 1571
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

    .line 1573
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v2, [Lcom/oneplus/camera/media/ImagePlane;

    .line 1574
    .local v2, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v2, :cond_5

    .line 1576
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCaptureCompleted() - Wait for raw picture"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v4, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1578
    return-void

    .line 1583
    .end local v2    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_5
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v1, [Lcom/oneplus/camera/media/ImagePlane;

    .line 1589
    :goto_0
    invoke-direct {p0, p3, v1, v2}, Lcom/oneplus/camera/CameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 1518
    return-void

    .line 1586
    .local v2, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_6
    const/4 v1, 0x0

    .local v1, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    goto :goto_0

    .line 1522
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onCaptureCompleted(Z)V
    .locals 3
    .param p1, "continueCaptureSession"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1593
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureCompleted()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedResults:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1597
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1598
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1599
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1602
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashComplete:Z

    .line 1603
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTimeout:Z

    .line 1604
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    .line 1605
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureStartedReceived:Z

    .line 1606
    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    .line 1607
    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedCount:I

    .line 1608
    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    .line 1609
    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    .line 1610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    .line 1611
    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    .line 1612
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSequenceCompleted:Z

    .line 1613
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1614
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1617
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 1619
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewStoppedForCapture:Z

    if-eqz v0, :cond_2

    .line 1621
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureCompleted() - Restart capture session"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->restartCaptureSession()V

    .line 1632
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1634
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_3

    .line 1636
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureCompleted() - Stop capture session"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 1638
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 1591
    :cond_1
    :goto_1
    return-void

    .line 1624
    :cond_2
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureCompleted() - Restart preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    goto :goto_0

    .line 1640
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_1

    .line 1642
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureCompleted() - Continue stopping preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    goto :goto_1
.end method

.method private onCaptureSequenceCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1653
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureSequenceCompleted()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSequenceCompleted:Z

    .line 1659
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1651
    :goto_0
    :pswitch_0
    return-void

    .line 1662
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureSequenceCompleted() - Wait for picture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1668
    :cond_0
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto :goto_0

    .line 1659
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
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

    .line 1679
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eq v1, p1, :cond_0

    .line 1681
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCaptureSessionClosed() - Unknown session : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    return-void

    .line 1685
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCaptureSessionClosed() - Session : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1689
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2724

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1692
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 1694
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1695
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    .line 1697
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    .line 1699
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    invoke-virtual {v1, v4, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1700
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 1701
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    .line 1705
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    .line 1707
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1708
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    .line 1710
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_4

    .line 1712
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    invoke-virtual {v1, v4, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1713
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 1714
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    .line 1718
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1720
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 1721
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1720
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1722
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1726
    .end local v0    # "i":I
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x271a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1729
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    .line 1730
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1731
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 1732
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 1733
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    .line 1734
    iput v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    .line 1735
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    .line 1736
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    if-eqz v1, :cond_7

    .line 1738
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    .line 1739
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1743
    :cond_7
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1746
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v1, :cond_8

    .line 1748
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1749
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    .line 1751
    :cond_8
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_9

    .line 1753
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    invoke-virtual {v1, v4, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1754
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 1755
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    .line 1757
    :cond_9
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    .line 1760
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1773
    :goto_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1776
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v2, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    if-ne v1, v2, :cond_a

    .line 1778
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCaptureSessionClosed() - Close camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->closeInternal()V

    .line 1676
    :cond_a
    return-void

    .line 1764
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCaptureSessionClosed() - Restart capture session immediately"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startCaptureSession()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1766
    return-void

    .line 1768
    :cond_b
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCaptureSessionClosed() - Fail to restart capture session"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1760
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
    .line 1844
    if-eqz p1, :cond_0

    .line 1845
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_1

    .line 1850
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCaptureSessionConfigured() - Current session state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    return-void

    .line 1854
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureSessionConfigureFailed()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 1860
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_2

    .line 1862
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureSessionConfigureFailed() - Fail to create capture session, cancel starting preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1868
    :cond_2
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1869
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 1841
    return-void
.end method

.method private onCaptureSessionConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_1

    .line 1791
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCaptureSessionConfigured() - Current session state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 1793
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 1795
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1796
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 1798
    :cond_0
    return-void

    .line 1801
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCaptureSessionConfigured() - Session : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 1805
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1808
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1786
    :goto_0
    return-void

    .line 1811
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequest()Z

    goto :goto_0

    .line 1815
    :pswitch_1
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1820
    :pswitch_2
    new-instance v0, Lcom/oneplus/camera/CameraImpl$10;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraImpl$10;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    .line 1827
    const-wide/16 v2, 0x64

    .line 1820
    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1831
    :pswitch_3
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequest()Z

    goto :goto_0

    .line 1808
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1815
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 5
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .prologue
    const/4 v4, 0x0

    .line 1877
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 1878
    .local v0, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1884
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCaptureStarted() - Capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    return-void

    .line 1887
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v1, :cond_0

    .line 1889
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCaptureStarted() - No capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    return-void

    .line 1894
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCaptureStarted() - Index : "

    iget v3, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1895
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    .line 1896
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureStartedReceived:Z

    .line 1899
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-le v1, v2, :cond_1

    .line 1901
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCaptureStarted() - Unexpected call-back, drop"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    return-void

    .line 1906
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    iget v3, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v4, v3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;I)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1874
    return-void

    .line 1878
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDeviceError(Landroid/hardware/camera2/CameraDevice;IZ)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I
    .param p3, "disconnected"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1915
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v4, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-ne v3, v4, :cond_3

    .line 1917
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/camera/CameraImpl;->m_OpenCameraStartTime:J

    sub-long v0, v4, v6

    .line 1918
    .local v0, "duration":J
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1919
    const-wide/16 v4, 0x1324

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 1921
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDeviceError() - Retry opening camera, elapsed time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1928
    :goto_0
    invoke-direct {p0, v8}, Lcom/oneplus/camera/CameraImpl;->openInternal(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1929
    return-void

    .line 1927
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 1931
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDeviceError() - Cannot open camera in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v3, v4, :cond_1

    .line 1968
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDeviceError() - Cancel preview starting"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1974
    :cond_1
    if-eqz p3, :cond_6

    .line 1976
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDeviceError() - Camera \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' disconnected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    const/4 v5, -0x2

    invoke-direct {v4, p0, v5}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;-><init>(Lcom/oneplus/camera/Camera;I)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1986
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v4, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-ne v3, v4, :cond_2

    .line 1987
    sget-object v3, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 1912
    :cond_2
    return-void

    .line 1935
    .end local v0    # "duration":J
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDeviceError() - Current state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->EVENT_ERROR:Lcom/oneplus/base/EventKey;

    sget-object v4, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1941
    invoke-virtual {p0, v8}, Lcom/oneplus/camera/CameraImpl;->close(I)V

    .line 1942
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1943
    sget-object v3, Lcom/oneplus/camera/Camera$State;->UNAVAILABLE:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 1951
    :cond_4
    :goto_2
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v4

    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v3}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 1961
    :goto_3
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 1962
    return-void

    .line 1944
    :cond_5
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v4, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    if-ne v3, v4, :cond_4

    .line 1946
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->EVENT_OPEN_CANCELLED:Lcom/oneplus/base/EventKey;

    sget-object v4, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1947
    sget-object v3, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    goto :goto_2

    .line 1955
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDeviceError() - Stop capture directly"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    invoke-direct {p0, v8}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto :goto_3

    .line 1981
    .restart local v0    # "duration":J
    :cond_6
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDeviceError() - Fail to open camera \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\', error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    invoke-direct {v4, p0, p2}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;-><init>(Lcom/oneplus/camera/Camera;I)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto/16 :goto_1

    .line 1951
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
    .line 1995
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-eq v0, v1, :cond_2

    .line 1997
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceOpened() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->close(Landroid/hardware/camera2/CameraDevice;)V

    .line 1999
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2000
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2001
    sget-object v0, Lcom/oneplus/camera/Camera$State;->UNAVAILABLE:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 2007
    :cond_0
    :goto_0
    return-void

    .line 2002
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    if-ne v0, v1, :cond_0

    .line 2004
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->EVENT_OPEN_CANCELLED:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2005
    sget-object v0, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    goto :goto_0

    .line 2010
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceOpened() - Camera ID : \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', Device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    .line 2016
    sget-object v0, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 2019
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_3

    .line 2021
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startCaptureSession()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2023
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDeviceOpened() - Fail to start capture session"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1992
    :cond_3
    return-void
.end method

.method private onFirstPreviewFrameReceived()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2112
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSessionClosed:Z

    if-eqz v1, :cond_1

    .line 2113
    :cond_0
    return-void

    .line 2115
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onFirstPreviewFrameReceived()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2121
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_2

    .line 2123
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onFirstPreviewFrameReceived() - Continue stopping capture session"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 2125
    invoke-direct {p0, v3}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 2126
    return-void

    .line 2130
    :cond_2
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 2131
    .local v0, "previewState":Lcom/oneplus/camera/OperationState;
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_3

    .line 2133
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFirstPreviewFrameReceived() - Preview state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    return-void

    .line 2138
    :cond_3
    iput-boolean v4, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    .line 2139
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2109
    return-void
.end method

.method private onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V
    .locals 23
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p2, "picturePlanes"    # [Lcom/oneplus/camera/media/ImagePlane;
    .param p3, "rawPicturePlanes"    # [Lcom/oneplus/camera/media/ImagePlane;

    .prologue
    .line 2147
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    .line 2148
    .local v2, "captureState":Lcom/oneplus/camera/OperationState;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_8

    :cond_0
    const/4 v12, 0x1

    .line 2149
    .local v12, "failed":Z
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lt v3, v5, :cond_9

    const/16 v22, 0x1

    .line 2150
    .local v22, "frameCountReached":Z
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->isRawCaptureNeeded()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2152
    if-nez v12, :cond_1

    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_a

    :cond_1
    const/4 v12, 0x1

    .line 2153
    :goto_2
    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lt v3, v5, :cond_b

    const/16 v22, 0x1

    .line 2156
    :cond_2
    :goto_3
    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v2, v3, :cond_4

    .line 2158
    if-nez v22, :cond_3

    if-eqz v12, :cond_4

    .line 2160
    :cond_3
    if-eqz v12, :cond_c

    .line 2161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPictureReceived() - Capture failed, start completing capture"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    :goto_4
    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    .line 2165
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oneplus/camera/CameraImpl;->stopCaptureInternal(Z)V

    .line 2170
    :cond_4
    if-nez v12, :cond_d

    .line 2172
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2173
    .local v6, "pictureFormat":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/oneplus/util/AutomaticId;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2174
    .local v4, "pictureId":Ljava/lang/String;
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    .line 2175
    .local v7, "pictureSize":Landroid/util/Size;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2176
    .local v10, "takenTime":J
    sget-object v13, Lcom/oneplus/camera/CameraImpl;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    invoke-static/range {v3 .. v11}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2178
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->isRawCaptureNeeded()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2180
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/Size;

    .line 2181
    .local v17, "sensorSize":Landroid/util/Size;
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v15, v5, -0x1

    const/16 v16, 0x20

    move-object v14, v4

    move-object/from16 v18, p3

    move-object/from16 v19, p1

    move-wide/from16 v20, v10

    invoke-static/range {v13 .. v21}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2188
    .end local v4    # "pictureId":Ljava/lang/String;
    .end local v6    # "pictureFormat":I
    .end local v7    # "pictureSize":Landroid/util/Size;
    .end local v10    # "takenTime":J
    .end local v17    # "sensorSize":Landroid/util/Size;
    :cond_5
    :goto_5
    if-nez v22, :cond_6

    if-eqz v12, :cond_7

    :cond_6
    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSequenceCompleted:Z

    if-eqz v3, :cond_7

    .line 2189
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    .line 2144
    :cond_7
    return-void

    .line 2148
    .end local v12    # "failed":Z
    .end local v22    # "frameCountReached":Z
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "failed":Z
    goto/16 :goto_0

    .line 2149
    :cond_9
    const/16 v22, 0x0

    .restart local v22    # "frameCountReached":Z
    goto/16 :goto_1

    .line 2152
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 2153
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 2163
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPictureReceived() - Frame count reached, start completing capture"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2185
    :cond_d
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x0

    invoke-static {v5, v9, v8}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;I)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_5
.end method

.method private onPictureReceived(Landroid/media/Image;)V
    .locals 10
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 2035
    sget-object v6, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    .line 2036
    .local v1, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2042
    :pswitch_0
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onPictureReceived() - Capture state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    return-void

    .line 2045
    :pswitch_1
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v6, :cond_0

    .line 2047
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - No capture handle"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    return-void

    .line 2053
    :cond_0
    sget-object v6, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x11

    if-eq v6, v7, :cond_2

    .line 2054
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->copyImage(Landroid/media/Image;)[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v4

    .line 2059
    .local v4, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :goto_0
    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    .line 2060
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2061
    .local v3, "logBuffer":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "{ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_3

    .line 2064
    if-lez v2, :cond_1

    .line 2065
    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    :cond_1
    aget-object v6, v4, v2

    invoke-virtual {v6}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2062
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2056
    .end local v2    # "i":I
    .end local v3    # "logBuffer":Ljava/lang/StringBuilder;
    .end local v4    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->copyImageAsNV21(Landroid/media/Image;)[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v4

    .restart local v4    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    goto :goto_0

    .line 2068
    .restart local v2    # "i":I
    .restart local v3    # "logBuffer":Ljava/lang/StringBuilder;
    :cond_3
    const-string/jumbo v6, " }"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Index : "

    iget v8, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, ", picture data size : "

    invoke-static {v6, v7, v8, v9, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2072
    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    iget v7, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-le v6, v7, :cond_4

    .line 2074
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Unexpected picture, drop"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    return-void

    .line 2079
    :cond_4
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2080
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    if-nez v0, :cond_5

    .line 2082
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2083
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Received picture before capture completed"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    return-void

    .line 2088
    :cond_5
    const/4 v5, 0x0

    .line 2089
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

    .line 2091
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v5, [Lcom/oneplus/camera/media/ImagePlane;

    .line 2092
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v5, :cond_6

    .line 2094
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Wait for raw picture"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2096
    return-void

    .line 2101
    .end local v5    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_6
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2104
    .restart local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    invoke-direct {p0, v0, v4, v5}, Lcom/oneplus/camera/CameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 2032
    return-void

    .line 2036
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onPreCaptureFlashComplete()V
    .locals 2

    .prologue
    .line 2196
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTimeout:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashComplete:Z

    if-eqz v0, :cond_0

    .line 2198
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPreCaptureFlashComplete() - Capture for pre-capture flash timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    .line 2201
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->captureInternal()Z

    .line 2194
    :cond_0
    return-void
.end method

.method private onPreviewCaptureCompleted(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 2210
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 2211
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onFirstPreviewFrameReceived()V

    .line 2214
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/AutoExposureState;

    .line 2215
    .local v1, "prevAeState":Lcom/oneplus/camera/AutoExposureState;
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updatePropertyState(Landroid/hardware/camera2/CaptureResult;)V

    .line 2217
    const/4 v0, 0x0

    .line 2218
    .local v0, "aeStateChanged":Z
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 2219
    const/4 v0, 0x1

    .line 2222
    :cond_1
    sget-object v2, Lcom/oneplus/camera/AutoExposureState;->PRECAPTURE:Lcom/oneplus/camera/AutoExposureState;

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    .line 2224
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v2, v3, :cond_2

    .line 2226
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewCaptureCompleted() - Pre-capture flash completed, capture photo"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    const/16 v2, 0x272e

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 2228
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    .line 2229
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->captureInternal()Z

    .line 2207
    :cond_2
    return-void
.end method

.method private onPreviewFrameReceived()V
    .locals 26

    .prologue
    .line 2239
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oneplus/camera/CameraImpl;->hasHandlers(Lcom/oneplus/base/EventKey;)Z

    move-result v4

    .line 2240
    .local v4, "hasHandlers":Z
    const/4 v10, 0x0

    .line 2241
    .local v10, "planes":[Lcom/oneplus/camera/media/ImagePlane;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    if-eqz v5, :cond_3

    .line 2243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v17

    .line 2246
    .local v17, "image":Landroid/media/Image;
    if-eqz v4, :cond_2

    if-eqz v17, :cond_2

    .line 2248
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image;->getWidth()I

    move-result v24

    .line 2249
    .local v24, "width":I
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image;->getHeight()I

    move-result v16

    .line 2250
    .local v16, "height":I
    mul-int v5, v24, v16

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v21, v5, 0x2

    .line 2251
    .local v21, "nv21Size":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    array-length v5, v5

    move/from16 v0, v21

    if-eq v5, v0, :cond_1

    .line 2252
    :cond_0
    move/from16 v0, v21

    new-array v5, v0, [B

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    .line 2253
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/oneplus/camera/media/YuvUtils;->multiPlaneYuvToNV21(Landroid/media/Image;[B)V

    .line 2254
    const/4 v5, 0x1

    new-array v10, v5, [Lcom/oneplus/camera/media/ImagePlane;

    .end local v10    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    new-instance v5, Lcom/oneplus/camera/media/ImagePlane;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    const/4 v7, 0x1

    move/from16 v0, v24

    invoke-direct {v5, v6, v7, v0}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    const/4 v6, 0x0

    aput-object v5, v10, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2268
    .end local v16    # "height":I
    .end local v21    # "nv21Size":I
    .end local v24    # "width":I
    :cond_2
    if-eqz v17, :cond_3

    .line 2269
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image;->close()V

    .line 2274
    .end local v17    # "image":Landroid/media/Image;
    :cond_3
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v5, v6, :cond_8

    const/16 v20, 0x1

    .line 2275
    .local v20, "isPreviewStarted":Z
    :goto_0
    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v5, :cond_4

    .line 2277
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onPreviewFrameReceived() - Remove preview call-back surface"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 2279
    if-eqz v20, :cond_4

    .line 2280
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    .line 2286
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 2287
    .local v22, "profileTime":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    sub-long v18, v22, v6

    .line 2288
    .local v18, "interval":J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    .line 2289
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_9

    const-wide/16 v6, 0x7d0

    cmp-long v5, v18, v6

    if-ltz v5, :cond_9

    .line 2291
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    int-to-double v6, v5

    move-wide/from16 v0, v18

    long-to-double v8, v0

    div-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double v14, v6, v8

    .line 2292
    .local v14, "fps":D
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    .line 2293
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    .line 2294
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "onPreviewFrameReceived() - FPS : %.1f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    .end local v14    # "fps":D
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    if-nez v5, :cond_6

    .line 2302
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->onFirstPreviewFrameReceived()V

    .line 2305
    :cond_6
    if-nez v20, :cond_a

    .line 2306
    return-void

    .line 2267
    .end local v18    # "interval":J
    .end local v20    # "isPreviewStarted":Z
    .end local v22    # "profileTime":J
    .restart local v17    # "image":Landroid/media/Image;
    :catchall_0
    move-exception v5

    .line 2268
    if-eqz v17, :cond_7

    .line 2269
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image;->close()V

    .line 2267
    :cond_7
    throw v5

    .line 2274
    .end local v17    # "image":Landroid/media/Image;
    :cond_8
    const/16 v20, 0x0

    .restart local v20    # "isPreviewStarted":Z
    goto/16 :goto_0

    .line 2296
    .restart local v18    # "interval":J
    .restart local v22    # "profileTime":J
    :cond_9
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_5

    .line 2297
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    goto :goto_1

    .line 2309
    :cond_a
    if-eqz v4, :cond_b

    if-eqz v10, :cond_b

    .line 2310
    sget-object v25, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x11

    const/4 v11, 0x0

    invoke-static/range {v5 .. v13}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2235
    :cond_b
    return-void
.end method

.method private onRawPictureReceived(Landroid/media/Image;)V
    .locals 10
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 2317
    sget-object v6, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    .line 2318
    .local v1, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2324
    :pswitch_0
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onRawPictureReceived() - Capture state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    return-void

    .line 2327
    :pswitch_1
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v6, :cond_0

    .line 2329
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onRawPictureReceived() - No capture handle"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    return-void

    .line 2334
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->copyImage(Landroid/media/Image;)[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v5

    .line 2337
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    .line 2338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2339
    .local v3, "logBuffer":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "{ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2340
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 2342
    if-lez v2, :cond_1

    .line 2343
    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2344
    :cond_1
    aget-object v6, v5, v2

    invoke-virtual {v6}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2340
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2346
    :cond_2
    const-string/jumbo v6, " }"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2347
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onRawPictureReceived() - Index : "

    iget v8, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, ", picture data size : "

    invoke-static {v6, v7, v8, v9, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2350
    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v6, :cond_3

    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    iget v7, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-le v6, v7, :cond_3

    .line 2352
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onRawPictureReceived() - Unexpected picture, drop"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    return-void

    .line 2357
    :cond_3
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2358
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    if-nez v0, :cond_4

    .line 2360
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2361
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onRawPictureReceived() - Received picture before capture completed"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    return-void

    .line 2366
    :cond_4
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/oneplus/camera/media/ImagePlane;

    .line 2367
    .local v4, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v4, :cond_5

    .line 2369
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onRawPictureReceived() - Wait for picture"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2371
    return-void

    .line 2375
    :cond_5
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2378
    .restart local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    invoke-direct {p0, v0, v4, v5}, Lcom/oneplus/camera/CameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 2314
    return-void

    .line 2318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private openInternal(I)Z
    .locals 7
    .param p1, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 2428
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2430
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "openInternal() - Waiting for another camera closing"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    :try_start_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2434
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "openInternal() - Another camera closed"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2446
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openInternal() - Start opening camera \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_DeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2448
    const/4 v2, 0x1

    return v2

    .line 2437
    :catch_0
    move-exception v0

    .line 2438
    .local v0, "ex":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "openInternal() - Interrupted while waiting for another camera"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2439
    return v6

    .line 2451
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 2452
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openInternal() - Fail to start opening camera \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2453
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2454
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    const/4 v4, -0x4

    invoke-direct {v3, p0, v4}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;-><init>(Lcom/oneplus/camera/Camera;I)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2455
    return v6
.end method

.method private prepareCaptureRequestParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3
    .param p1, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2494
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAELocked:Z

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyAELock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2495
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AeRegions:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyAERegions(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2496
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureCompensation:F

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyExposureCompensation(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2499
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyFocusMode(Lcom/oneplus/camera/FocusMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2500
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AfRegions:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyAfRegions(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2506
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applySceneMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2509
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyAwbMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2510
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAwbLocked:Z

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyAwbLock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2512
    iget-wide v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oneplus/camera/CameraImpl;->applyExposureTime(JLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2515
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusValue:F

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyFocusDistance(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2518
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyISO(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2521
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    if-eqz v0, :cond_0

    .line 2523
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepareCaptureRequestParams() - FPS range : "

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2524
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2528
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyScalerCropRegion(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2531
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyFaceDetection(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2488
    return-void
.end method

.method private prepareSurface(Ljava/lang/Object;)Landroid/view/Surface;
    .locals 7
    .param p1, "receiver"    # Ljava/lang/Object;

    .prologue
    .line 2539
    instance-of v4, p1, Landroid/view/SurfaceHolder;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 2541
    check-cast v0, Landroid/view/SurfaceHolder;

    .line 2543
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 2564
    .end local v0    # "holder":Landroid/view/SurfaceHolder;
    .local v2, "surface":Landroid/view/Surface;
    :goto_0
    return-object v2

    .line 2545
    .end local v2    # "surface":Landroid/view/Surface;
    :cond_0
    instance-of v4, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 2547
    check-cast v3, Landroid/graphics/SurfaceTexture;

    .line 2549
    .local v3, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2550
    .restart local v2    # "surface":Landroid/view/Surface;
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2552
    .end local v2    # "surface":Landroid/view/Surface;
    .end local v3    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :cond_1
    instance-of v4, p1, Landroid/media/ImageReader;

    if-eqz v4, :cond_2

    move-object v1, p1

    .line 2554
    check-cast v1, Landroid/media/ImageReader;

    .line 2555
    .local v1, "reader":Landroid/media/ImageReader;
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .restart local v2    # "surface":Landroid/view/Surface;
    goto :goto_0

    .line 2557
    .end local v1    # "reader":Landroid/media/ImageReader;
    .end local v2    # "surface":Landroid/view/Surface;
    :cond_2
    instance-of v4, p1, Landroid/view/Surface;

    if-eqz v4, :cond_3

    move-object v2, p1

    .line 2558
    check-cast v2, Landroid/view/Surface;

    .restart local v2    # "surface":Landroid/view/Surface;
    goto :goto_0

    .line 2561
    .end local v2    # "surface":Landroid/view/Surface;
    :cond_3
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prepareSurface() - Unsupported receiver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    const/4 v4, 0x0

    return-object v4
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
    .line 2583
    .local p1, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<Lcom/oneplus/camera/CameraCaptureEventArgs;>;"
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-super {p0, v0, p1}, Lcom/oneplus/camera/BaseCamera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2584
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->hasHandlers(Lcom/oneplus/base/EventKey;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 2586
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removePreviewReceivedHandler() - Remove preview call-back surface"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 2588
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    .line 2589
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    .line 2590
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 2591
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    .line 2581
    :cond_0
    return-void
.end method

.method private restartCaptureSession()V
    .locals 2

    .prologue
    .line 4008
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_0

    .line 4009
    return-void

    .line 4011
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restartCaptureSession()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4014
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 4015
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->stopDriverCaptureSession()V

    .line 4018
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 4005
    return-void
.end method

.method private setAELockedProp(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2653
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2654
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAELocked:Z

    if-ne v1, p1, :cond_0

    .line 2655
    return v0

    .line 2658
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAELocked:Z

    .line 2659
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyAELock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2660
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2663
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x1

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
    .line 2690
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2693
    if-nez p1, :cond_1

    .line 2694
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2701
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AeRegions:Ljava/util/List;

    .line 2702
    .local v0, "oldRegions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_AeRegions:Ljava/util/List;

    .line 2703
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyAERegions(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAELocked:Z

    if-eqz v1, :cond_3

    .line 2707
    :cond_0
    :goto_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2695
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

    .line 2696
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Too many AE regions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2698
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 2704
    .restart local v0    # "oldRegions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    goto :goto_1
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
    .line 2716
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2719
    if-nez p1, :cond_1

    .line 2720
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2726
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAFRegionsProp() - Regions : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2729
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AfRegions:Ljava/util/List;

    .line 2730
    .local v0, "oldRegions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_AfRegions:Ljava/util/List;

    .line 2731
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyAfRegions(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2732
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2739
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2721
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

    .line 2722
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Too many AF regions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2724
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0
.end method

.method private setAWBModeProp(I)Z
    .locals 5
    .param p1, "awbMode"    # I

    .prologue
    .line 2754
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2755
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2756
    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    if-ne v2, p1, :cond_0

    .line 2757
    const/4 v2, 0x1

    return v2

    .line 2758
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2759
    .local v0, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2761
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAWBModeProp() - Invalid awb mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    const/4 v2, 0x0

    return v2

    .line 2765
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setAWBModeProp() - Awb mode : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2768
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    .line 2769
    .local v1, "oldAwbMode":I
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    .line 2772
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/camera/CameraImpl;->applyAwbMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2773
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2776
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private setAudioSourceParams(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .prologue
    .line 2746
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2744
    return-void
.end method

.method private setAwbLockedProp(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2671
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2672
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAwbLocked:Z

    if-ne v1, p1, :cond_0

    .line 2673
    return v0

    .line 2676
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAwbLocked:Z

    .line 2677
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyAwbLock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2678
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2681
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setDigitalZoomProp(F)Z
    .locals 2
    .param p1, "zoom"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2782
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2783
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2784
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    .line 2785
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2786
    iput v1, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    .line 2787
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->applyScalerCropRegion(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2788
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2789
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
    .line 2797
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2798
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2801
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2802
    .local v0, "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 2803
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2808
    :cond_0
    :goto_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2809
    .local v2, "step":F
    div-float v3, p1, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    mul-float p1, v3, v2

    .line 2810
    iget v3, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureCompensation:F

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    .line 2811
    const/4 v3, 0x0

    return v3

    .line 2804
    .end local v2    # "step":F
    :cond_1
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    .line 2805
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    .line 2813
    .restart local v2    # "step":F
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setExposureCompensationProp() - EV : "

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2816
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureCompensation:F

    .line 2817
    .local v1, "oldEV":F
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureCompensation:F

    .line 2818
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v3}, Lcom/oneplus/camera/CameraImpl;->applyExposureCompensation(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2819
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2822
    :cond_3
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private setExposureTimeProp(J)Z
    .locals 7
    .param p1, "exposureTime"    # J

    .prologue
    .line 2830
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2831
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2832
    iget-wide v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    cmp-long v1, v4, p1

    if-nez v1, :cond_0

    .line 2833
    const/4 v1, 0x1

    return v1

    .line 2834
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2835
    .local v0, "exposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const-wide/16 v4, -0x1

    cmp-long v1, p1, v4

    if-eqz v1, :cond_1

    .line 2837
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, p1, v4

    if-lez v1, :cond_3

    .line 2839
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setExposureTimeProp() - Exposure time is too large, trim to upper"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 2849
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setExposureTimeProp() - Exposure time : "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2852
    iget-wide v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    .line 2853
    .local v2, "oldExposureTime":J
    iput-wide p1, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    .line 2856
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/camera/CameraImpl;->applyExposureTime(JLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2857
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2860
    :cond_2
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2842
    .end local v2    # "oldExposureTime":J
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, p1, v4

    if-gez v1, :cond_1

    .line 2844
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setExposureTimeProp() - Exposure time is too small, trim to lower"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0
.end method

.method private setFaceDetectionProp(Z)Z
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2867
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2868
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    if-ne v1, p1, :cond_0

    .line 2869
    return v0

    .line 2870
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    .line 2871
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyFaceDetection(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2872
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2873
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 9
    .param p1, "flashMode"    # Lcom/oneplus/camera/FlashMode;
    .param p2, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/4 v8, 0x0

    .line 2881
    const/4 v1, 0x1

    .line 2882
    .local v1, "canAEModeOn":Z
    iget-wide v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget v3, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 2883
    :cond_0
    const/4 v1, 0x0

    .line 2886
    :cond_1
    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

    .line 2887
    if-eqz p2, :cond_3

    .line 2891
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-FlashModeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2919
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported flash mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2894
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    sget-object v4, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    if-ne v3, v4, :cond_4

    .line 2896
    const/4 v0, 0x1

    .line 2897
    .local v0, "aeCtrlValue":I
    const/4 v2, 0x0

    .line 2898
    .local v2, "flashModeValue":I
    sget-object v3, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    iput-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

    .line 2921
    :goto_0
    if-nez v1, :cond_2

    .line 2923
    const/4 v0, 0x0

    .line 2924
    const/4 v2, 0x0

    .line 2926
    :cond_2
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2927
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2931
    .end local v0    # "aeCtrlValue":I
    .end local v2    # "flashModeValue":I
    :cond_3
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    .line 2878
    return-void

    .line 2902
    :cond_4
    const/4 v0, 0x2

    .line 2903
    .restart local v0    # "aeCtrlValue":I
    const/4 v2, 0x1

    .restart local v2    # "flashModeValue":I
    goto :goto_0

    .line 2907
    .end local v0    # "aeCtrlValue":I
    .end local v2    # "flashModeValue":I
    :pswitch_1
    const/4 v0, 0x1

    .line 2908
    .restart local v0    # "aeCtrlValue":I
    const/4 v2, 0x0

    .line 2909
    .restart local v2    # "flashModeValue":I
    goto :goto_0

    .line 2911
    .end local v0    # "aeCtrlValue":I
    .end local v2    # "flashModeValue":I
    :pswitch_2
    const/4 v0, 0x3

    .line 2912
    .restart local v0    # "aeCtrlValue":I
    const/4 v2, 0x1

    .line 2913
    .restart local v2    # "flashModeValue":I
    goto :goto_0

    .line 2915
    .end local v0    # "aeCtrlValue":I
    .end local v2    # "flashModeValue":I
    :pswitch_3
    const/4 v0, 0x1

    .line 2916
    .restart local v0    # "aeCtrlValue":I
    const/4 v2, 0x2

    .line 2917
    .restart local v2    # "flashModeValue":I
    goto :goto_0

    .line 2891
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
    const/4 v4, 0x0

    .line 2939
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2940
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    .line 2941
    .local v0, "oldFlashMode":Lcom/oneplus/camera/FlashMode;
    if-ne v0, p1, :cond_0

    .line 2942
    return v4

    .line 2943
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

    .line 2945
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFlashModeProp() - No flash on camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    return v4

    .line 2950
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFlashModeProp() - Flash mode : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2951
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2954
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2957
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setFocusModeProp(Lcom/oneplus/camera/FocusMode;)Z
    .locals 5
    .param p1, "focusMode"    # Lcom/oneplus/camera/FocusMode;

    .prologue
    .line 3003
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3006
    if-nez p1, :cond_0

    .line 3007
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No focus mode specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3008
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3009
    .local v0, "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3011
    sget-object v2, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3012
    sget-object p1, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    .line 3017
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFocusModeProp() - Invalid focus mode, change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    if-ne v2, p1, :cond_4

    .line 3020
    const/4 v2, 0x0

    return v2

    .line 3013
    :cond_2
    sget-object v2, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3014
    sget-object p1, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    goto :goto_0

    .line 3016
    :cond_3
    sget-object p1, Lcom/oneplus/camera/FocusMode;->DISABLED:Lcom/oneplus/camera/FocusMode;

    goto :goto_0

    .line 3022
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFocusModeProp() - Focus mode : "

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3025
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 3026
    .local v1, "oldMode":Lcom/oneplus/camera/FocusMode;
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 3027
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/camera/CameraImpl;->applyFocusMode(Lcom/oneplus/camera/FocusMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v2, v3, :cond_5

    .line 3029
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 3037
    :cond_5
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private setFocusProp(F)Z
    .locals 5
    .param p1, "focusValue"    # F

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2966
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2967
    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusValue:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 2968
    const/4 v2, 0x1

    return v2

    .line 2969
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2970
    .local v0, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    .line 2972
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    .line 2974
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFocusProp() - Focus value is too large, trim to upper"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2975
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2984
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFocusProp() - Focus : "

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2987
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusValue:F

    .line 2988
    .local v1, "oldFocus":F
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusValue:F

    .line 2991
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/camera/CameraImpl;->applyFocusDistance(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2992
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2995
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 2977
    .end local v1    # "oldFocus":F
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 2979
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFocusProp() - Focus value is too small, trim to lower"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0
.end method

.method private setISOProp(I)Z
    .locals 5
    .param p1, "iso"    # I

    .prologue
    .line 3045
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3046
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3047
    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    if-ne v2, p1, :cond_0

    .line 3048
    const/4 v2, 0x1

    return v2

    .line 3049
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 3050
    .local v0, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 3052
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le p1, v2, :cond_3

    .line 3054
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setISOProp() - ISO value is too large, trim to upper"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3055
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3064
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setISOProp() - ISO value : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3067
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    .line 3068
    .local v1, "oldIsoValue":I
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    .line 3071
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/camera/CameraImpl;->applyISO(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3072
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 3075
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 3057
    .end local v1    # "oldIsoValue":I
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 3059
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setISOProp() - ISO value is too small, trim to lower"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3060
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method private setJpegQualityProp(I)Z
    .locals 2
    .param p1, "quality"    # I

    .prologue
    const/4 v1, 0x0

    .line 3082
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3083
    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 3084
    :cond_0
    return v1

    .line 3085
    :cond_1
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_JpegQuality:I

    .line 3086
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setPictureSize(Landroid/util/Size;)Z
    .locals 5
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    const/4 v4, 0x0

    .line 3094
    if-nez p1, :cond_0

    .line 3095
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No picture size specified."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3096
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3098
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPictureSize() - Size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not contained in size list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3099
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid picture size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3101
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3102
    return v4

    .line 3105
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPictureSize() - Size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3106
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 3107
    .local v0, "prevSize":Landroid/util/Size;
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 3108
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3111
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_3

    .line 3113
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPictureSize() - Restart capture session to apply new picture size"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    invoke-direct {p0, v4}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 3115
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startCaptureSession()Z

    .line 3119
    :cond_3
    const/4 v1, 0x1

    return v1
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
    .line 3649
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3650
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3653
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    invoke-virtual {v1, p1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3654
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 3655
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3662
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviewFpsRangeProp() - FPS range : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3663
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    .line 3664
    .local v0, "oldRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    .line 3665
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyPreviewFpsRange(Landroid/util/Range;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3666
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 3669
    :cond_3
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3657
    .end local v0    # "oldRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviewFpsRangeProp() - Invalid range : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPreviewReceiver(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "receiver"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3127
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3128
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    .line 3129
    .local v0, "prevReceiver":Ljava/lang/Object;
    if-ne v0, p1, :cond_0

    .line 3130
    return v5

    .line 3131
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v2, v3, :cond_1

    .line 3133
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreviewReceiver() - Preview state is "

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

    .line 3134
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Cannot change preview receiver when preview state is not STOPPED."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3138
    :cond_1
    invoke-direct {p0, v5}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 3141
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v2, :cond_4

    .line 3144
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 3146
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 3147
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3148
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 3149
    :cond_2
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    .line 3153
    :cond_3
    if-eqz p1, :cond_4

    .line 3155
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->prepareSurface(Ljava/lang/Object;)Landroid/view/Surface;

    move-result-object v1

    .line 3156
    .local v1, "surface":Landroid/view/Surface;
    if-eqz v1, :cond_5

    .line 3157
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 3167
    .end local v1    # "surface":Landroid/view/Surface;
    :cond_4
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v2, p1}, Lcom/oneplus/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3170
    const/4 v2, 0x1

    return v2

    .line 3160
    .restart local v1    # "surface":Landroid/view/Surface;
    :cond_5
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setPreviewReceiver() - Fail to prepare Surface"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Invalid preview receiver."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setPreviewSizeProp(Landroid/util/Size;)Z
    .locals 6
    .param p1, "previewSize"    # Landroid/util/Size;

    .prologue
    const/4 v5, 0x0

    .line 3178
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3179
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3182
    if-nez p1, :cond_0

    .line 3183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No preview size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3184
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 3185
    .local v1, "oldSize":Landroid/util/Size;
    invoke-virtual {p1, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3186
    return v5

    .line 3187
    :cond_1
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3189
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreviewSizeProp() - Invalid preview size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3190
    return v5

    .line 3195
    :cond_2
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v2}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 3204
    const/4 v0, 0x0

    .line 3209
    .local v0, "needRestartPreview":Z
    :goto_0
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 3212
    if-eqz v0, :cond_3

    .line 3214
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setPreviewSizeProp() - Restart preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3215
    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->startPreview(I)Z

    .line 3219
    :cond_3
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 3199
    .end local v0    # "needRestartPreview":Z
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setPreviewSizeProp() - Stop preview to change preview size"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3200
    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->stopPreview(I)V

    .line 3201
    const/4 v0, 0x1

    .line 3202
    .restart local v0    # "needRestartPreview":Z
    goto :goto_0

    .line 3195
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

    .line 3225
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRawCaptureProp() - isEnabled is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3226
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3227
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRawCaptureEnabled:Z

    if-ne v1, p1, :cond_0

    .line 3228
    return v0

    .line 3229
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRawCaptureEnabled:Z

    .line 3231
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setRecordingModeProp(Z)Z
    .locals 5
    .param p1, "isRecordingMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3238
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3239
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-ne v1, p1, :cond_0

    .line 3240
    return v2

    .line 3241
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v3, :cond_1

    .line 3243
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRecordingModeProp() - Current capture state is "

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

    .line 3244
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot change recording mode due to current capture state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3247
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRecordingModeProp() - Recording mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3251
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v3

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 3260
    const/4 v0, 0x0

    .line 3265
    .local v0, "needRestartPreview":Z
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    .line 3268
    if-eqz v0, :cond_2

    .line 3270
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setRecordingModeProp() - Restart preview"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->startPreview(I)Z

    .line 3275
    :cond_2
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-eqz p1, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3255
    .end local v0    # "needRestartPreview":Z
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setRecordingModeProp() - Stop preview to change recording mode"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3256
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopPreview(I)V

    .line 3257
    const/4 v0, 0x1

    .line 3258
    .restart local v0    # "needRestartPreview":Z
    goto :goto_0

    .line 3275
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 3251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setSceneModeProp(I)Z
    .locals 6
    .param p1, "sceneMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 3283
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3284
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3285
    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    if-ne v2, p1, :cond_0

    .line 3286
    const/4 v2, 0x1

    return v2

    .line 3287
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3288
    .local v1, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 3290
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSceneModeProp() - Invalid scene mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    return v5

    .line 3294
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSceneModeProp() - Scene mode : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3297
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/camera/CameraImpl;->applySceneMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3298
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 3301
    :cond_2
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    .line 3302
    .local v0, "oldSceneMode":I
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    .line 3303
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private setVideoSizeProp(Landroid/util/Size;)Z
    .locals 5
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    const/4 v4, 0x0

    .line 3311
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3312
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3313
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 3325
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 3326
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No video size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3317
    :pswitch_0
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v1, :cond_0

    .line 3318
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setVideoSizeProp() - Apply video size when starting preview next time"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3327
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3329
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVideoSizeProp() - Invalid video size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3330
    return v4

    .line 3332
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3333
    return v4

    .line 3335
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setVideoSizeProp() - Video size : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3338
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 3339
    .local v0, "oldSize":Landroid/util/Size;
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 3340
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3313
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

    .line 3367
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v3, :cond_0

    .line 3368
    return-void

    .line 3371
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v3, v6, :cond_2

    move v2, v4

    .line 3372
    .local v2, "isPreviewStarted":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 3378
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startAutoFocus()"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3383
    if-eqz v2, :cond_4

    .line 3386
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-FocusStateSwitchesValues()[I

    move-result-object v6

    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/FocusState;

    invoke-virtual {v3}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v3

    aget v3, v6, v3

    packed-switch v3, :pswitch_data_0

    .line 3402
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startAutoFocus() - Trigger AF"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3403
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3406
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 3409
    .local v0, "afRequest":Landroid/hardware/camera2/CaptureRequest;
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 3415
    .end local v0    # "afRequest":Landroid/hardware/camera2/CaptureRequest;
    :goto_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3416
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-ne v3, v5, :cond_3

    .line 3418
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3419
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3420
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3364
    :goto_3
    return-void

    .end local v2    # "isPreviewStarted":Z
    :cond_2
    move v2, v5

    .line 3371
    goto :goto_0

    .line 3390
    .restart local v2    # "isPreviewStarted":Z
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startAutoFocus() - Cancel current auto-focus"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3393
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->cancelAutoFocus(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3399
    :goto_4
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v6, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 3396
    :catch_0
    move-exception v1

    .line 3397
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startAutoFocus() - Fail to cancel auto-focus"

    invoke-static {v3, v6, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 3412
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 3413
    .restart local v1    # "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startAutoFocus() - Fail to start autofocus"

    invoke-static {v3, v6, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3424
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    iput-boolean v4, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 3425
    const/16 v3, 0x271b

    const-wide/16 v6, 0x1388

    invoke-static {p0, v3, v4, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 3426
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_3

    .line 3430
    :cond_4
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 3386
    nop

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

    const/4 v10, 0x0

    .line 3439
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v5

    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v8}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    .line 3453
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startCaptureSession() - Current session state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3454
    return v10

    .line 3443
    :pswitch_0
    return v7

    .line 3458
    :pswitch_1
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-gtz v5, :cond_1

    .line 3460
    :cond_0
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startCaptureSession() - Empty preview size"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3461
    return v10

    .line 3465
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 3466
    .local v2, "pictureSize":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-gtz v5, :cond_3

    .line 3468
    :cond_2
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startCaptureSession() - Empty picture size"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3469
    return v10

    .line 3473
    :cond_3
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3474
    .local v1, "pictureFormat":I
    sparse-switch v1, :sswitch_data_0

    .line 3484
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startCaptureSession() - Unknown picture format : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3485
    return v10

    .line 3481
    :sswitch_0
    const/16 v1, 0x23

    .line 3489
    :sswitch_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3490
    .local v4, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oneplus/camera/CameraImpl;->prepareSurface(Ljava/lang/Object;)Landroid/view/Surface;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    .line 3491
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    if-nez v5, :cond_4

    .line 3493
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startCaptureSession() - Fail to prepare Surface for preview"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3494
    return v10

    .line 3496
    :cond_4
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3499
    iget-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    if-eqz v5, :cond_6

    .line 3501
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startCaptureSession() - Video surface : "

    iget-object v9, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    invoke-static {v5, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3502
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3513
    :goto_0
    iget-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-nez v5, :cond_8

    .line 3514
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v9

    const/16 v5, 0x100

    if-ne v1, v5, :cond_7

    move v5, v6

    :goto_1
    invoke-static {v8, v9, v1, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    .line 3519
    :goto_2
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startCaptureSession() - Picture reader buffer size : "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3520
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 3521
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    .line 3522
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3524
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->isRawCaptureNeeded()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3526
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startCaptureSession() - add rawSurface into surfaces list"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 3528
    .local v3, "sensorSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    const/16 v8, 0x20

    invoke-static {v5, v6, v8, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    .line 3529
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_RawCallback:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 3530
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    .line 3531
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3538
    .end local v3    # "sensorSize":Landroid/util/Size;
    :cond_5
    :try_start_0
    iget-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-nez v5, :cond_a

    .line 3539
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3547
    :goto_3
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    .line 3550
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 3551
    iget-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    if-eqz v5, :cond_b

    .line 3552
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 3560
    :goto_4
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v5}, Lcom/oneplus/camera/CameraImpl;->prepareCaptureRequestParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3561
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v5, v6}, Lcom/oneplus/camera/CameraImpl;->applyPreviewFpsRange(Landroid/util/Range;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3571
    :goto_5
    :try_start_1
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startCaptureSession() - Create capture session for camera \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3572
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v5, v4, v6, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 3573
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSessionClosed:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3582
    sget-object v5, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 3585
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x2711

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3588
    return v7

    .line 3506
    :cond_6
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/16 v9, 0x23

    invoke-static {v5, v8, v9, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    .line 3507
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReaderCallback:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 3508
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    .line 3509
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    move v5, v7

    .line 3514
    goto/16 :goto_1

    .line 3515
    :cond_8
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-lez v5, :cond_9

    .line 3516
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v5, v6, v1, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    goto/16 :goto_2

    .line 3518
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

    goto/16 :goto_2

    .line 3542
    :cond_a
    :try_start_2
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startCaptureSession() - Create request builder for video recording"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3543
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 3564
    :catch_0
    move-exception v0

    .line 3565
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startCaptureSession() - Fail to create preview request builder"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 3555
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_b
    :try_start_3
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startCaptureSession() - Add preview call-back surface"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 3576
    :catch_1
    move-exception v0

    .line 3577
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startCaptureSession() - Fail to create capture session for camera \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3578
    return v10

    .line 3439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3474
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
    const/4 v3, 0x0

    .line 3677
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_0

    .line 3679
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreviewRequest() - Capture session state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3680
    return v3

    .line 3682
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3688
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreviewRequest() - Preview state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3689
    return v3

    .line 3692
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreviewRequest() - Start preview request for camera \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3695
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3698
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    sget-object v1, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    if-ne v0, v1, :cond_1

    .line 3699
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->cancelAutoFocus(I)V

    .line 3702
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3703
    const/4 v0, 0x1

    return v0

    .line 3707
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3708
    return v3

    .line 3682
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startPreviewRequestDirectly()Z
    .locals 5

    .prologue
    .line 3718
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startPreviewRequestDirectly()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
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

    .line 3723
    const/4 v1, 0x1

    return v1

    .line 3726
    :catch_0
    move-exception v0

    .line 3727
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPreviewRequestDirectly() - Fail to start preview for camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3728
    const/4 v1, 0x0

    return v1
.end method

.method private stopCaptureInternal(Z)V
    .locals 6
    .param p1, "abortCaptures"    # Z

    .prologue
    const/4 v5, 0x1

    .line 3808
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v3, :cond_0

    .line 3810
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - No capture handle"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3811
    return-void

    .line 3813
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 3814
    .local v0, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3828
    :goto_0
    :pswitch_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3831
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x272e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3834
    const/4 v2, 0x0

    .line 3835
    .local v2, "ignoreCallbacks":Z
    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v3, :cond_1

    .line 3837
    iget v3, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-eq v3, v5, :cond_3

    .line 3841
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - Stop repeating request"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3842
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3866
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    .line 3868
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - Stop capture directly"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3869
    invoke-direct {p0, v5}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    .line 3805
    :cond_2
    :goto_2
    return-void

    .line 3817
    .end local v2    # "ignoreCallbacks":Z
    :pswitch_1
    return-void

    .line 3819
    :pswitch_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - Stop while starting"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3824
    :pswitch_3
    return-void

    .line 3845
    .restart local v2    # "ignoreCallbacks":Z
    :catch_0
    move-exception v1

    .line 3846
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - Fail to stop repeating"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3849
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    if-eqz p1, :cond_1

    .line 3853
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - Abort captures"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3854
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 3855
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3861
    :goto_3
    const/4 v2, 0x1

    goto :goto_1

    .line 3858
    :catch_1
    move-exception v1

    .line 3859
    .restart local v1    # "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - Fail to abort captures"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3871
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_4
    iget-boolean v3, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureStartedReceived:Z

    if-nez v3, :cond_2

    .line 3873
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - Capture call-back not received yet, stop capture directly"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3874
    invoke-direct {p0, v5}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto :goto_2

    .line 3814
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private stopCaptureSession(Z)V
    .locals 5
    .param p1, "stopDirectly"    # Z

    .prologue
    const/16 v4, 0x2724

    .line 3883
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSessionClosed:Z

    if-eqz v0, :cond_1

    .line 3885
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3887
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - Stop waiting for call-back"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3888
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3889
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 3893
    :goto_0
    return-void

    .line 3892
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - CaptureSession is already closed"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3895
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3911
    :cond_2
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopCaptureSession() - Stop capture session for camera \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3914
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 3940
    :cond_3
    :goto_1
    :pswitch_1
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2

    .line 3946
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - Stop preview directly"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3947
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3952
    :pswitch_2
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 3955
    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    if-eqz v0, :cond_5

    .line 3962
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->stopDriverCaptureSession()V

    .line 3963
    if-eqz p1, :cond_6

    .line 3964
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 3880
    :goto_2
    return-void

    .line 3898
    :pswitch_3
    return-void

    .line 3900
    :pswitch_4
    if-nez p1, :cond_2

    .line 3901
    return-void

    .line 3906
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - Stop while starting"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3907
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 3908
    return-void

    .line 3919
    :pswitch_6
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - Stop capture and wait for completion"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3920
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 3921
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->stopCaptureInternal(Z)V

    .line 3922
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_3

    .line 3924
    return-void

    .line 3926
    :pswitch_7
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - Stop while starting capture, stop capture directly"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3927
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto :goto_1

    .line 3930
    :pswitch_8
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - Wait for capture completion"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3931
    if-nez p1, :cond_3

    .line 3933
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 3934
    return-void

    .line 3955
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3957
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - Wait for first preview frame"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3958
    return-void

    .line 3966
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 3895
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 3914
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
    .end packed-switch

    .line 3940
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private stopDriverCaptureSession()V
    .locals 3

    .prologue
    .line 3975
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopDriverCaptureSession() - Stop repeating"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3976
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3984
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopDriverCaptureSession() - Abort captures"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3985
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3993
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopDriverCaptureSession() - Close session"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3994
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 3995
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSessionClosed:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 3971
    :goto_2
    return-void

    .line 3979
    :catch_0
    move-exception v0

    .line 3980
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopDriverCaptureSession() - Fail to stop repeating"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3988
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 3989
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopDriverCaptureSession() - Fail to abort captures"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3998
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 3999
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopDriverCaptureSession() - Fail to close captures"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private updateAEState(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 6
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 4177
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4178
    .local v0, "aeState":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 4179
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4180
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/AutoExposureState;

    .line 4182
    .local v2, "prevAeState":Lcom/oneplus/camera/AutoExposureState;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 4203
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAEState() - Unknown AE state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4204
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .line 4207
    .local v1, "aeStateChanged":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 4208
    iput-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviousAeState:Lcom/oneplus/camera/AutoExposureState;

    .line 4209
    :cond_1
    return v1

    .line 4185
    .end local v1    # "aeStateChanged":Z
    :pswitch_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->CONVERGED:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4188
    .end local v1    # "aeStateChanged":Z
    :pswitch_1
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4191
    .end local v1    # "aeStateChanged":Z
    :pswitch_2
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->LOCKED:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4194
    .end local v1    # "aeStateChanged":Z
    :pswitch_3
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->PRECAPTURE:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4197
    .end local v1    # "aeStateChanged":Z
    :pswitch_4
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->SEARCHING:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4200
    .end local v1    # "aeStateChanged":Z
    :pswitch_5
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4182
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
    .line 4217
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/Face;

    .line 4218
    .local v4, "rawData":[Landroid/hardware/camera2/params/Face;
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceListIndex:I

    aget-object v1, v5, v6

    .line 4219
    .local v1, "currentFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4220
    return-void

    .line 4223
    :cond_1
    iget v5, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceListIndex:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v6, v6

    rem-int/2addr v5, v6

    iput v5, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceListIndex:I

    .line 4224
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceListIndex:I

    aget-object v3, v5, v6

    .line 4225
    .local v3, "newFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    .line 4227
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 4228
    .local v0, "cropRegion":Landroid/graphics/Rect;
    array-length v5, v4

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 4229
    aget-object v5, v4, v2

    invoke-static {v0, v5}, Lcom/oneplus/camera/Camera$Face;->obtain(Landroid/graphics/Rect;Landroid/hardware/camera2/params/Face;)Lcom/oneplus/camera/Camera$Face;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4228
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4233
    .end local v0    # "cropRegion":Landroid/graphics/Rect;
    .end local v2    # "i":I
    :cond_2
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v1, v3}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4236
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 4237
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera$Face;

    invoke-virtual {v5}, Lcom/oneplus/camera/Camera$Face;->recycle()V

    .line 4236
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4238
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4214
    return-void
.end method

.method private updateFlashState(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 4245
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4247
    .local v1, "state":Ljava/lang/Integer;
    if-nez v1, :cond_0

    return-void

    .line 4248
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4249
    .local v0, "flashState":I
    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviousFlashState:I

    if-eq v0, v2, :cond_2

    .line 4251
    packed-switch v0, :pswitch_data_0

    .line 4275
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreviewCaptureCompleted() - Unknow flash state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4278
    :cond_1
    :goto_0
    iput v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviousFlashState:I

    .line 4243
    :cond_2
    return-void

    .line 4254
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewCaptureCompleted() - Charging"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4257
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewCaptureCompleted() - Fired"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4260
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewCaptureCompleted() - Partial"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4263
    :pswitch_3
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewCaptureCompleted() - Ready"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4264
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

    if-eqz v2, :cond_1

    .line 4266
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewCaptureCompleted() - Ready, set pending flash mode : "

    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4267
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4268
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    goto :goto_0

    .line 4272
    :pswitch_4
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewCaptureCompleted() - Unavailable"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4251
    nop

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
    .line 4286
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4284
    return-void
.end method

.method private updateFocusState(Landroid/hardware/camera2/CaptureResult;)V
    .locals 8
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    const/16 v7, 0x271c

    const/16 v6, 0x271b

    const/4 v5, 0x0

    .line 4294
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4295
    .local v0, "afState":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 4296
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4300
    :cond_0
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_LastRawFocusState:I

    .line 4301
    .local v1, "lastAfState":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_LastRawFocusState:I

    .line 4304
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    if-eqz v2, :cond_2

    .line 4306
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4342
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 4311
    :pswitch_1
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4312
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4313
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4314
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4319
    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 4321
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4322
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4323
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4324
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4325
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4326
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->FOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4331
    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 4333
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4334
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4335
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4336
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4337
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4338
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->UNFOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4346
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 4376
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateFocusState() - Unknown AF state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4377
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4378
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    if-eqz v2, :cond_3

    .line 4380
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4381
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4383
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4384
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4291
    :goto_1
    return-void

    .line 4350
    :pswitch_4
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 4353
    :pswitch_5
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4354
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4355
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4356
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4357
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 4361
    :pswitch_6
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4362
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4363
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4364
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4365
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->FOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 4369
    :pswitch_7
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4370
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4371
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4372
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4373
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->UNFOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 4306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 4346
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
    .line 4397
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updateAEState(Landroid/hardware/camera2/CaptureResult;)Z

    .line 4399
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updateFlashState(Landroid/hardware/camera2/CaptureResult;)V

    .line 4401
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updateFocusState(Landroid/hardware/camera2/CaptureResult;)V

    .line 4403
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updateFocalLength(Landroid/hardware/camera2/CaptureResult;)V

    .line 4405
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    .line 4406
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updateFaceDetectionResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 4394
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
    .line 381
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_0

    .line 382
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->addPreviewReceivedHandler(Lcom/oneplus/base/EventHandler;)V

    .line 379
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCamera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_0
.end method

.method public bindMediaRecorder(Landroid/media/MediaRecorder;I)Z
    .locals 5
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 740
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 741
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 742
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_0

    .line 744
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bindMediaRecorder() - Current capture state is "

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

    .line 745
    return v4

    .line 749
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 754
    :try_start_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v1, v2, :cond_1

    .line 755
    const-string/jumbo v1, "camerarecorder=facing_front"

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraImpl;->setAudioSourceParams(Ljava/lang/String;)V

    .line 760
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 771
    const/4 v1, 0x1

    return v1

    .line 757
    :cond_1
    const-string/jumbo v1, "camerarecorder=facing_back"

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraImpl;->setAudioSourceParams(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "bindMediaRecorder() - Error when set video source"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 766
    const-string/jumbo v1, "camerarecorder=none"

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraImpl;->setAudioSourceParams(Ljava/lang/String;)V

    .line 767
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 768
    return v4
.end method

.method public calculateViewAngles(Landroid/graphics/Rect;I)Landroid/util/SizeF;
    .locals 10
    .param p1, "cropRegion"    # Landroid/graphics/Rect;
    .param p2, "flags"    # I

    .prologue
    .line 780
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 781
    .local v2, "focalLength":F
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SizeF;

    .line 782
    .local v3, "sensorPhysicalSize":Landroid/util/SizeF;
    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result v5

    div-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    double-to-float v0, v6

    .line 783
    .local v0, "anglesX":F
    invoke-virtual {v3}, Landroid/util/SizeF;->getHeight()F

    move-result v5

    div-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    double-to-float v1, v6

    .line 786
    .local v1, "anglesY":F
    if-nez p1, :cond_0

    .line 787
    new-instance v5, Landroid/util/SizeF;

    invoke-direct {v5, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v5

    .line 790
    :cond_0
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_SENSOR_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 791
    .local v4, "sensorSizeFull":Landroid/util/Size;
    new-instance v5, Landroid/util/SizeF;

    .line 792
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v0

    .line 793
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v7, v1

    .line 791
    invoke-direct {v5, v6, v7}, Landroid/util/SizeF;-><init>(FF)V

    return-object v5
.end method

.method public cancelAutoFocus(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 806
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_0

    .line 808
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "cancelAutoFocus()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 812
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

    .line 818
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 800
    :cond_0
    return-void

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "cancelAutoFocus() - Fail to cancel autofocus"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public capture(II)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "frameCount"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 828
    if-nez p1, :cond_0

    .line 830
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "capture() - Invalid frame count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    return-object v4

    .line 835
    :cond_0
    const/4 v0, 0x0

    .line 836
    .local v0, "captureLater":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 837
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_1

    .line 839
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "capture() - Capture state is "

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

    .line 840
    return-object v4

    .line 842
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-Camera$StateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v2}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 851
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "capture() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    return-object v4

    .line 847
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capture() - Opening camera, capture later"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const/4 v0, 0x1

    .line 854
    :pswitch_1
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 863
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "capture() - Preview state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    return-object v4

    .line 859
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capture() - Starting preview, capture later"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const/4 v0, 0x1

    .line 868
    :pswitch_3
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 871
    new-instance v1, Lcom/oneplus/camera/CameraImpl$8;

    const-string/jumbo v2, "Capture"

    invoke-direct {v1, p0, v2}, Lcom/oneplus/camera/CameraImpl$8;-><init>(Lcom/oneplus/camera/CameraImpl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    .line 881
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    .line 882
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->captureInternal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 886
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    return-object v1

    .line 883
    :cond_3
    return-object v4

    .line 842
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 854
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
    .line 1152
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 1153
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-Camera$StateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1168
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    if-eq v0, v1, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "close() - Close process has been interrupted"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    return-void

    .line 1158
    :pswitch_1
    return-void

    .line 1162
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "close() - Close while opening"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    sget-object v0, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 1164
    return-void

    .line 1175
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 1176
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 1193
    :goto_0
    :pswitch_3
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->closeInternal()V

    .line 1149
    return-void

    .line 1180
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "close() - Force stopping capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto :goto_0

    .line 1153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1176
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
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
    .line 1344
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AeRegions:Ljava/util/List;

    return-object v0

    .line 1346
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 1347
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AfRegions:Ljava/util/List;

    return-object v0

    .line 1348
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 1349
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1350
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 1351
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->getCameraCharacteristic()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0

    .line 1352
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 1353
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureCompensation:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1354
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 1355
    iget-wide v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1356
    :cond_5
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 1357
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceListIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 1358
    :cond_6
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 1359
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    return-object v0

    .line 1360
    :cond_7
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    .line 1361
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1362
    :cond_8
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    .line 1363
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    return-object v0

    .line 1364
    :cond_9
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_a

    .line 1365
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    return-object v0

    .line 1366
    :cond_a
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_b

    .line 1367
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAELocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1368
    :cond_b
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_c

    .line 1369
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAwbLocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1370
    :cond_c
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_d

    .line 1371
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1372
    :cond_d
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_e

    .line 1373
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRawCaptureEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1374
    :cond_e
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_f

    .line 1375
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1376
    :cond_f
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_10

    .line 1377
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1378
    :cond_10
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_12

    .line 1379
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_JpegQuality:I

    if-ltz v0, :cond_11

    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_JpegQuality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_11
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    goto :goto_0

    .line 1380
    :cond_12
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_13

    .line 1381
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    return-object v0

    .line 1382
    :cond_13
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_14

    .line 1383
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    return-object v0

    .line 1384
    :cond_14
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_15

    .line 1385
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    return-object v0

    .line 1386
    :cond_15
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_16

    .line 1387
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1388
    :cond_16
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_17

    .line 1389
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    return-object v0

    .line 1390
    :cond_17
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_18

    .line 1391
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    return-object v0

    .line 1392
    :cond_18
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCamera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBokehDebugInfo()[Lcom/oneplus/camera/BokehDebugInfo;
    .locals 1

    .prologue
    .line 1400
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/oneplus/camera/BokehDebugInfo;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1428
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1463
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCamera;->handleMessage(Landroid/os/Message;)V

    .line 1426
    :goto_0
    return-void

    .line 1431
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onAutoFocusTimeout()V

    goto :goto_0

    .line 1435
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onAutoFocusStartTimeout()V

    goto :goto_0

    .line 1439
    :sswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - Capture session close timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    .line 1444
    :sswitch_3
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onPreviewFrameReceived()V

    goto :goto_0

    .line 1448
    :sswitch_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - First preview frame timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onFirstPreviewFrameReceived()V

    goto :goto_0

    .line 1453
    :sswitch_5
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startAutoFocus()V

    goto :goto_0

    .line 1457
    :sswitch_6
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - Pre-capture flash timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTimeout:Z

    .line 1459
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onPreCaptureFlashComplete()V

    goto :goto_0

    .line 1428
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
    .line 2386
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    if-ne v0, v1, :cond_0

    .line 2387
    sget-object v0, Lcom/oneplus/camera/Camera$State;->UNAVAILABLE:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 2390
    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/BaseCamera;->onRelease()V

    .line 2383
    return-void
.end method

.method public open(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2399
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2400
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2401
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-Camera$StateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v3}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2412
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open() - Invalid state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    return v1

    .line 2405
    :pswitch_0
    return v0

    .line 2409
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "open() - Open while closing"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    sget-object v2, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 2417
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/camera/CameraImpl;->m_OpenCameraStartTime:J

    .line 2418
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->openInternal(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2419
    return v1

    .line 2420
    :cond_1
    sget-object v2, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-ne v2, v3, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 2401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public pauseVideoRecording(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 2465
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2466
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 2468
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "pauseVideoRecording() - No media recorder"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    return v3

    .line 2475
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "pauseVideoRecording()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2477
    const/4 v1, 0x1

    return v1

    .line 2480
    :catch_0
    move-exception v0

    .line 2481
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "pauseVideoRecording() - Fail to pause"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2482
    return v3
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
    .line 2573
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_0

    .line 2574
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->removePreviewReceivedHandler(Lcom/oneplus/base/EventHandler;)V

    .line 2571
    :goto_0
    return-void

    .line 2576
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCamera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_0
.end method

.method public resumeVideoRecording(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 4027
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 4028
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 4030
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeVideoRecording() - No media recorder"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4031
    return v3

    .line 4037
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeVideoRecording()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4038
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4039
    const/4 v1, 0x1

    return v1

    .line 4042
    :catch_0
    move-exception v0

    .line 4043
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeVideoRecording() - Fail to resume"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4044
    return v3
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
    .line 2601
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 2602
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setAERegionsProp(Ljava/util/List;)Z

    move-result v0

    return v0

    .line 2603
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 2604
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setAFRegionsProp(Ljava/util/List;)Z

    move-result v0

    return v0

    .line 2605
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 2606
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setAWBModeProp(I)Z

    move-result v0

    return v0

    .line 2607
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    move-object v0, p2

    .line 2608
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setDigitalZoomProp(F)Z

    .line 2609
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 2610
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setExposureCompensationProp(F)Z

    move-result v0

    return v0

    .line 2611
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 2612
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setExposureTimeProp(J)Z

    move-result v0

    return v0

    .line 2613
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_5
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 2614
    check-cast p2, Lcom/oneplus/camera/FlashMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setFlashModeProp(Lcom/oneplus/camera/FlashMode;)Z

    move-result v0

    return v0

    .line 2615
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_6
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 2616
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setFocusProp(F)Z

    move-result v0

    return v0

    .line 2617
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_7
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    .line 2618
    check-cast p2, Lcom/oneplus/camera/FocusMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setFocusModeProp(Lcom/oneplus/camera/FocusMode;)Z

    move-result v0

    return v0

    .line 2619
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_8
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    .line 2620
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setAELockedProp(Z)Z

    move-result v0

    return v0

    .line 2621
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_9
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_a

    .line 2622
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setAwbLockedProp(Z)Z

    move-result v0

    return v0

    .line 2623
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_a
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_b

    .line 2624
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setFaceDetectionProp(Z)Z

    move-result v0

    return v0

    .line 2625
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_b
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_c

    .line 2626
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setISOProp(I)Z

    move-result v0

    return v0

    .line 2627
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_c
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_d

    .line 2628
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setRawCaptureProp(Z)Z

    move-result v0

    return v0

    .line 2629
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_d
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_e

    .line 2630
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setRecordingModeProp(Z)Z

    move-result v0

    return v0

    .line 2631
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_e
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_f

    .line 2632
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setJpegQualityProp(I)Z

    move-result v0

    return v0

    .line 2633
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_f
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_10

    .line 2634
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setPictureSize(Landroid/util/Size;)Z

    move-result v0

    return v0

    .line 2635
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_10
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_11

    .line 2636
    check-cast p2, Landroid/util/Range;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setPreviewFpsRangeProp(Landroid/util/Range;)Z

    move-result v0

    return v0

    .line 2637
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_11
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_12

    .line 2638
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setPreviewSizeProp(Landroid/util/Size;)Z

    move-result v0

    return v0

    .line 2639
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_12
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_13

    .line 2640
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setPreviewReceiver(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2641
    :cond_13
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_14

    .line 2642
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setSceneModeProp(I)Z

    move-result v0

    return v0

    .line 2643
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_14
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_15

    .line 2644
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setVideoSizeProp(Landroid/util/Size;)Z

    move-result v0

    return v0

    .line 2645
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_15
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startAutoFocus(I)Z
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/16 v2, 0x271a

    .line 3349
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3350
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3351
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_0

    .line 3353
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAutoFocus() - Preview state is "

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

    .line 3354
    const/4 v0, 0x0

    return v0

    .line 3358
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3359
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3362
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public startPreview(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3597
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3598
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3599
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-eq v0, v1, :cond_0

    .line 3601
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreview() - Camera state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3602
    return v3

    .line 3604
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3623
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    if-ne v0, v1, :cond_3

    .line 3625
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_2

    .line 3627
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3628
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequest()Z

    move-result v0

    return v0

    .line 3610
    :pswitch_1
    return v2

    .line 3612
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_1

    .line 3613
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreview() - Start on started."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3614
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3619
    :goto_0
    return v2

    .line 3616
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreview() - Start while stopping"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3617
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3630
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startCaptureSession()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3632
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreview() - Fail to start capture session"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3633
    return v3

    .line 3637
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreview() - Start preview while opening camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3640
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3641
    return v2

    .line 3604
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public startVideoRecording(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 3738
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3739
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3740
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 3742
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVideoRecording() - No media recorder"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3743
    return v4

    .line 3748
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v2}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 3765
    const/4 v1, 0x0

    .line 3772
    .local v1, "needRestartPreview":Z
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3781
    if-eqz v1, :cond_1

    .line 3783
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVideoRecording() - Restart preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3784
    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->startPreview(I)Z

    .line 3790
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3800
    const/4 v2, 0x1

    return v2

    .line 3752
    .end local v1    # "needRestartPreview":Z
    :pswitch_0
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v2, :cond_2

    .line 3754
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVideoRecording() - Stop preview to change video surface"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3755
    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->stopPreview(I)V

    .line 3756
    const/4 v1, 0x1

    .restart local v1    # "needRestartPreview":Z
    goto :goto_0

    .line 3760
    .end local v1    # "needRestartPreview":Z
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVideoRecording() - Set video surface in non-recording mode"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3761
    const/4 v1, 0x0

    .restart local v1    # "needRestartPreview":Z
    goto :goto_0

    .line 3775
    :catch_0
    move-exception v0

    .line 3776
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVideoRecording() - Fail to get surface"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3777
    return v4

    .line 3793
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 3794
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVideoRecording() - Fail to start video recording"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3796
    const-string/jumbo v2, "camerarecorder=none"

    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->setAudioSourceParams(Ljava/lang/String;)V

    .line 3797
    return v4

    .line 3748
    nop

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

    .line 4054
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 4055
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 4068
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4071
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 4092
    :goto_1
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 4051
    return-void

    .line 4059
    :pswitch_2
    return-void

    .line 4063
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Stop while starting"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4076
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Wait for capture stop"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4077
    return-void

    .line 4079
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Cancel capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4080
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureInternal(Z)V

    goto :goto_1

    .line 4083
    :pswitch_6
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Stop capture and wait for stop"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4084
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureInternal(Z)V

    .line 4085
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_0

    .line 4086
    return-void

    .line 4087
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Capture stopped immediately"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4055
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 4071
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public stopVideoRecording(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 4119
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 4120
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 4121
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 4123
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - No media recorder"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4124
    return v3

    .line 4130
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->stopPreview(I)V

    .line 4131
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - MediaRecorder.stop [start]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4132
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 4133
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - MediaRecorder.stop [end]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4143
    const-string/jumbo v1, "camerarecorder=none"

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraImpl;->setAudioSourceParams(Ljava/lang/String;)V

    .line 4146
    const/4 v1, 0x1

    return v1

    .line 4136
    :catch_0
    move-exception v0

    .line 4137
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - Fail to stop recorder"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4143
    const-string/jumbo v1, "camerarecorder=none"

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraImpl;->setAudioSourceParams(Ljava/lang/String;)V

    .line 4138
    return v3

    .line 4141
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 4143
    const-string/jumbo v2, "camerarecorder=none"

    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->setAudioSourceParams(Ljava/lang/String;)V

    .line 4141
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Camera2[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Facing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

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

    .line 4163
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 4164
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 4167
    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 4168
    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    .line 4170
    const/4 v0, 0x1

    return v0
.end method
