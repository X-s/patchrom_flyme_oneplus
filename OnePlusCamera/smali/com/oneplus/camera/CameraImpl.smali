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

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Lcom/oneplus/camera/CameraInfo;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "cameraInfo"    # Lcom/oneplus/camera/CameraInfo;

    .prologue
    .line 299
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/BaseCamera;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CameraInfo;)V

    .line 78
    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_AeRegions:Ljava/util/List;

    .line 80
    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_AfRegions:Ljava/util/List;

    .line 81
    const/4 v12, 0x1

    iput v12, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    .line 84
    new-instance v12, Lcom/oneplus/camera/CameraImpl$1;

    invoke-direct {v12, p0}, Lcom/oneplus/camera/CameraImpl$1;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 103
    sget-object v12, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 110
    new-instance v12, Lcom/oneplus/camera/CameraImpl$2;

    invoke-direct {v12, p0}, Lcom/oneplus/camera/CameraImpl$2;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_DeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 130
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    .line 132
    const-wide/16 v12, -0x1

    iput-wide v12, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    .line 135
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/util/List;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    .line 136
    sget-object v12, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    .line 137
    sget-object v12, Lcom/oneplus/camera/FocusMode;->DISABLED:Lcom/oneplus/camera/FocusMode;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 138
    const/high16 v12, -0x40800000    # -1.0f

    iput v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusValue:F

    .line 146
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    .line 147
    const/4 v12, -0x1

    iput v12, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    .line 155
    const/4 v12, -0x1

    iput v12, p0, Lcom/oneplus/camera/CameraImpl;->m_JpegQuality:I

    .line 157
    const/4 v12, 0x0

    iput v12, p0, Lcom/oneplus/camera/CameraImpl;->m_LastRawFocusState:I

    .line 161
    new-instance v12, Lcom/oneplus/camera/CameraImpl$3;

    invoke-direct {v12, p0}, Lcom/oneplus/camera/CameraImpl$3;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 188
    new-instance v12, Lcom/oneplus/camera/CameraImpl$4;

    invoke-direct {v12, p0}, Lcom/oneplus/camera/CameraImpl$4;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 220
    new-instance v12, Landroid/util/Size;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/util/Size;-><init>(II)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 227
    new-instance v12, Lcom/oneplus/camera/CameraImpl$5;

    invoke-direct {v12, p0}, Lcom/oneplus/camera/CameraImpl$5;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReaderCallback:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 236
    new-instance v12, Lcom/oneplus/camera/CameraImpl$6;

    invoke-direct {v12, p0}, Lcom/oneplus/camera/CameraImpl$6;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 245
    new-instance v12, Landroid/util/Size;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/util/Size;-><init>(II)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 247
    new-instance v12, Lcom/oneplus/camera/CameraImpl$7;

    invoke-direct {v12, p0}, Lcom/oneplus/camera/CameraImpl$7;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_RawCallback:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 277
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    .line 279
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedResults:Ljava/util/Queue;

    .line 281
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    .line 283
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    .line 284
    const/4 v12, 0x0

    iput v12, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    .line 285
    sget-object v12, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    .line 288
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_TempList:Ljava/util/List;

    .line 289
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    .line 290
    new-instance v12, Landroid/util/Size;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/util/Size;-><init>(II)V

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 292
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSessionClosed:Z

    .line 301
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

    .line 304
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    .line 305
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraInfo:Lcom/oneplus/camera/CameraInfo;

    .line 306
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    .line 309
    sget-object v12, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v12}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 310
    .local v9, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 311
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 314
    :cond_0
    sget-object v12, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 315
    .local v4, "fpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    sget-object v12, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v12, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 316
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_3

    .line 318
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Range;

    .line 319
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

    .line 321
    invoke-virtual {v10}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v7, v12, -0x14

    .line 322
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

    .line 323
    :cond_1
    iput-object v10, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    .line 316
    .end local v7    # "lowerBoundDiff":I
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 326
    .end local v10    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-eqz v12, :cond_5

    .line 327
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "CameraImpl() - Default video FPS range : "

    iget-object v14, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    invoke-static {v12, v13, v14}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    :goto_1
    sget-object v12, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v12}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 333
    .local v3, "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    sget-object v12, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 334
    sget-object v12, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 339
    :cond_4
    :goto_2
    sget-object v12, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 340
    .local v8, "maxFaceCount":I
    if-lez v8, :cond_7

    .line 342
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "CameraImpl() - Max face count : "

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v12, v12

    add-int/lit8 v6, v12, -0x1

    :goto_3
    if-ltz v6, :cond_8

    .line 344
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v13, v12, v6

    .line 343
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 329
    .end local v3    # "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    .end local v8    # "maxFaceCount":I
    :cond_5
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "CameraImpl() - No suitable FPS range for video"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 335
    .restart local v3    # "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    :cond_6
    sget-object v12, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 336
    sget-object v12, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    iput-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    goto :goto_2

    .line 348
    .restart local v8    # "maxFaceCount":I
    :cond_7
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "CameraImpl() - Face detection is unsupported"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v12, v12

    add-int/lit8 v6, v12, -0x1

    :goto_4
    if-ltz v6, :cond_8

    .line 350
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    sget-object v13, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    aput-object v13, v12, v6

    .line 349
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 355
    :cond_8
    :try_start_0
    const-string/jumbo v12, "android.hardware.camera2.params&Face"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 356
    .local v2, "faceClass":Ljava/lang/Class;
    const-string/jumbo v12, "getIsSmile"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 357
    .local v5, "getIsSmileMethod":Ljava/lang/reflect/Method;
    sget-object v12, Lcom/oneplus/camera/CameraImpl;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 358
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "CameraImpl() - smile capture is supported"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v2    # "faceClass":Ljava/lang/Class;
    .end local v5    # "getIsSmileMethod":Ljava/lang/reflect/Method;
    :goto_5
    sget-object v12, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STEP:Lcom/oneplus/base/PropertyKey;

    const v13, 0x3e4ccccd    # 0.2f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 296
    return-void

    .line 359
    :catch_0
    move-exception v11

    .line 360
    .local v11, "tr":Ljava/lang/Throwable;
    iget-object v12, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "CameraImpl() - Failed to get smile capture information"

    invoke-static {v12, v13, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
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
    .line 384
    .local p1, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<Lcom/oneplus/camera/CameraCaptureEventArgs;>;"
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->hasHandlers(Lcom/oneplus/base/EventKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 385
    .local v0, "isFirstHandler":Z
    :goto_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-super {p0, v1, p1}, Lcom/oneplus/camera/BaseCamera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 386
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "addPreviewReceivedHandler() - Add preview call-back surface"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 390
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    .line 382
    :cond_0
    return-void

    .line 384
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
    .line 399
    if-nez p2, :cond_0

    .line 400
    const/4 v0, 0x0

    return v0

    .line 401
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 402
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

    .line 421
    if-nez p2, :cond_0

    .line 422
    return v1

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_TempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 426
    iget-object v9, p0, Lcom/oneplus/camera/CameraImpl;->m_TempList:Ljava/util/List;

    .line 427
    .local v9, "regionList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_2

    .line 429
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->createMeteringRectangle(Lcom/oneplus/camera/Camera$MeteringRect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v7

    .line 430
    .local v7, "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    if-eqz v7, :cond_1

    .line 431
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 434
    .end local v7    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 435
    new-array v8, v10, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v0, v8, v1

    .line 443
    .local v8, "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :goto_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 444
    return v10

    .line 438
    .end local v8    # "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 439
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

    .line 453
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

    .line 459
    :pswitch_0
    return v1

    .line 463
    :pswitch_1
    if-nez p2, :cond_0

    .line 464
    return v1

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_TempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 468
    iget-object v9, p0, Lcom/oneplus/camera/CameraImpl;->m_TempList:Ljava/util/List;

    .line 469
    .local v9, "regionList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_2

    .line 471
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->createMeteringRectangle(Lcom/oneplus/camera/Camera$MeteringRect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v7

    .line 472
    .local v7, "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    if-eqz v7, :cond_1

    .line 473
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 476
    .end local v7    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 477
    new-array v8, v10, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v0, v8, v1

    .line 485
    .local v8, "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :goto_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 486
    return v10

    .line 480
    .end local v8    # "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 481
    .restart local v8    # "regionArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-interface {v9, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    .line 453
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
    .line 409
    if-nez p2, :cond_0

    .line 410
    const/4 v0, 0x0

    return v0

    .line 411
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 412
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

    .line 493
    if-eqz p2, :cond_1

    .line 495
    packed-switch p1, :pswitch_data_0

    .line 505
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 508
    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 509
    return v2

    .line 499
    :pswitch_0
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    if-nez v0, :cond_0

    .line 500
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 502
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 511
    :cond_1
    return v0

    .line 495
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
    .line 519
    if-nez p2, :cond_0

    .line 520
    const/4 v1, 0x0

    return v1

    .line 523
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

    .line 526
    .local v0, "steps":I
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 527
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

    .line 535
    if-nez p3, :cond_0

    .line 536
    return v2

    .line 539
    :cond_0
    cmp-long v0, p1, v4

    if-nez v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v0, p3}, Lcom/oneplus/camera/CameraImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 542
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 555
    :goto_0
    return v6

    .line 546
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 547
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 548
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_2

    cmp-long v0, p1, v8

    if-lez v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyExposureTime() - Exposure time is "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, ", lower to "

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, " nano secs"

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 551
    const-wide/32 p1, 0xbebc200

    .line 553
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

    .line 562
    if-nez p2, :cond_0

    .line 563
    return v1

    .line 564
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v0, :cond_2

    .line 567
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 568
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 565
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

    .line 576
    if-nez p2, :cond_0

    .line 577
    const/4 v0, 0x0

    return v0

    .line 580
    :cond_0
    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    .line 581
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 584
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 582
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

    .line 583
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

    .line 594
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-FocusModeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/FocusMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 618
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

    .line 619
    return v4

    .line 597
    :pswitch_0
    const/4 v0, 0x0

    .line 623
    .local v0, "afModeValue":I
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 625
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 627
    const/4 v1, 0x1

    return v1

    .line 601
    .end local v0    # "afModeValue":I
    :pswitch_1
    const/4 v0, 0x1

    .line 603
    .restart local v0    # "afModeValue":I
    goto :goto_0

    .line 605
    .end local v0    # "afModeValue":I
    :pswitch_2
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v1, :cond_1

    .line 606
    const/4 v0, 0x3

    .line 609
    .restart local v0    # "afModeValue":I
    :goto_1
    if-eqz p2, :cond_0

    .line 610
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 608
    .end local v0    # "afModeValue":I
    :cond_1
    const/4 v0, 0x4

    .restart local v0    # "afModeValue":I
    goto :goto_1

    .line 614
    .end local v0    # "afModeValue":I
    :pswitch_3
    const/4 v0, 0x0

    .line 616
    .restart local v0    # "afModeValue":I
    goto :goto_0

    .line 629
    :cond_2
    return v4

    .line 594
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

    .line 637
    if-nez p2, :cond_0

    .line 638
    return v2

    .line 641
    :cond_0
    if-ne p1, v1, :cond_1

    .line 643
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/camera/CameraImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 644
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 652
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 648
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 649
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 650
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
    .line 659
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-nez p2, :cond_0

    .line 660
    const/4 v0, 0x0

    return v0

    .line 661
    :cond_0
    if-eqz p1, :cond_1

    .line 662
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 677
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 663
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-nez v0, :cond_3

    .line 665
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    if-eqz v0, :cond_2

    .line 666
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyPreviewFpsRange() - No default photo preview FPS range"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-eqz v0, :cond_4

    .line 673
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 675
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
    .line 684
    if-nez p2, :cond_0

    .line 685
    const/4 v0, 0x0

    return v0

    .line 686
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->mappingZoomToScalerRegion(F)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 687
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

    .line 694
    if-eqz p2, :cond_1

    .line 696
    if-nez p1, :cond_0

    .line 698
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 704
    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 705
    return v2

    .line 702
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 707
    :cond_1
    return v0
.end method

.method private applyToPreview()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 714
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_1

    .line 716
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-eq v0, v2, :cond_0

    .line 718
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyToPreview() - Capturing burst photos"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const/4 v0, 0x0

    return v0

    .line 721
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyToPreview() - Fail to apply new request to preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_1
    return v2
.end method

.method private captureInternal()Z
    .locals 1

    .prologue
    .line 878
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->captureInternal(I)Z

    move-result v0

    return v0
.end method

.method private captureInternal(I)Z
    .locals 24
    .param p1, "flags"    # I

    .prologue
    .line 883
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 885
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

    .line 886
    const/16 v19, 0x0

    return v19

    .line 888
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

    .line 890
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

    .line 891
    const/16 v19, 0x0

    return v19

    .line 895
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

    .line 896
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 899
    :cond_2
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/Camera$HardwareLevel;

    .line 900
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

    .line 943
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    const/4 v7, 0x0

    .line 944
    .local v7, "enableZsl":Z
    :goto_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewStoppedForCapture:Z

    .line 945
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

    .line 947
    :cond_4
    :goto_2
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewStoppedForCapture:Z

    .line 948
    const/4 v7, 0x0

    .line 952
    :cond_5
    const/4 v4, 0x0

    .line 953
    .local v4, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 957
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 958
    .local v4, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Use video snapshot template"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 973
    .end local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_6
    :goto_3
    if-nez v4, :cond_7

    .line 977
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 978
    .restart local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Use still capture template"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 995
    .end local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewStoppedForCapture:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 997
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1000
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

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - add m_RawSurface"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1007
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/camera/CameraImpl;->prepareCaptureRequestParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1011
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/CameraImpl;->applyPreviewFpsRange(Landroid/util/Range;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 1014
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 1015
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1018
    :cond_c
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    .line 1019
    .local v12, "pictureSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_CameraInfo:Lcom/oneplus/camera/CameraInfo;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v19 .. v20}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 1020
    .local v18, "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const/16 v17, 0x0

    .line 1021
    .local v17, "thumbSize":Landroid/util/Size;
    const/16 v16, 0x0

    .line 1022
    .local v16, "thumbPixelCount":I
    if-eqz v12, :cond_13

    if-eqz v18, :cond_13

    .line 1024
    invoke-static {v12}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;

    move-result-object v14

    .line 1025
    .local v14, "ratio":Lcom/oneplus/util/AspectRatio;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    .end local v17    # "thumbSize":Landroid/util/Size;
    .local v10, "i":I
    :goto_4
    if-ltz v10, :cond_13

    .line 1027
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Size;

    .line 1028
    .local v15, "size":Landroid/util/Size;
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v19

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v20

    mul-int v13, v19, v20

    .line 1029
    .local v13, "pixelCount":I
    invoke-static {v15}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v19

    move-object/from16 v0, v19

    if-ne v0, v14, :cond_d

    move/from16 v0, v16

    if-le v13, v0, :cond_d

    .line 1031
    move-object/from16 v17, v15

    .line 1032
    .local v17, "thumbSize":Landroid/util/Size;
    move/from16 v16, v13

    .line 1025
    .end local v17    # "thumbSize":Landroid/util/Size;
    :cond_d
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 903
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

    .line 904
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

    .line 906
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Trigger pre-capture flash"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 912
    .restart local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 915
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/camera/CameraImpl;->prepareCaptureRequestParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 916
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 919
    const/16 v19, 0x272e

    const-wide/16 v20, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    move-object/from16 v19, v0

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v20

    new-instance v21, Lcom/oneplus/camera/CameraImpl$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraImpl$9;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v22

    .line 922
    invoke-virtual/range {v19 .. v22}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0

    .line 933
    const/16 v19, 0x1

    return v19

    .line 936
    .end local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catch_0
    move-exception v6

    .line 937
    .local v6, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v6}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 943
    .end local v6    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_10
    const/4 v7, 0x1

    .restart local v7    # "enableZsl":Z
    goto/16 :goto_1

    .line 945
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_5

    goto/16 :goto_2

    .line 963
    .local v4, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_12
    if-eqz v7, :cond_6

    .line 967
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 968
    .local v4, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Use ZSL template"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 971
    .end local v4    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catch_1
    move-exception v8

    .local v8, "ex":Ljava/lang/Throwable;
    goto/16 :goto_3

    .line 981
    .end local v8    # "ex":Ljava/lang/Throwable;
    :catch_2
    move-exception v8

    .line 982
    .restart local v8    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Fail to create capture request builder"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 985
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 987
    const/16 v19, 0x0

    return v19

    .line 1036
    .end local v8    # "ex":Ljava/lang/Throwable;
    .restart local v12    # "pictureSize":Landroid/util/Size;
    .restart local v16    # "thumbPixelCount":I
    .restart local v18    # "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_13
    if-eqz v17, :cond_16

    .line 1037
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Thumbnail image size : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1043
    :goto_5
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1046
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 1048
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/CameraImpl;->m_JpegQuality:I

    move/from16 v19, v0

    if-gez v19, :cond_17

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Use default JPEG quality"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    :goto_6
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/oneplus/base/Rotation;

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v5

    .line 1058
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

    .line 1059
    neg-int v5, v5

    .line 1060
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

    .line 1063
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/Location;

    .line 1064
    .local v11, "location":Landroid/location/Location;
    if-eqz v11, :cond_15

    .line 1065
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1068
    :cond_15
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/CameraImpl;->m_PictureCaptureRequest:Landroid/hardware/camera2/CaptureRequest;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 1084
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewStoppedForCapture:Z

    move/from16 v19, v0

    if-eqz v19, :cond_19

    and-int/lit8 v19, p1, 0x1

    if-nez v19, :cond_19

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Restart capture session first"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->restartCaptureSession()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 1088
    const/16 v19, 0x1

    return v19

    .line 1040
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

    .line 1041
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

    .line 1071
    .end local v12    # "pictureSize":Landroid/util/Size;
    .end local v16    # "thumbPixelCount":I
    .end local v17    # "thumbSize":Landroid/util/Size;
    .end local v18    # "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :catch_3
    move-exception v8

    .line 1072
    .restart local v8    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Fail to create capture request"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1074
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1075
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1076
    const/16 v19, 0x0

    return v19

    .line 1051
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

    .line 1054
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

    .line 1096
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

    .line 1097
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

    .line 1111
    :goto_7
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1114
    const/16 v19, 0x1

    return v19

    .line 1099
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

    .line 1102
    :catch_4
    move-exception v8

    .line 1103
    .restart local v8    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "captureInternal() - Fail to start capture"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1105
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1106
    sget-object v19, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1107
    const/16 v19, 0x0

    return v19

    .line 961
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
    .line 1121
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    .line 1122
    .local v0, "oldState":Lcom/oneplus/camera/Camera$State;
    if-eq v0, p1, :cond_0

    .line 1124
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    .line 1125
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1127
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    return-object v1
.end method

.method private close(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 1200
    if-eqz p1, :cond_0

    .line 1204
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

    .line 1205
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
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

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
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

    .line 1213
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

    .line 1212
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 1213
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

    .line 1212
    throw v1
.end method

.method private closeInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1186
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->close(Landroid/hardware/camera2/CameraDevice;)V

    .line 1189
    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    .line 1193
    :cond_0
    sget-object v0, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 1183
    return-void
.end method

.method private copyImage(Landroid/media/Image;)[Lcom/oneplus/camera/media/ImagePlane;
    .locals 1
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 1222
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

    .line 1226
    if-nez p1, :cond_0

    .line 1228
    iget-object v7, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "copyImage() - No image"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    new-array v7, v10, [Lcom/oneplus/camera/media/ImagePlane;

    return-object v7

    .line 1233
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    .line 1234
    .local v4, "originalPlanes":[Landroid/media/Image$Plane;
    array-length v7, v4

    new-array v5, v7, [Lcom/oneplus/camera/media/ImagePlane;

    .line 1235
    .local v5, "planes":[Lcom/oneplus/camera/media/ImagePlane;
    array-length v7, v5

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1237
    if-eqz p2, :cond_1

    array-length v7, p2

    if-lt v7, v2, :cond_1

    aget-object v0, p2, v2

    .line 1238
    :goto_1
    aget-object v3, v4, v2

    .line 1239
    .local v3, "originalPlane":Landroid/media/Image$Plane;
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1240
    .local v6, "srcBuffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_2

    array-length v7, v0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 1243
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1244
    new-instance v7, Lcom/oneplus/camera/media/ImagePlane;

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    invoke-direct {v7, v0, v8, v9}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    aput-object v7, v5, v2

    .line 1235
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1237
    .end local v3    # "originalPlane":Landroid/media/Image$Plane;
    .end local v6    # "srcBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    const/4 v0, 0x0

    .local v0, "data":[B
    goto :goto_1

    .line 1247
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

    .line 1252
    .end local v2    # "i":I
    .end local v3    # "originalPlane":Landroid/media/Image$Plane;
    .end local v4    # "originalPlanes":[Landroid/media/Image$Plane;
    .end local v5    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    .end local v6    # "srcBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 1253
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "copyImage() - Fail to copy image"

    invoke-static {v7, v8, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1254
    new-array v7, v10, [Lcom/oneplus/camera/media/ImagePlane;

    return-object v7

    .line 1249
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

    .line 1262
    if-nez p1, :cond_0

    .line 1264
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "copyImageAsNV21() - No image"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    new-array v2, v6, [Lcom/oneplus/camera/media/ImagePlane;

    return-object v2

    .line 1269
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    .line 1271
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 1272
    .local v0, "buffer":[B
    invoke-static {p1, v0}, Lcom/oneplus/camera/media/YuvUtils;->multiPlaneYuvToNV21(Landroid/media/Image;[B)V

    .line 1273
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

    .line 1275
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

    .line 1276
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/oneplus/camera/media/ImagePlane;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1279
    :catch_0
    move-exception v1

    .line 1280
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "copyImageAsNV21() - Fail to copy image"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1281
    new-array v2, v6, [Lcom/oneplus/camera/media/ImagePlane;

    return-object v2
.end method

.method private createMeteringRectangle(Lcom/oneplus/camera/Camera$MeteringRect;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 9
    .param p1, "rect"    # Lcom/oneplus/camera/Camera$MeteringRect;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1289
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->isIgnorable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    const/4 v0, 0x0

    return-object v0

    .line 1291
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    .line 1292
    .local v8, "sensorSize":Landroid/util/Size;
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getLeft()F

    move-result v0

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v1, v0

    .line 1293
    .local v1, "left":I
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getTop()F

    move-result v0

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v2, v0

    .line 1294
    .local v2, "top":I
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getRight()F

    move-result v0

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v7, v0

    .line 1295
    .local v7, "right":I
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getBottom()F

    move-result v0

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v6, v0

    .line 1296
    .local v6, "bottom":I
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getWeight()F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    add-int/lit8 v5, v0, 0x0

    .line 1297
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
    .line 1305
    if-eqz p2, :cond_2

    .line 1307
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "dumpCaptureRequest() - >>>>>> Start: "

    invoke-static {v4, v5, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1308
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

    .line 1310
    .local v1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1311
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    .line 1312
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1313
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1316
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "dumpCaptureRequest() - Request: "

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1315
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

    .line 1318
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "dumpCaptureRequest() - <<<<<< End"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private getCameraCharacteristic()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1382
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v1, :cond_0

    .line 1384
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCameraCharacteristic() - camera manager is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    return-object v3

    .line 1389
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v1, :cond_1

    .line 1390
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v1

    .line 1393
    :catch_0
    move-exception v0

    .line 1394
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

    .line 1446
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

    .line 1452
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 1453
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

    .line 1454
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

    .line 1455
    return-object v0
.end method

.method private onAutoFocusStartTimeout()V
    .locals 2

    .prologue
    .line 1462
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAutoFocusStartTimeout()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 1466
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1460
    :cond_0
    return-void
.end method

.method private onAutoFocusTimeout()V
    .locals 3

    .prologue
    .line 1474
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-ne v0, v1, :cond_1

    .line 1476
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAutoFocusTimeout()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1482
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    .line 1486
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 1487
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/FocusState;->UNFOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1472
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

    .line 1496
    sget-object v4, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 1497
    .local v0, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1503
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

    .line 1504
    return-void

    .line 1506
    :pswitch_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v4, :cond_0

    .line 1508
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCaptureCompleted() - No capture handle"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    return-void

    .line 1514
    :cond_0
    invoke-direct {p0, p3}, Lcom/oneplus/camera/CameraImpl;->updatePropertyState(Landroid/hardware/camera2/CaptureResult;)V

    .line 1517
    iget v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedCount:I

    .line 1520
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCaptureCompleted() - Index : "

    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1521
    if-nez p4, :cond_1

    const/4 v3, 0x1

    .line 1522
    .local v3, "success":Z
    :cond_1
    if-nez v3, :cond_2

    sget-object v4, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-eq v4, v5, :cond_2

    .line 1523
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCaptureCompleted() - Capture failed"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    :cond_2
    iget v4, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedCount:I

    iget v5, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-le v4, v5, :cond_3

    .line 1528
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCaptureCompleted() - Unexpected call-back, drop"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    return-void

    .line 1534
    :cond_3
    const/4 v2, 0x0

    .line 1535
    .local v2, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-eqz v3, :cond_6

    .line 1537
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/camera/media/ImagePlane;

    .line 1538
    .local v1, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v1, :cond_4

    .line 1540
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCaptureCompleted() - Wait for picture"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v4, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1542
    return-void

    .line 1546
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

    .line 1548
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v2, [Lcom/oneplus/camera/media/ImagePlane;

    .line 1549
    .local v2, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v2, :cond_5

    .line 1551
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCaptureCompleted() - Wait for raw picture"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v4, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1553
    return-void

    .line 1558
    .end local v2    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_5
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v1, [Lcom/oneplus/camera/media/ImagePlane;

    .line 1564
    :goto_0
    invoke-direct {p0, p3, v1, v2}, Lcom/oneplus/camera/CameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 1493
    return-void

    .line 1561
    .local v2, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_6
    const/4 v1, 0x0

    .local v1, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    goto :goto_0

    .line 1497
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

    .line 1568
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureCompleted()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedResults:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1572
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1573
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1574
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1577
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashComplete:Z

    .line 1578
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTimeout:Z

    .line 1579
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    .line 1580
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureStartedReceived:Z

    .line 1581
    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    .line 1582
    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedCount:I

    .line 1583
    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    .line 1584
    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    .line 1585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    .line 1586
    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    .line 1587
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSequenceCompleted:Z

    .line 1588
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1589
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1592
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 1594
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewStoppedForCapture:Z

    if-eqz v0, :cond_2

    .line 1596
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureCompleted() - Restart capture session"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->restartCaptureSession()V

    .line 1607
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1609
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_3

    .line 1611
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureCompleted() - Stop capture session"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 1613
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 1566
    :cond_1
    :goto_1
    return-void

    .line 1599
    :cond_2
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureCompleted() - Restart preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    goto :goto_0

    .line 1615
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_1

    .line 1617
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureCompleted() - Continue stopping preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    goto :goto_1
.end method

.method private onCaptureSequenceCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1628
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureSequenceCompleted()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSequenceCompleted:Z

    .line 1634
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

    .line 1626
    :goto_0
    :pswitch_0
    return-void

    .line 1637
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureSequenceCompleted() - Wait for picture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1643
    :cond_0
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto :goto_0

    .line 1634
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

    .line 1654
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eq v1, p1, :cond_0

    .line 1656
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

    .line 1657
    return-void

    .line 1660
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

    .line 1663
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1664
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2724

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1667
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 1669
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1670
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    .line 1672
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    .line 1674
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    invoke-virtual {v1, v4, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1675
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 1676
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    .line 1680
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    .line 1682
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1683
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    .line 1685
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_4

    .line 1687
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    invoke-virtual {v1, v4, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1688
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 1689
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    .line 1693
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1695
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 1696
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1695
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1697
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1701
    .end local v0    # "i":I
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x271a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1704
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    .line 1705
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1706
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 1707
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 1708
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    .line 1709
    iput v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    .line 1710
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    .line 1711
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    if-eqz v1, :cond_7

    .line 1713
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    .line 1714
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1718
    :cond_7
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1721
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v1, :cond_8

    .line 1723
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1724
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    .line 1726
    :cond_8
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_9

    .line 1728
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    invoke-virtual {v1, v4, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1729
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 1730
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    .line 1732
    :cond_9
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    .line 1735
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

    .line 1748
    :goto_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1751
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v2, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    if-ne v1, v2, :cond_a

    .line 1753
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCaptureSessionClosed() - Close camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->closeInternal()V

    .line 1651
    :cond_a
    return-void

    .line 1739
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCaptureSessionClosed() - Restart capture session immediately"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startCaptureSession()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1741
    return-void

    .line 1743
    :cond_b
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCaptureSessionClosed() - Fail to restart capture session"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1735
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
    .line 1819
    if-eqz p1, :cond_0

    .line 1820
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_1

    .line 1825
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

    .line 1826
    return-void

    .line 1829
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureSessionConfigureFailed()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 1835
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_2

    .line 1837
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureSessionConfigureFailed() - Fail to create capture session, cancel starting preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1843
    :cond_2
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1844
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 1816
    return-void
.end method

.method private onCaptureSessionConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_1

    .line 1766
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

    .line 1767
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 1768
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 1770
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1771
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 1773
    :cond_0
    return-void

    .line 1776
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

    .line 1779
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 1780
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1783
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

    .line 1761
    :goto_0
    return-void

    .line 1786
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequest()Z

    goto :goto_0

    .line 1790
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

    .line 1795
    :pswitch_2
    new-instance v0, Lcom/oneplus/camera/CameraImpl$10;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraImpl$10;-><init>(Lcom/oneplus/camera/CameraImpl;)V

    .line 1802
    const-wide/16 v2, 0x64

    .line 1795
    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1806
    :pswitch_3
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequest()Z

    goto :goto_0

    .line 1783
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1790
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .prologue
    .line 1852
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 1853
    .local v0, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1859
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

    .line 1860
    return-void

    .line 1862
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v1, :cond_0

    .line 1864
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCaptureStarted() - No capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    return-void

    .line 1869
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCaptureStarted() - Index : "

    iget v3, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1870
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    .line 1871
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureStartedReceived:Z

    .line 1874
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-le v1, v2, :cond_1

    .line 1876
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCaptureStarted() - Unexpected call-back, drop"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    return-void

    .line 1881
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    iget v3, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureStartedCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;I)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1849
    return-void

    .line 1853
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

    .line 1890
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v4, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-ne v3, v4, :cond_3

    .line 1892
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/camera/CameraImpl;->m_OpenCameraStartTime:J

    sub-long v0, v4, v6

    .line 1893
    .local v0, "duration":J
    const-wide/16 v4, 0x1324

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 1895
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

    .line 1898
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1902
    :goto_0
    invoke-direct {p0, v8}, Lcom/oneplus/camera/CameraImpl;->openInternal(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1903
    return-void

    .line 1901
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 1905
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

    .line 1940
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v3, v4, :cond_1

    .line 1942
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDeviceError() - Cancel preview starting"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1948
    :cond_1
    if-eqz p3, :cond_6

    .line 1950
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

    .line 1951
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    const/4 v5, -0x2

    invoke-direct {v4, p0, v5}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;-><init>(Lcom/oneplus/camera/Camera;I)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1960
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v4, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-ne v3, v4, :cond_2

    .line 1961
    sget-object v3, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 1887
    :cond_2
    return-void

    .line 1909
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

    .line 1912
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->EVENT_ERROR:Lcom/oneplus/base/EventKey;

    sget-object v4, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1915
    invoke-virtual {p0, v8}, Lcom/oneplus/camera/CameraImpl;->close(I)V

    .line 1916
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1917
    sget-object v3, Lcom/oneplus/camera/Camera$State;->UNAVAILABLE:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 1925
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

    .line 1935
    :goto_3
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 1936
    return-void

    .line 1918
    :cond_5
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v4, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    if-ne v3, v4, :cond_4

    .line 1920
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->EVENT_OPEN_CANCELLED:Lcom/oneplus/base/EventKey;

    sget-object v4, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1921
    sget-object v3, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    goto :goto_2

    .line 1929
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDeviceError() - Stop capture directly"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    invoke-direct {p0, v8}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto :goto_3

    .line 1955
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

    .line 1956
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    invoke-direct {v4, p0, p2}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;-><init>(Lcom/oneplus/camera/Camera;I)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto/16 :goto_1

    .line 1925
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
    .line 1969
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-eq v0, v1, :cond_2

    .line 1971
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

    .line 1972
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->close(Landroid/hardware/camera2/CameraDevice;)V

    .line 1973
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1974
    sget-object v0, Lcom/oneplus/camera/Camera$State;->UNAVAILABLE:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 1980
    :cond_0
    :goto_0
    return-void

    .line 1975
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    if-ne v0, v1, :cond_0

    .line 1977
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->EVENT_OPEN_CANCELLED:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1978
    sget-object v0, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    goto :goto_0

    .line 1983
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

    .line 1986
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    .line 1989
    sget-object v0, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 1992
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_3

    .line 1994
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startCaptureSession()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1996
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDeviceOpened() - Fail to start capture session"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1966
    :cond_3
    return-void
.end method

.method private onFirstPreviewFrameReceived()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2085
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSessionClosed:Z

    if-eqz v1, :cond_1

    .line 2086
    :cond_0
    return-void

    .line 2088
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onFirstPreviewFrameReceived()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2094
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_2

    .line 2096
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onFirstPreviewFrameReceived() - Continue stopping capture session"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 2098
    invoke-direct {p0, v3}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 2099
    return-void

    .line 2103
    :cond_2
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 2104
    .local v0, "previewState":Lcom/oneplus/camera/OperationState;
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_3

    .line 2106
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

    .line 2107
    return-void

    .line 2111
    :cond_3
    iput-boolean v4, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    .line 2112
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2082
    return-void
.end method

.method private onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V
    .locals 21
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p2, "picturePlanes"    # [Lcom/oneplus/camera/media/ImagePlane;
    .param p3, "rawPicturePlanes"    # [Lcom/oneplus/camera/media/ImagePlane;

    .prologue
    .line 2120
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oneplus/camera/OperationState;

    .line 2121
    .local v18, "captureState":Lcom/oneplus/camera/OperationState;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    if-nez v2, :cond_8

    :cond_0
    const/16 v19, 0x1

    .line 2122
    .local v19, "failed":Z
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lt v2, v3, :cond_9

    const/16 v20, 0x1

    .line 2123
    .local v20, "frameCountReached":Z
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->isRawCaptureNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2125
    if-nez v19, :cond_1

    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v2, v0

    if-nez v2, :cond_a

    :cond_1
    const/16 v19, 0x1

    .line 2126
    :goto_2
    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lt v2, v3, :cond_b

    const/16 v20, 0x1

    .line 2129
    :cond_2
    :goto_3
    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_4

    .line 2131
    if-nez v20, :cond_3

    if-eqz v19, :cond_4

    .line 2133
    :cond_3
    if-eqz v19, :cond_c

    .line 2134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - Capture failed, start completing capture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    :goto_4
    sget-object v18, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    .line 2138
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureInternal(Z)V

    .line 2143
    :cond_4
    if-nez v19, :cond_d

    .line 2145
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2146
    .local v4, "pictureFormat":I
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 2147
    .local v5, "pictureSize":Landroid/util/Size;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2148
    .local v8, "takenTime":J
    sget-object v10, Lcom/oneplus/camera/CameraImpl;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    invoke-static/range {v2 .. v9}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2150
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->isRawCaptureNeeded()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2152
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Size;

    .line 2153
    .local v13, "sensorSize":Landroid/util/Size;
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v11, v3, -0x1

    const/16 v12, 0x20

    move-object/from16 v14, p3

    move-object/from16 v15, p1

    move-wide/from16 v16, v8

    invoke-static/range {v10 .. v17}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2160
    .end local v4    # "pictureFormat":I
    .end local v5    # "pictureSize":Landroid/util/Size;
    .end local v8    # "takenTime":J
    .end local v13    # "sensorSize":Landroid/util/Size;
    :cond_5
    :goto_5
    if-nez v20, :cond_6

    if-eqz v19, :cond_7

    :cond_6
    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSequenceCompleted:Z

    if-eqz v2, :cond_7

    .line 2161
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    .line 2117
    :cond_7
    return-void

    .line 2121
    .end local v19    # "failed":Z
    .end local v20    # "frameCountReached":Z
    :cond_8
    const/16 v19, 0x0

    .restart local v19    # "failed":Z
    goto/16 :goto_0

    .line 2122
    :cond_9
    const/16 v20, 0x0

    .restart local v20    # "frameCountReached":Z
    goto/16 :goto_1

    .line 2125
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 2126
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 2136
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - Frame count reached, start completing capture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2157
    :cond_d
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v3, v6}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;I)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_5
.end method

.method private onPictureReceived(Landroid/media/Image;)V
    .locals 10
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 2008
    sget-object v6, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    .line 2009
    .local v1, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2015
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

    .line 2016
    return-void

    .line 2018
    :pswitch_1
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v6, :cond_0

    .line 2020
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - No capture handle"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    return-void

    .line 2026
    :cond_0
    sget-object v6, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x11

    if-eq v6, v7, :cond_2

    .line 2027
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->copyImage(Landroid/media/Image;)[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v4

    .line 2032
    .local v4, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :goto_0
    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    .line 2033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2034
    .local v3, "logBuffer":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "{ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_3

    .line 2037
    if-lez v2, :cond_1

    .line 2038
    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    :cond_1
    aget-object v6, v4, v2

    invoke-virtual {v6}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2035
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2029
    .end local v2    # "i":I
    .end local v3    # "logBuffer":Ljava/lang/StringBuilder;
    .end local v4    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->copyImageAsNV21(Landroid/media/Image;)[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v4

    .restart local v4    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    goto :goto_0

    .line 2041
    .restart local v2    # "i":I
    .restart local v3    # "logBuffer":Ljava/lang/StringBuilder;
    :cond_3
    const-string/jumbo v6, " }"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2042
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Index : "

    iget v8, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, ", picture data size : "

    invoke-static {v6, v7, v8, v9, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2045
    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictureCount:I

    iget v7, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-le v6, v7, :cond_4

    .line 2047
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Unexpected picture, drop"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    return-void

    .line 2052
    :cond_4
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2053
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    if-nez v0, :cond_5

    .line 2055
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2056
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Received picture before capture completed"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    return-void

    .line 2061
    :cond_5
    const/4 v5, 0x0

    .line 2062
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

    .line 2064
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v5, [Lcom/oneplus/camera/media/ImagePlane;

    .line 2065
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v5, :cond_6

    .line 2067
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Wait for raw picture"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2069
    return-void

    .line 2074
    .end local v5    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_6
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2077
    .restart local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    invoke-direct {p0, v0, v4, v5}, Lcom/oneplus/camera/CameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 2005
    return-void

    .line 2009
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
    .line 2168
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTimeout:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashComplete:Z

    if-eqz v0, :cond_0

    .line 2170
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPreCaptureFlashComplete() - Capture for pre-capture flash timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    .line 2173
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->captureInternal()Z

    .line 2166
    :cond_0
    return-void
.end method

.method private onPreviewCaptureCompleted(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 2182
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 2183
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onFirstPreviewFrameReceived()V

    .line 2186
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/AutoExposureState;

    .line 2187
    .local v1, "prevAeState":Lcom/oneplus/camera/AutoExposureState;
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updatePropertyState(Landroid/hardware/camera2/CaptureResult;)V

    .line 2189
    const/4 v0, 0x0

    .line 2190
    .local v0, "aeStateChanged":Z
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 2191
    const/4 v0, 0x1

    .line 2194
    :cond_1
    sget-object v2, Lcom/oneplus/camera/AutoExposureState;->PRECAPTURE:Lcom/oneplus/camera/AutoExposureState;

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    .line 2196
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v2, v3, :cond_2

    .line 2198
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewCaptureCompleted() - Pre-capture flash completed, capture photo"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    const/16 v2, 0x272e

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 2200
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTriggered:Z

    .line 2201
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->captureInternal()Z

    .line 2179
    :cond_2
    return-void
.end method

.method private onPreviewFrameReceived()V
    .locals 25

    .prologue
    .line 2211
    sget-object v4, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraImpl;->hasHandlers(Lcom/oneplus/base/EventKey;)Z

    move-result v14

    .line 2212
    .local v14, "hasHandlers":Z
    const/4 v8, 0x0

    .line 2213
    .local v8, "planes":[Lcom/oneplus/camera/media/ImagePlane;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    if-eqz v4, :cond_3

    .line 2215
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v16

    .line 2218
    .local v16, "image":Landroid/media/Image;
    if-eqz v14, :cond_2

    if-eqz v16, :cond_2

    .line 2220
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Landroid/media/Image;->getWidth()I

    move-result v21

    .line 2221
    .local v21, "width":I
    invoke-virtual/range {v16 .. v16}, Landroid/media/Image;->getHeight()I

    move-result v15

    .line 2222
    .local v15, "height":I
    mul-int v4, v21, v15

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v20, v4, 0x2

    .line 2223
    .local v20, "nv21Size":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    array-length v4, v4

    move/from16 v0, v20

    if-eq v4, v0, :cond_1

    .line 2224
    :cond_0
    move/from16 v0, v20

    new-array v4, v0, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    .line 2225
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lcom/oneplus/camera/media/YuvUtils;->multiPlaneYuvToNV21(Landroid/media/Image;[B)V

    .line 2226
    const/4 v4, 0x1

    new-array v8, v4, [Lcom/oneplus/camera/media/ImagePlane;

    .end local v8    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    new-instance v4, Lcom/oneplus/camera/media/ImagePlane;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackBuffer:[B

    const/4 v6, 0x1

    move/from16 v0, v21

    invoke-direct {v4, v5, v6, v0}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    const/4 v5, 0x0

    aput-object v4, v8, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2240
    .end local v15    # "height":I
    .end local v20    # "nv21Size":I
    .end local v21    # "width":I
    :cond_2
    if-eqz v16, :cond_3

    .line 2241
    invoke-virtual/range {v16 .. v16}, Landroid/media/Image;->close()V

    .line 2246
    .end local v16    # "image":Landroid/media/Image;
    :cond_3
    sget-object v4, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v4, v5, :cond_8

    const/16 v17, 0x1

    .line 2247
    .local v17, "isPreviewStarted":Z
    :goto_0
    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v4, :cond_4

    .line 2249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPreviewFrameReceived() - Remove preview call-back surface"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 2251
    if-eqz v17, :cond_4

    .line 2252
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    .line 2258
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 2259
    .local v22, "profileTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    sub-long v18, v22, v4

    .line 2260
    .local v18, "interval":J
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    .line 2261
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    const-wide/16 v4, 0x7d0

    cmp-long v4, v18, v4

    if-ltz v4, :cond_9

    .line 2263
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    int-to-double v4, v4

    move-wide/from16 v0, v18

    long-to-double v6, v0

    div-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v12, v4, v6

    .line 2264
    .local v12, "fps":D
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    .line 2265
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    .line 2266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "onPreviewFrameReceived() - FPS : %.1f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    .end local v12    # "fps":D
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    if-nez v4, :cond_6

    .line 2274
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraImpl;->onFirstPreviewFrameReceived()V

    .line 2277
    :cond_6
    if-nez v17, :cond_a

    .line 2278
    return-void

    .line 2239
    .end local v17    # "isPreviewStarted":Z
    .end local v18    # "interval":J
    .end local v22    # "profileTime":J
    .restart local v16    # "image":Landroid/media/Image;
    :catchall_0
    move-exception v4

    .line 2240
    if-eqz v16, :cond_7

    .line 2241
    invoke-virtual/range {v16 .. v16}, Landroid/media/Image;->close()V

    .line 2239
    :cond_7
    throw v4

    .line 2246
    .end local v16    # "image":Landroid/media/Image;
    :cond_8
    const/16 v17, 0x0

    .restart local v17    # "isPreviewStarted":Z
    goto/16 :goto_0

    .line 2268
    .restart local v18    # "interval":J
    .restart local v22    # "profileTime":J
    :cond_9
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    .line 2269
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    goto :goto_1

    .line 2281
    :cond_a
    if-eqz v14, :cond_b

    if-eqz v8, :cond_b

    .line 2282
    sget-object v24, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x11

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2207
    :cond_b
    return-void
.end method

.method private onRawPictureReceived(Landroid/media/Image;)V
    .locals 10
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 2289
    sget-object v6, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    .line 2290
    .local v1, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2296
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

    .line 2297
    return-void

    .line 2299
    :pswitch_1
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v6, :cond_0

    .line 2301
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onRawPictureReceived() - No capture handle"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    return-void

    .line 2306
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->copyImage(Landroid/media/Image;)[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v5

    .line 2309
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    .line 2310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2311
    .local v3, "logBuffer":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "{ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2312
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 2314
    if-lez v2, :cond_1

    .line 2315
    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2316
    :cond_1
    aget-object v6, v5, v2

    invoke-virtual {v6}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2312
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2318
    :cond_2
    const-string/jumbo v6, " }"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2319
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onRawPictureReceived() - Index : "

    iget v8, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, ", picture data size : "

    invoke-static {v6, v7, v8, v9, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2322
    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v6, :cond_3

    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictureCount:I

    iget v7, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-le v6, v7, :cond_3

    .line 2324
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onRawPictureReceived() - Unexpected picture, drop"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    return-void

    .line 2329
    :cond_3
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2330
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    if-nez v0, :cond_4

    .line 2332
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2333
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onRawPictureReceived() - Received picture before capture completed"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    return-void

    .line 2338
    :cond_4
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/oneplus/camera/media/ImagePlane;

    .line 2339
    .local v4, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v4, :cond_5

    .line 2341
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onRawPictureReceived() - Wait for picture"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2343
    return-void

    .line 2347
    :cond_5
    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2350
    .restart local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    invoke-direct {p0, v0, v4, v5}, Lcom/oneplus/camera/CameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 2286
    return-void

    .line 2290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private openInternal(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .line 2401
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openInternal() - Start opening camera \'"

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

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_DeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2403
    const/4 v1, 0x1

    return v1

    .line 2406
    :catch_0
    move-exception v0

    .line 2407
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openInternal() - Fail to start opening camera \'"

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

    .line 2408
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    const/4 v3, -0x4

    invoke-direct {v2, p0, v3}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;-><init>(Lcom/oneplus/camera/Camera;I)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2409
    const/4 v1, 0x0

    return v1
.end method

.method private prepareCaptureRequestParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3
    .param p1, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2421
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAELocked:Z

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyAELock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2422
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AeRegions:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyAERegions(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2423
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureCompensation:F

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyExposureCompensation(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2426
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyFocusMode(Lcom/oneplus/camera/FocusMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2427
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AfRegions:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyAfRegions(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2433
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applySceneMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2436
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyAwbMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2437
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAwbLocked:Z

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyAwbLock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2439
    iget-wide v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oneplus/camera/CameraImpl;->applyExposureTime(JLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2442
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusValue:F

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyFocusDistance(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2445
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyISO(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2448
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    if-eqz v0, :cond_0

    .line 2450
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepareCaptureRequestParams() - FPS range : "

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2451
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2455
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyScalerCropRegion(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2458
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraImpl;->applyFaceDetection(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    .line 2415
    return-void
.end method

.method private prepareSurface(Ljava/lang/Object;)Landroid/view/Surface;
    .locals 7
    .param p1, "receiver"    # Ljava/lang/Object;

    .prologue
    .line 2466
    instance-of v4, p1, Landroid/view/SurfaceHolder;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 2468
    check-cast v0, Landroid/view/SurfaceHolder;

    .line 2470
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 2491
    .end local v0    # "holder":Landroid/view/SurfaceHolder;
    .local v2, "surface":Landroid/view/Surface;
    :goto_0
    return-object v2

    .line 2472
    .end local v2    # "surface":Landroid/view/Surface;
    :cond_0
    instance-of v4, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 2474
    check-cast v3, Landroid/graphics/SurfaceTexture;

    .line 2476
    .local v3, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2477
    .restart local v2    # "surface":Landroid/view/Surface;
    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2479
    .end local v2    # "surface":Landroid/view/Surface;
    .end local v3    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :cond_1
    instance-of v4, p1, Landroid/media/ImageReader;

    if-eqz v4, :cond_2

    move-object v1, p1

    .line 2481
    check-cast v1, Landroid/media/ImageReader;

    .line 2482
    .local v1, "reader":Landroid/media/ImageReader;
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .restart local v2    # "surface":Landroid/view/Surface;
    goto :goto_0

    .line 2484
    .end local v1    # "reader":Landroid/media/ImageReader;
    .end local v2    # "surface":Landroid/view/Surface;
    :cond_2
    instance-of v4, p1, Landroid/view/Surface;

    if-eqz v4, :cond_3

    move-object v2, p1

    .line 2485
    check-cast v2, Landroid/view/Surface;

    .restart local v2    # "surface":Landroid/view/Surface;
    goto :goto_0

    .line 2488
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

    .line 2489
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
    .line 2510
    .local p1, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<Lcom/oneplus/camera/CameraCaptureEventArgs;>;"
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-super {p0, v0, p1}, Lcom/oneplus/camera/BaseCamera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2511
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->hasHandlers(Lcom/oneplus/base/EventKey;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 2513
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removePreviewReceivedHandler() - Remove preview call-back surface"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2514
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 2515
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackCount:I

    .line 2516
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraImpl;->m_LastPreviewCbProfileTime:J

    .line 2517
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 2518
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    .line 2508
    :cond_0
    return-void
.end method

.method private restartCaptureSession()V
    .locals 2

    .prologue
    .line 3926
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_0

    .line 3927
    return-void

    .line 3929
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restartCaptureSession()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3932
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 3933
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->stopDriverCaptureSession()V

    .line 3936
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 3923
    return-void
.end method

.method private setAELockedProp(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2580
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2581
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAELocked:Z

    if-ne v1, p1, :cond_0

    .line 2582
    return v0

    .line 2585
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAELocked:Z

    .line 2586
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyAELock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2587
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2590
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
    .line 2617
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2620
    if-nez p1, :cond_1

    .line 2621
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2628
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AeRegions:Ljava/util/List;

    .line 2629
    .local v0, "oldRegions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_AeRegions:Ljava/util/List;

    .line 2630
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyAERegions(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAELocked:Z

    if-eqz v1, :cond_3

    .line 2634
    :cond_0
    :goto_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2622
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

    .line 2623
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Too many AE regions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2625
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 2631
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
    .line 2643
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2646
    if-nez p1, :cond_1

    .line 2647
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2653
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAFRegionsProp() - Regions : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2656
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AfRegions:Ljava/util/List;

    .line 2657
    .local v0, "oldRegions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_AfRegions:Ljava/util/List;

    .line 2658
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyAfRegions(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2659
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2666
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2648
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

    .line 2649
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Too many AF regions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2651
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0
.end method

.method private setAWBModeProp(I)Z
    .locals 5
    .param p1, "awbMode"    # I

    .prologue
    .line 2674
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2675
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2676
    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    if-ne v2, p1, :cond_0

    .line 2677
    const/4 v2, 0x1

    return v2

    .line 2678
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2679
    .local v0, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2681
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

    .line 2682
    const/4 v2, 0x0

    return v2

    .line 2685
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setAWBModeProp() - Awb mode : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2688
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    .line 2689
    .local v1, "oldAwbMode":I
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    .line 2692
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/camera/CameraImpl;->applyAwbMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2693
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2696
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

.method private setAwbLockedProp(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2598
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2599
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAwbLocked:Z

    if-ne v1, p1, :cond_0

    .line 2600
    return v0

    .line 2603
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAwbLocked:Z

    .line 2604
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyAwbLock(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2605
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2608
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

    .line 2702
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2703
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2704
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    .line 2705
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2706
    iput v1, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    .line 2707
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_DigitalZoom:F

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->applyScalerCropRegion(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2708
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2709
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
    .line 2717
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2718
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2721
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2722
    .local v0, "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 2723
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2728
    :cond_0
    :goto_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2729
    .local v2, "step":F
    div-float v3, p1, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    mul-float p1, v3, v2

    .line 2730
    iget v3, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureCompensation:F

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    .line 2731
    const/4 v3, 0x0

    return v3

    .line 2724
    .end local v2    # "step":F
    :cond_1
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    .line 2725
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    .line 2733
    .restart local v2    # "step":F
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setExposureCompensationProp() - EV : "

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2736
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureCompensation:F

    .line 2737
    .local v1, "oldEV":F
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureCompensation:F

    .line 2738
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v3}, Lcom/oneplus/camera/CameraImpl;->applyExposureCompensation(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2739
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2742
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
    .line 2750
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2751
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2752
    iget-wide v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    cmp-long v1, v4, p1

    if-nez v1, :cond_0

    .line 2753
    const/4 v1, 0x1

    return v1

    .line 2754
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2755
    .local v0, "exposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const-wide/16 v4, -0x1

    cmp-long v1, p1, v4

    if-eqz v1, :cond_1

    .line 2757
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, p1, v4

    if-lez v1, :cond_3

    .line 2759
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setExposureTimeProp() - Exposure time is too large, trim to upper"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2760
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 2769
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setExposureTimeProp() - Exposure time : "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2772
    iget-wide v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    .line 2773
    .local v2, "oldExposureTime":J
    iput-wide p1, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    .line 2776
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/camera/CameraImpl;->applyExposureTime(JLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2777
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2780
    :cond_2
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2762
    .end local v2    # "oldExposureTime":J
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, p1, v4

    if-gez v1, :cond_1

    .line 2764
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setExposureTimeProp() - Exposure time is too small, trim to lower"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
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

    .line 2787
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2788
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    if-ne v1, p1, :cond_0

    .line 2789
    return v0

    .line 2790
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    .line 2791
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyFaceDetection(ZLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2792
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2793
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

    .line 2801
    const/4 v1, 0x1

    .line 2802
    .local v1, "canAEModeOn":Z
    iget-wide v4, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget v3, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 2803
    :cond_0
    const/4 v1, 0x0

    .line 2806
    :cond_1
    iput-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

    .line 2807
    if-eqz p2, :cond_3

    .line 2811
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-FlashModeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2839
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

    .line 2814
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    sget-object v4, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    if-ne v3, v4, :cond_4

    .line 2816
    const/4 v0, 0x1

    .line 2817
    .local v0, "aeCtrlValue":I
    const/4 v2, 0x0

    .line 2818
    .local v2, "flashModeValue":I
    sget-object v3, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    iput-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

    .line 2841
    :goto_0
    if-nez v1, :cond_2

    .line 2843
    const/4 v0, 0x0

    .line 2844
    const/4 v2, 0x0

    .line 2846
    :cond_2
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2847
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2851
    .end local v0    # "aeCtrlValue":I
    .end local v2    # "flashModeValue":I
    :cond_3
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    .line 2798
    return-void

    .line 2822
    :cond_4
    const/4 v0, 0x2

    .line 2823
    .restart local v0    # "aeCtrlValue":I
    const/4 v2, 0x1

    .restart local v2    # "flashModeValue":I
    goto :goto_0

    .line 2827
    .end local v0    # "aeCtrlValue":I
    .end local v2    # "flashModeValue":I
    :pswitch_1
    const/4 v0, 0x1

    .line 2828
    .restart local v0    # "aeCtrlValue":I
    const/4 v2, 0x0

    .line 2829
    .restart local v2    # "flashModeValue":I
    goto :goto_0

    .line 2831
    .end local v0    # "aeCtrlValue":I
    .end local v2    # "flashModeValue":I
    :pswitch_2
    const/4 v0, 0x3

    .line 2832
    .restart local v0    # "aeCtrlValue":I
    const/4 v2, 0x1

    .line 2833
    .restart local v2    # "flashModeValue":I
    goto :goto_0

    .line 2835
    .end local v0    # "aeCtrlValue":I
    .end local v2    # "flashModeValue":I
    :pswitch_3
    const/4 v0, 0x1

    .line 2836
    .restart local v0    # "aeCtrlValue":I
    const/4 v2, 0x2

    .line 2837
    .restart local v2    # "flashModeValue":I
    goto :goto_0

    .line 2811
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

    .line 2859
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2860
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    .line 2861
    .local v0, "oldFlashMode":Lcom/oneplus/camera/FlashMode;
    if-ne v0, p1, :cond_0

    .line 2862
    return v4

    .line 2863
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

    .line 2865
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

    .line 2866
    return v4

    .line 2870
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFlashModeProp() - Flash mode : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2871
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2874
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2877
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setFocusModeProp(Lcom/oneplus/camera/FocusMode;)Z
    .locals 5
    .param p1, "focusMode"    # Lcom/oneplus/camera/FocusMode;

    .prologue
    .line 2923
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2926
    if-nez p1, :cond_0

    .line 2927
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No focus mode specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2928
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2929
    .local v0, "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2931
    sget-object v2, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2932
    sget-object p1, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    .line 2937
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

    .line 2939
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    if-ne v2, p1, :cond_4

    .line 2940
    const/4 v2, 0x0

    return v2

    .line 2933
    :cond_2
    sget-object v2, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2934
    sget-object p1, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    goto :goto_0

    .line 2936
    :cond_3
    sget-object p1, Lcom/oneplus/camera/FocusMode;->DISABLED:Lcom/oneplus/camera/FocusMode;

    goto :goto_0

    .line 2942
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFocusModeProp() - Focus mode : "

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2945
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 2946
    .local v1, "oldMode":Lcom/oneplus/camera/FocusMode;
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 2947
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/camera/CameraImpl;->applyFocusMode(Lcom/oneplus/camera/FocusMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v2, v3, :cond_5

    .line 2949
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2957
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
    .line 2885
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2886
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2887
    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusValue:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 2888
    const/4 v2, 0x1

    return v2

    .line 2889
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2890
    .local v0, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    .line 2892
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    .line 2894
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFocusProp() - Focus value is too large, trim to upper"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2904
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFocusProp() - Focus : "

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2907
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusValue:F

    .line 2908
    .local v1, "oldFocus":F
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusValue:F

    .line 2911
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/camera/CameraImpl;->applyFocusDistance(FLandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2912
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2915
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 2897
    .end local v1    # "oldFocus":F
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 2899
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFocusProp() - Focus value is too small, trim to lower"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
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
    .line 2965
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2966
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2967
    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    if-ne v2, p1, :cond_0

    .line 2968
    const/4 v2, 0x1

    return v2

    .line 2969
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2970
    .local v0, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 2972
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le p1, v2, :cond_3

    .line 2974
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setISOProp() - ISO value is too large, trim to upper"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2975
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2984
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setISOProp() - ISO value : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2987
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    .line 2988
    .local v1, "oldIsoValue":I
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    .line 2991
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/camera/CameraImpl;->applyISO(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2992
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 2995
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 2977
    .end local v1    # "oldIsoValue":I
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 2979
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setISOProp() - ISO value is too small, trim to lower"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
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

    .line 3002
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3003
    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 3004
    :cond_0
    return v1

    .line 3005
    :cond_1
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_JpegQuality:I

    .line 3006
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

    .line 3014
    if-nez p1, :cond_0

    .line 3015
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No picture size specified."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3016
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3018
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

    .line 3019
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid picture size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3021
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3022
    return v4

    .line 3025
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

    .line 3026
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 3027
    .local v0, "prevSize":Landroid/util/Size;
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 3028
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3031
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_3

    .line 3033
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPictureSize() - Restart capture session to apply new picture size"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    invoke-direct {p0, v4}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 3035
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startCaptureSession()Z

    .line 3039
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
    .line 3569
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3570
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3573
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    invoke-virtual {v1, p1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3574
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 3575
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3582
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

    .line 3583
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    .line 3584
    .local v0, "oldRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    .line 3585
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/CameraImpl;->applyPreviewFpsRange(Landroid/util/Range;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3586
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 3589
    :cond_3
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3577
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

    .line 3047
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3048
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    .line 3049
    .local v0, "prevReceiver":Ljava/lang/Object;
    if-ne v0, p1, :cond_0

    .line 3050
    return v5

    .line 3051
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v2, v3, :cond_1

    .line 3053
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

    .line 3054
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Cannot change preview receiver when preview state is not STOPPED."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3058
    :cond_1
    invoke-direct {p0, v5}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 3061
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v2, :cond_4

    .line 3064
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 3066
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 3067
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_TempSurfaces:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3068
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 3069
    :cond_2
    iput-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    .line 3073
    :cond_3
    if-eqz p1, :cond_4

    .line 3075
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->prepareSurface(Ljava/lang/Object;)Landroid/view/Surface;

    move-result-object v1

    .line 3076
    .local v1, "surface":Landroid/view/Surface;
    if-eqz v1, :cond_5

    .line 3077
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 3087
    .end local v1    # "surface":Landroid/view/Surface;
    :cond_4
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v2, p1}, Lcom/oneplus/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3090
    const/4 v2, 0x1

    return v2

    .line 3080
    .restart local v1    # "surface":Landroid/view/Surface;
    :cond_5
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setPreviewReceiver() - Fail to prepare Surface"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
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

    .line 3098
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3099
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3102
    if-nez p1, :cond_0

    .line 3103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No preview size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3104
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 3105
    .local v1, "oldSize":Landroid/util/Size;
    invoke-virtual {p1, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3106
    return v5

    .line 3107
    :cond_1
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3109
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

    .line 3110
    return v5

    .line 3115
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

    .line 3124
    const/4 v0, 0x0

    .line 3129
    .local v0, "needRestartPreview":Z
    :goto_0
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 3132
    if-eqz v0, :cond_3

    .line 3134
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setPreviewSizeProp() - Restart preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3135
    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->startPreview(I)Z

    .line 3139
    :cond_3
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 3119
    .end local v0    # "needRestartPreview":Z
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setPreviewSizeProp() - Stop preview to change preview size"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3120
    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->stopPreview(I)V

    .line 3121
    const/4 v0, 0x1

    .line 3122
    .restart local v0    # "needRestartPreview":Z
    goto :goto_0

    .line 3115
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

    .line 3145
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

    .line 3146
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3147
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRawCaptureEnabled:Z

    if-ne v1, p1, :cond_0

    .line 3148
    return v0

    .line 3149
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRawCaptureEnabled:Z

    .line 3151
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

    .line 3158
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3159
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-ne v1, p1, :cond_0

    .line 3160
    return v2

    .line 3161
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v3, :cond_1

    .line 3163
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

    .line 3164
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot change recording mode due to current capture state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3167
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

    .line 3171
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

    .line 3180
    const/4 v0, 0x0

    .line 3185
    .local v0, "needRestartPreview":Z
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    .line 3188
    if-eqz v0, :cond_2

    .line 3190
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setRecordingModeProp() - Restart preview"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3191
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->startPreview(I)Z

    .line 3195
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

    .line 3175
    .end local v0    # "needRestartPreview":Z
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setRecordingModeProp() - Stop preview to change recording mode"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3176
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopPreview(I)V

    .line 3177
    const/4 v0, 0x1

    .line 3178
    .restart local v0    # "needRestartPreview":Z
    goto :goto_0

    .line 3195
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 3171
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

    .line 3203
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3204
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3205
    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    if-ne v2, p1, :cond_0

    .line 3206
    const/4 v2, 0x1

    return v2

    .line 3207
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3208
    .local v1, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 3210
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

    .line 3211
    return v5

    .line 3214
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSceneModeProp() - Scene mode : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3217
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/camera/CameraImpl;->applySceneMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3218
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    .line 3221
    :cond_2
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    .line 3222
    .local v0, "oldSceneMode":I
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    .line 3223
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

    .line 3231
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3232
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3233
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

    .line 3245
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 3246
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No video size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3237
    :pswitch_0
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v1, :cond_0

    .line 3238
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setVideoSizeProp() - Apply video size when starting preview next time"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3247
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3249
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

    .line 3250
    return v4

    .line 3252
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3253
    return v4

    .line 3255
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setVideoSizeProp() - Video size : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3258
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 3259
    .local v0, "oldSize":Landroid/util/Size;
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 3260
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3233
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

    .line 3287
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v3, :cond_0

    .line 3288
    return-void

    .line 3291
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v3, v6, :cond_2

    move v2, v4

    .line 3292
    .local v2, "isPreviewStarted":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 3298
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startAutoFocus()"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3303
    if-eqz v2, :cond_4

    .line 3306
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

    .line 3322
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startAutoFocus() - Trigger AF"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3323
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3326
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 3329
    .local v0, "afRequest":Landroid/hardware/camera2/CaptureRequest;
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 3335
    .end local v0    # "afRequest":Landroid/hardware/camera2/CaptureRequest;
    :goto_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3336
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-ne v3, v5, :cond_3

    .line 3338
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3339
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3340
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3284
    :goto_3
    return-void

    .end local v2    # "isPreviewStarted":Z
    :cond_2
    move v2, v5

    .line 3291
    goto :goto_0

    .line 3310
    .restart local v2    # "isPreviewStarted":Z
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startAutoFocus() - Cancel current auto-focus"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->cancelAutoFocus(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3319
    :goto_4
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v6, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 3316
    :catch_0
    move-exception v1

    .line 3317
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startAutoFocus() - Fail to cancel auto-focus"

    invoke-static {v3, v6, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 3332
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 3333
    .restart local v1    # "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startAutoFocus() - Fail to start autofocus"

    invoke-static {v3, v6, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3344
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    iput-boolean v4, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 3345
    const/16 v3, 0x271b

    const-wide/16 v6, 0x1388

    invoke-static {p0, v3, v4, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 3346
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_3

    .line 3350
    :cond_4
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 3306
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

    .line 3359
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v5

    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v8}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    .line 3373
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

    .line 3374
    return v10

    .line 3363
    :pswitch_0
    return v7

    .line 3378
    :pswitch_1
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-gtz v5, :cond_1

    .line 3380
    :cond_0
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startCaptureSession() - Empty preview size"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3381
    return v10

    .line 3385
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 3386
    .local v2, "pictureSize":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-gtz v5, :cond_3

    .line 3388
    :cond_2
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startCaptureSession() - Empty picture size"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    return v10

    .line 3393
    :cond_3
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3394
    .local v1, "pictureFormat":I
    sparse-switch v1, :sswitch_data_0

    .line 3404
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

    .line 3405
    return v10

    .line 3401
    :sswitch_0
    const/16 v1, 0x23

    .line 3409
    :sswitch_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3410
    .local v4, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oneplus/camera/CameraImpl;->prepareSurface(Ljava/lang/Object;)Landroid/view/Surface;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    .line 3411
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    if-nez v5, :cond_4

    .line 3413
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startCaptureSession() - Fail to prepare Surface for preview"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3414
    return v10

    .line 3416
    :cond_4
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3419
    iget-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    if-eqz v5, :cond_6

    .line 3421
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startCaptureSession() - Video surface : "

    iget-object v9, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    invoke-static {v5, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3422
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3433
    :goto_0
    iget-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-nez v5, :cond_8

    .line 3434
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

    .line 3439
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

    .line 3440
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 3441
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    .line 3442
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3444
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->isRawCaptureNeeded()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3446
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startCaptureSession() - add rawSurface into surfaces list"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3447
    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 3448
    .local v3, "sensorSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    const/16 v8, 0x20

    invoke-static {v5, v6, v8, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    .line 3449
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_RawCallback:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 3450
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_RawReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    .line 3451
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_RawSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3458
    .end local v3    # "sensorSize":Landroid/util/Size;
    :cond_5
    :try_start_0
    iget-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-nez v5, :cond_a

    .line 3459
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3467
    :goto_3
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    .line 3470
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 3471
    iget-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    if-eqz v5, :cond_b

    .line 3472
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 3480
    :goto_4
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v5}, Lcom/oneplus/camera/CameraImpl;->prepareCaptureRequestParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3481
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v5, v6}, Lcom/oneplus/camera/CameraImpl;->applyPreviewFpsRange(Landroid/util/Range;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3491
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

    .line 3492
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v5, v4, v6, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 3493
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSessionClosed:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3502
    sget-object v5, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 3505
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x2711

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3508
    return v7

    .line 3426
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

    .line 3427
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    iget-object v8, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReaderCallback:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 3428
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    .line 3429
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    move v5, v7

    .line 3434
    goto/16 :goto_1

    .line 3435
    :cond_8
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-lez v5, :cond_9

    .line 3436
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

    .line 3438
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

    .line 3462
    :cond_a
    :try_start_2
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startCaptureSession() - Create request builder for video recording"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3463
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_Device:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 3484
    :catch_0
    move-exception v0

    .line 3485
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startCaptureSession() - Fail to create preview request builder"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 3475
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_b
    :try_start_3
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startCaptureSession() - Add preview call-back surface"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3476
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 3496
    :catch_1
    move-exception v0

    .line 3497
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

    .line 3498
    return v10

    .line 3359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3394
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

    .line 3597
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_0

    .line 3599
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

    .line 3600
    return v3

    .line 3602
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

    .line 3608
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

    .line 3609
    return v3

    .line 3612
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

    .line 3615
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequestDirectly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3618
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    sget-object v1, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    if-ne v0, v1, :cond_1

    .line 3619
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->cancelAutoFocus(I)V

    .line 3622
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3623
    const/4 v0, 0x1

    return v0

    .line 3627
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3628
    return v3

    .line 3602
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startPreviewRequestDirectly()Z
    .locals 5

    .prologue
    .line 3638
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startPreviewRequestDirectly()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3642
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

    .line 3643
    const/4 v1, 0x1

    return v1

    .line 3646
    :catch_0
    move-exception v0

    .line 3647
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

    .line 3648
    const/4 v1, 0x0

    return v1
.end method

.method private stopCaptureInternal(Z)V
    .locals 6
    .param p1, "abortCaptures"    # Z

    .prologue
    const/4 v5, 0x1

    .line 3726
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v3, :cond_0

    .line 3728
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - No capture handle"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3729
    return-void

    .line 3731
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 3732
    .local v0, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3746
    :goto_0
    :pswitch_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3749
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x272e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3752
    const/4 v2, 0x0

    .line 3753
    .local v2, "ignoreCallbacks":Z
    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v3, :cond_1

    .line 3755
    iget v3, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    if-eq v3, v5, :cond_3

    .line 3759
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - Stop repeating request"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3760
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3784
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    .line 3786
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - Stop capture directly"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3787
    invoke-direct {p0, v5}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    .line 3723
    :cond_2
    :goto_2
    return-void

    .line 3735
    .end local v2    # "ignoreCallbacks":Z
    :pswitch_1
    return-void

    .line 3737
    :pswitch_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - Stop while starting"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3742
    :pswitch_3
    return-void

    .line 3763
    .restart local v2    # "ignoreCallbacks":Z
    :catch_0
    move-exception v1

    .line 3764
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - Fail to stop repeating"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3767
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    if-eqz p1, :cond_1

    .line 3771
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - Abort captures"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3772
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 3773
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3779
    :goto_3
    const/4 v2, 0x1

    goto :goto_1

    .line 3776
    :catch_1
    move-exception v1

    .line 3777
    .restart local v1    # "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - Fail to abort captures"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3789
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_4
    iget-boolean v3, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureStartedReceived:Z

    if-nez v3, :cond_2

    .line 3791
    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCaptureInternal() - Capture call-back not received yet, stop capture directly"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3792
    invoke-direct {p0, v5}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto :goto_2

    .line 3732
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

    .line 3801
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSessionClosed:Z

    if-eqz v0, :cond_1

    .line 3803
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3805
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - Stop waiting for call-back"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3806
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3807
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 3811
    :goto_0
    return-void

    .line 3810
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - CaptureSession is already closed"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3813
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3829
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

    .line 3832
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

    .line 3858
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

    .line 3864
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - Stop preview directly"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3865
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3870
    :pswitch_2
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 3873
    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreviewReceived:Z

    if-eqz v0, :cond_5

    .line 3880
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->stopDriverCaptureSession()V

    .line 3881
    if-eqz p1, :cond_6

    .line 3882
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 3798
    :goto_2
    return-void

    .line 3816
    :pswitch_3
    return-void

    .line 3818
    :pswitch_4
    if-nez p1, :cond_2

    .line 3819
    return-void

    .line 3824
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - Stop while starting"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3825
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 3826
    return-void

    .line 3837
    :pswitch_6
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - Stop capture and wait for completion"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3838
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 3839
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->stopCaptureInternal(Z)V

    .line 3840
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_3

    .line 3842
    return-void

    .line 3844
    :pswitch_7
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - Stop while starting capture, stop capture directly"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3845
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto :goto_1

    .line 3848
    :pswitch_8
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - Wait for capture completion"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3849
    if-nez p1, :cond_3

    .line 3851
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    .line 3852
    return-void

    .line 3873
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3875
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureSession() - Wait for first preview frame"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3876
    return-void

    .line 3884
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 3813
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 3832
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
    .end packed-switch

    .line 3858
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private stopDriverCaptureSession()V
    .locals 3

    .prologue
    .line 3893
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopDriverCaptureSession() - Stop repeating"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3894
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3902
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopDriverCaptureSession() - Abort captures"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3903
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3911
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopDriverCaptureSession() - Close session"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3912
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 3913
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/CameraImpl;->m_IsCaptureSessionClosed:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 3889
    :goto_2
    return-void

    .line 3897
    :catch_0
    move-exception v0

    .line 3898
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopDriverCaptureSession() - Fail to stop repeating"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3906
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 3907
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopDriverCaptureSession() - Fail to abort captures"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3916
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 3917
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
    .line 4063
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4064
    .local v0, "aeState":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 4065
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4066
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/AutoExposureState;

    .line 4068
    .local v2, "prevAeState":Lcom/oneplus/camera/AutoExposureState;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 4089
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

    .line 4090
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .line 4093
    .local v1, "aeStateChanged":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 4094
    iput-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviousAeState:Lcom/oneplus/camera/AutoExposureState;

    .line 4095
    :cond_1
    return v1

    .line 4071
    .end local v1    # "aeStateChanged":Z
    :pswitch_0
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->CONVERGED:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4074
    .end local v1    # "aeStateChanged":Z
    :pswitch_1
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4077
    .end local v1    # "aeStateChanged":Z
    :pswitch_2
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->LOCKED:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4080
    .end local v1    # "aeStateChanged":Z
    :pswitch_3
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->PRECAPTURE:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4083
    .end local v1    # "aeStateChanged":Z
    :pswitch_4
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->SEARCHING:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4086
    .end local v1    # "aeStateChanged":Z
    :pswitch_5
    sget-object v3, Lcom/oneplus/camera/CameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "aeStateChanged":Z
    goto :goto_0

    .line 4068
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
    .line 4103
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/Face;

    .line 4104
    .local v4, "rawData":[Landroid/hardware/camera2/params/Face;
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceListIndex:I

    aget-object v1, v5, v6

    .line 4105
    .local v1, "currentFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4106
    return-void

    .line 4109
    :cond_1
    iget v5, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceListIndex:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v6, v6

    rem-int/2addr v5, v6

    iput v5, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceListIndex:I

    .line 4110
    iget-object v5, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v6, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceListIndex:I

    aget-object v3, v5, v6

    .line 4111
    .local v3, "newFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    .line 4113
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 4114
    .local v0, "cropRegion":Landroid/graphics/Rect;
    array-length v5, v4

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 4115
    aget-object v5, v4, v2

    invoke-static {v0, v5}, Lcom/oneplus/camera/Camera$Face;->obtain(Landroid/graphics/Rect;Landroid/hardware/camera2/params/Face;)Lcom/oneplus/camera/Camera$Face;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4114
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4119
    .end local v0    # "cropRegion":Landroid/graphics/Rect;
    .end local v2    # "i":I
    :cond_2
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v1, v3}, Lcom/oneplus/camera/CameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4122
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 4123
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera$Face;

    invoke-virtual {v5}, Lcom/oneplus/camera/Camera$Face;->recycle()V

    .line 4122
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4124
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4100
    return-void
.end method

.method private updateFlashState(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 4131
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4133
    .local v1, "state":Ljava/lang/Integer;
    if-nez v1, :cond_0

    return-void

    .line 4134
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4135
    .local v0, "flashState":I
    iget v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviousFlashState:I

    if-eq v0, v2, :cond_2

    .line 4137
    packed-switch v0, :pswitch_data_0

    .line 4161
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

    .line 4164
    :cond_1
    :goto_0
    iput v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviousFlashState:I

    .line 4129
    :cond_2
    return-void

    .line 4140
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewCaptureCompleted() - Charging"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4143
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewCaptureCompleted() - Fired"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4146
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewCaptureCompleted() - Partial"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4149
    :pswitch_3
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewCaptureCompleted() - Ready"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4150
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

    if-eqz v2, :cond_1

    .line 4152
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewCaptureCompleted() - Ready, set pending flash mode : "

    iget-object v4, p0, Lcom/oneplus/camera/CameraImpl;->m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4153
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_PendingFlashMode:Lcom/oneplus/camera/FlashMode;

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4154
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->applyToPreview()Z

    goto :goto_0

    .line 4158
    :pswitch_4
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewCaptureCompleted() - Unavailable"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4137
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
    .line 4172
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4170
    return-void
.end method

.method private updateFocusState(Landroid/hardware/camera2/CaptureResult;)V
    .locals 8
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    const/16 v7, 0x271c

    const/16 v6, 0x271b

    const/4 v5, 0x0

    .line 4180
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4181
    .local v0, "afState":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 4182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4186
    :cond_0
    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_LastRawFocusState:I

    .line 4187
    .local v1, "lastAfState":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/CameraImpl;->m_LastRawFocusState:I

    .line 4190
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    if-eqz v2, :cond_2

    .line 4192
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4228
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 4197
    :pswitch_1
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4198
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4199
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4200
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4205
    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 4207
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4208
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4209
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4210
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4211
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4212
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->FOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4217
    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 4219
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4220
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4221
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4222
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4223
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4224
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->UNFOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4232
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 4262
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

    .line 4263
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4264
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    if-eqz v2, :cond_3

    .line 4266
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4267
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4269
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4270
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4177
    :goto_1
    return-void

    .line 4236
    :pswitch_4
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 4239
    :pswitch_5
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4240
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4241
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4242
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4243
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 4247
    :pswitch_6
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4248
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4249
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4250
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4251
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->FOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 4255
    :pswitch_7
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusStarting:Z

    .line 4256
    iput-boolean v5, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAutoFocusTimeout:Z

    .line 4257
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4258
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4259
    sget-object v2, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FocusState;->UNFOCUSED:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 4192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 4232
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
    .line 4283
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updateAEState(Landroid/hardware/camera2/CaptureResult;)Z

    .line 4285
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updateFlashState(Landroid/hardware/camera2/CaptureResult;)V

    .line 4287
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updateFocusState(Landroid/hardware/camera2/CaptureResult;)V

    .line 4289
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updateFocalLength(Landroid/hardware/camera2/CaptureResult;)V

    .line 4291
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    .line 4292
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->updateFaceDetectionResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 4280
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
    .line 374
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_0

    .line 375
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->addPreviewReceivedHandler(Lcom/oneplus/base/EventHandler;)V

    .line 372
    :goto_0
    return-void

    .line 377
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

    .line 733
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 734
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 735
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_0

    .line 737
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

    .line 738
    return v4

    .line 742
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 747
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    const/4 v1, 0x1

    return v1

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "bindMediaRecorder() - Error when set video source"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 752
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 753
    return v4
.end method

.method public calculateViewAngles(Landroid/graphics/Rect;I)Landroid/util/SizeF;
    .locals 10
    .param p1, "cropRegion"    # Landroid/graphics/Rect;
    .param p2, "flags"    # I

    .prologue
    .line 765
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 766
    .local v2, "focalLength":F
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SizeF;

    .line 767
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

    .line 768
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

    .line 771
    .local v1, "anglesY":F
    if-nez p1, :cond_0

    .line 772
    new-instance v5, Landroid/util/SizeF;

    invoke-direct {v5, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v5

    .line 775
    :cond_0
    sget-object v5, Lcom/oneplus/camera/CameraImpl;->PROP_SENSOR_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 776
    .local v4, "sensorSizeFull":Landroid/util/Size;
    new-instance v5, Landroid/util/SizeF;

    .line 777
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v0

    .line 778
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v7, v1

    .line 776
    invoke-direct {v5, v6, v7}, Landroid/util/SizeF;-><init>(FF)V

    return-object v5
.end method

.method public cancelAutoFocus(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 791
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_0

    .line 793
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "cancelAutoFocus()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 797
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

    .line 803
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 785
    :cond_0
    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 801
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

    .line 813
    if-nez p1, :cond_0

    .line 815
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

    .line 816
    return-object v4

    .line 820
    :cond_0
    const/4 v0, 0x0

    .line 821
    .local v0, "captureLater":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 822
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_1

    .line 824
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

    .line 825
    return-object v4

    .line 827
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-Camera$StateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v2}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 836
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

    .line 837
    return-object v4

    .line 832
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capture() - Opening camera, capture later"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const/4 v0, 0x1

    .line 839
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

    .line 848
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

    .line 849
    return-object v4

    .line 844
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capture() - Starting preview, capture later"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const/4 v0, 0x1

    .line 853
    :pswitch_3
    sget-object v1, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 856
    new-instance v1, Lcom/oneplus/camera/CameraImpl$8;

    const-string/jumbo v2, "Capture"

    invoke-direct {v1, p0, v2}, Lcom/oneplus/camera/CameraImpl$8;-><init>(Lcom/oneplus/camera/CameraImpl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    .line 866
    iput p1, p0, Lcom/oneplus/camera/CameraImpl;->m_TargetCapturedFrameCount:I

    .line 867
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->captureInternal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 871
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    return-object v1

    .line 868
    :cond_3
    return-object v4

    .line 827
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 839
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
    .line 1137
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 1138
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-Camera$StateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1153
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    if-eq v0, v1, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "close() - Close process has been interrupted"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    return-void

    .line 1143
    :pswitch_1
    return-void

    .line 1147
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "close() - Close while opening"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    sget-object v0, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 1149
    return-void

    .line 1160
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 1161
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

    .line 1178
    :goto_0
    :pswitch_3
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->closeInternal()V

    .line 1134
    return-void

    .line 1165
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "close() - Force stopping capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureCompleted(Z)V

    goto :goto_0

    .line 1138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1161
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
    .line 1328
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AeRegions:Ljava/util/List;

    return-object v0

    .line 1330
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 1331
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AfRegions:Ljava/util/List;

    return-object v0

    .line 1332
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 1333
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_AwbMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1334
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 1335
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->getCameraCharacteristic()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0

    .line 1336
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 1337
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureCompensation:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1338
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 1339
    iget-wide v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ExposureTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1340
    :cond_5
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 1341
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v1, p0, Lcom/oneplus/camera/CameraImpl;->m_FaceListIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 1342
    :cond_6
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 1343
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    return-object v0

    .line 1344
    :cond_7
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    .line 1345
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1346
    :cond_8
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    .line 1347
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    return-object v0

    .line 1348
    :cond_9
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_a

    .line 1349
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_Id:Ljava/lang/String;

    return-object v0

    .line 1350
    :cond_a
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_b

    .line 1351
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAELocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1352
    :cond_b
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_c

    .line 1353
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsAwbLocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1354
    :cond_c
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_d

    .line 1355
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsFaceDetectionEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1356
    :cond_d
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_e

    .line 1357
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRawCaptureEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1358
    :cond_e
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_f

    .line 1359
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1360
    :cond_f
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_10

    .line 1361
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_ISOValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1362
    :cond_10
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_12

    .line 1363
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

    .line 1364
    :cond_12
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_13

    .line 1365
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewSize:Landroid/util/Size;

    return-object v0

    .line 1366
    :cond_13
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_14

    .line 1367
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PictureSize:Landroid/util/Size;

    return-object v0

    .line 1368
    :cond_14
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_15

    .line 1369
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    return-object v0

    .line 1370
    :cond_15
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_16

    .line 1371
    iget v0, p0, Lcom/oneplus/camera/CameraImpl;->m_SceneMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1372
    :cond_16
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_17

    .line 1373
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    return-object v0

    .line 1374
    :cond_17
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_18

    .line 1375
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSize:Landroid/util/Size;

    return-object v0

    .line 1376
    :cond_18
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCamera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1403
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1438
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCamera;->handleMessage(Landroid/os/Message;)V

    .line 1401
    :goto_0
    return-void

    .line 1406
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onAutoFocusTimeout()V

    goto :goto_0

    .line 1410
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onAutoFocusStartTimeout()V

    goto :goto_0

    .line 1414
    :sswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - Capture session close timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    .line 1419
    :sswitch_3
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onPreviewFrameReceived()V

    goto :goto_0

    .line 1423
    :sswitch_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - First preview frame timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onFirstPreviewFrameReceived()V

    goto :goto_0

    .line 1428
    :sswitch_5
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startAutoFocus()V

    goto :goto_0

    .line 1432
    :sswitch_6
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - Pre-capture flash timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraImpl;->m_IsPreCaptureFlashTimeout:Z

    .line 1434
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->onPreCaptureFlashComplete()V

    goto :goto_0

    .line 1403
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
    .line 2358
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    if-ne v0, v1, :cond_0

    .line 2359
    sget-object v0, Lcom/oneplus/camera/Camera$State;->UNAVAILABLE:Lcom/oneplus/camera/Camera$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->changeState(Lcom/oneplus/camera/Camera$State;)Lcom/oneplus/camera/Camera$State;

    .line 2362
    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/BaseCamera;->onRelease()V

    .line 2355
    return-void
.end method

.method public open(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2371
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 2372
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 2373
    invoke-static {}, Lcom/oneplus/camera/CameraImpl;->-getcom-oneplus-camera-Camera$StateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v3}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2384
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

    .line 2385
    return v1

    .line 2377
    :pswitch_0
    return v0

    .line 2381
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "open() - Open while closing"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
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

    .line 2389
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/camera/CameraImpl;->m_OpenCameraStartTime:J

    .line 2390
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraImpl;->openInternal(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2391
    return v1

    .line 2392
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

    .line 2373
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
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
    .line 2500
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_0

    .line 2501
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->removePreviewReceivedHandler(Lcom/oneplus/base/EventHandler;)V

    .line 2498
    :goto_0
    return-void

    .line 2503
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
    .line 2528
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 2529
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setAERegionsProp(Ljava/util/List;)Z

    move-result v0

    return v0

    .line 2530
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 2531
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setAFRegionsProp(Ljava/util/List;)Z

    move-result v0

    return v0

    .line 2532
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 2533
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setAWBModeProp(I)Z

    move-result v0

    return v0

    .line 2534
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    move-object v0, p2

    .line 2535
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setDigitalZoomProp(F)Z

    .line 2536
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 2537
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setExposureCompensationProp(F)Z

    move-result v0

    return v0

    .line 2538
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 2539
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setExposureTimeProp(J)Z

    move-result v0

    return v0

    .line 2540
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_5
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 2541
    check-cast p2, Lcom/oneplus/camera/FlashMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setFlashModeProp(Lcom/oneplus/camera/FlashMode;)Z

    move-result v0

    return v0

    .line 2542
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_6
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 2543
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setFocusProp(F)Z

    move-result v0

    return v0

    .line 2544
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_7
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    .line 2545
    check-cast p2, Lcom/oneplus/camera/FocusMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setFocusModeProp(Lcom/oneplus/camera/FocusMode;)Z

    move-result v0

    return v0

    .line 2546
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_8
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    .line 2547
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setAELockedProp(Z)Z

    move-result v0

    return v0

    .line 2548
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_9
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_a

    .line 2549
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setAwbLockedProp(Z)Z

    move-result v0

    return v0

    .line 2550
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_a
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_b

    .line 2551
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setFaceDetectionProp(Z)Z

    move-result v0

    return v0

    .line 2552
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_b
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_c

    .line 2553
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setISOProp(I)Z

    move-result v0

    return v0

    .line 2554
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_c
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_d

    .line 2555
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setRawCaptureProp(Z)Z

    move-result v0

    return v0

    .line 2556
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_d
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_e

    .line 2557
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setRecordingModeProp(Z)Z

    move-result v0

    return v0

    .line 2558
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_e
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_f

    .line 2559
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setJpegQualityProp(I)Z

    move-result v0

    return v0

    .line 2560
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_f
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_10

    .line 2561
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setPictureSize(Landroid/util/Size;)Z

    move-result v0

    return v0

    .line 2562
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_10
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_11

    .line 2563
    check-cast p2, Landroid/util/Range;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setPreviewFpsRangeProp(Landroid/util/Range;)Z

    move-result v0

    return v0

    .line 2564
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_11
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_12

    .line 2565
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setPreviewSizeProp(Landroid/util/Size;)Z

    move-result v0

    return v0

    .line 2566
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_12
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_13

    .line 2567
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setPreviewReceiver(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2568
    :cond_13
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_14

    .line 2569
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->setSceneModeProp(I)Z

    move-result v0

    return v0

    .line 2570
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_14
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_15

    .line 2571
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/CameraImpl;->setVideoSizeProp(Landroid/util/Size;)Z

    move-result v0

    return v0

    .line 2572
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

    .line 3269
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3270
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3271
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_0

    .line 3273
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

    .line 3274
    const/4 v0, 0x0

    return v0

    .line 3278
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3279
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3282
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

    .line 3517
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3518
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3519
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    if-eq v0, v1, :cond_0

    .line 3521
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

    .line 3522
    return v3

    .line 3524
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

    .line 3543
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_State:Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    if-ne v0, v1, :cond_3

    .line 3545
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_2

    .line 3547
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3548
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startPreviewRequest()Z

    move-result v0

    return v0

    .line 3530
    :pswitch_1
    return v2

    .line 3532
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_CaptureSessionState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_1

    .line 3533
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreview() - Start on started."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3534
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3539
    :goto_0
    return v2

    .line 3536
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreview() - Start while stopping"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3537
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3550
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/CameraImpl;->startCaptureSession()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3552
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreview() - Fail to start capture session"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    return v3

    .line 3557
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreview() - Start preview while opening camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3560
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3561
    return v2

    .line 3524
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

    .line 3658
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3659
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 3660
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 3662
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVideoRecording() - No media recorder"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3663
    return v4

    .line 3668
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

    .line 3685
    const/4 v1, 0x0

    .line 3692
    .local v1, "needRestartPreview":Z
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3701
    if-eqz v1, :cond_1

    .line 3703
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVideoRecording() - Restart preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3704
    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->startPreview(I)Z

    .line 3710
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3718
    const/4 v2, 0x1

    return v2

    .line 3672
    .end local v1    # "needRestartPreview":Z
    :pswitch_0
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraImpl;->m_IsRecordingMode:Z

    if-eqz v2, :cond_2

    .line 3674
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVideoRecording() - Stop preview to change video surface"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3675
    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraImpl;->stopPreview(I)V

    .line 3676
    const/4 v1, 0x1

    .restart local v1    # "needRestartPreview":Z
    goto :goto_0

    .line 3680
    .end local v1    # "needRestartPreview":Z
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVideoRecording() - Set video surface in non-recording mode"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3681
    const/4 v1, 0x0

    .restart local v1    # "needRestartPreview":Z
    goto :goto_0

    .line 3695
    :catch_0
    move-exception v0

    .line 3696
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVideoRecording() - Fail to get surface"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3697
    return v4

    .line 3713
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 3714
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVideoRecording() - Fail to start video recording"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3715
    return v4

    .line 3668
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

    .line 3945
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 3946
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

    .line 3959
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3962
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

    .line 3983
    :goto_1
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraImpl;->stopCaptureSession(Z)V

    .line 3942
    return-void

    .line 3950
    :pswitch_2
    return-void

    .line 3954
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Stop while starting"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3967
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Wait for capture stop"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3968
    return-void

    .line 3970
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Cancel capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3971
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureInternal(Z)V

    goto :goto_1

    .line 3974
    :pswitch_6
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Stop capture and wait for stop"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3975
    invoke-direct {p0, v2}, Lcom/oneplus/camera/CameraImpl;->stopCaptureInternal(Z)V

    .line 3976
    sget-object v0, Lcom/oneplus/camera/CameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_0

    .line 3977
    return-void

    .line 3978
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Capture stopped immediately"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3946
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 3962
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

    .line 4010
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 4011
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 4012
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 4014
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - No media recorder"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4015
    return v3

    .line 4021
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraImpl;->stopPreview(I)V

    .line 4022
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - MediaRecorder.stop [start]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4023
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 4024
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - MediaRecorder.stop [end]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4032
    const/4 v1, 0x1

    return v1

    .line 4027
    :catch_0
    move-exception v0

    .line 4028
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - Fail to stop recorder"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4029
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4040
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

    .line 4049
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyAccess()V

    .line 4050
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraImpl;->verifyReleaseState()V

    .line 4053
    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 4054
    iput-object v0, p0, Lcom/oneplus/camera/CameraImpl;->m_VideoSurface:Landroid/view/Surface;

    .line 4056
    const/4 v0, 0x1

    return v0
.end method
