.class public Lcom/oneplus/camera/LegacyCameraImpl;
.super Lcom/oneplus/camera/BaseCamera;
.source "LegacyCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/LegacyCameraImpl$10;,
        Lcom/oneplus/camera/LegacyCameraImpl$1;,
        Lcom/oneplus/camera/LegacyCameraImpl$2;,
        Lcom/oneplus/camera/LegacyCameraImpl$3;,
        Lcom/oneplus/camera/LegacyCameraImpl$4;,
        Lcom/oneplus/camera/LegacyCameraImpl$5;,
        Lcom/oneplus/camera/LegacyCameraImpl$6;,
        Lcom/oneplus/camera/LegacyCameraImpl$7;,
        Lcom/oneplus/camera/LegacyCameraImpl$8;,
        Lcom/oneplus/camera/LegacyCameraImpl$9;,
        Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-Camera$StateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-FlashModeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-FocusModeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-FocusStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-LegacyCameraImpl$TakingPictureResultSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-OperationStateSwitchesValues:[I = null

.field private static final CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

.field private static final CAMERA_STATE_CB_TYPE_ACTIVE_EXPOSURE_COMP:I = 0x7

.field private static final CAMERA_STATE_CB_TYPE_ACTIVE_EXPOSURE_TIME:I = 0x6

.field private static final CAMERA_STATE_CB_TYPE_ACTIVE_FOCUS_DISTANCE:I = 0x5

.field private static final CAMERA_STATE_CB_TYPE_ACTIVE_ISO:I = 0x3

.field private static final CAMERA_STATE_CB_TYPE_ACTIVE_WB:I = 0x4

.field private static final CAMERA_STATE_CB_TYPE_AE_STATE:I = 0x0

.field private static final CAMERA_STATE_CB_TYPE_BOKEH_DEBUG_INFO:I = 0x9

.field private static final CAMERA_STATE_CB_TYPE_BOKEH_STATE:I = 0x8

.field private static final CAMERA_STATE_CB_TYPE_HDR_STATE:I = 0x1

.field private static final CAMERA_STATE_CB_TYPE_MOTION_STATE:I = 0x2

.field private static final DUMP_PARAMETERS:Z = false

.field private static final JPEG_QUALITY_BURST:I = 0x5a

.field private static final KEEP_FILE_NAME_IN_PARAMS:Z = true

.field private static final MSG_AUTO_FOCUS_TIMEOUT:I = 0x2710

.field private static final MSG_FACES_CHANGED_TIME_OUT:I = 0x2711

.field private static final MSG_JPEG_TIMEOUT:I = 0x2712

.field private static final TAKE_NEXT_PICTURE_ON_SHUTTER:Z = true

.field private static final TIMEOUT_AUTO_FOCUS:J = 0x1388L

.field private static final TIMEOUT_JPEG_CALLBACK:J = 0x1388L

.field private static final TIME_OUT_FACES_CHANGED:J = 0x96L


# instance fields
.field private final m_AeAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private m_AeCallback:Ljava/lang/Object;

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

.field private m_AeState:Lcom/oneplus/camera/AutoExposureState;

.field private final m_AfAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
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

.field private m_AlternativePictureSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final m_AutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final m_AutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private m_AutoHdr:Z

.field private final m_AvailableLegacySceneModes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_AwbMode:I

.field private final m_BokehDebugInfoTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/oneplus/camera/BokehDebugInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_BokehJpegNum:I

.field private m_BokehPictureSize:Landroid/util/Size;

.field private m_BokehStrength:F

.field private m_BufferedPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private m_CameraParameters:Landroid/hardware/Camera$Parameters;

.field private m_CameraStateCallback:Ljava/lang/Object;

.field private m_CameraStateCallbackClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private m_CaptureHandle:Lcom/oneplus/base/Handle;

.field private m_ColorTemperature:I

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

.field private m_Device:Landroid/hardware/Camera;

.field private m_DigitalZoom:Ljava/lang/Float;

.field private m_DigitalZoomRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m_DigitalZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_ErrorCallbackCallback:Landroid/hardware/Camera$ErrorCallback;

.field private m_ExposureCompensation:F

.field private m_ExposureTime:J

.field private m_FaceBeautyValue:I

.field private m_FaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

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

.field private m_FocusState:Lcom/oneplus/camera/FocusState;

.field private m_FocusValue:F

.field private m_ForceCancelAutoFocus:Z

.field private m_ISOValue:I

.field private final m_Id:I

.field private m_IsAeLocked:Z

.field private m_IsApplyingParameters:Z

.field private m_IsAwbLocked:Z

.field private m_IsBokehEnabled:Z

.field private m_IsCameraStateCallbackSupported:Z

.field private m_IsFaceDetectionEnabled:Z

.field private m_IsMirrored:Z

.field private m_IsMotionVectorEnabled:Z

.field private m_IsPreviewCallbackAdded:Z

.field private m_IsProcessCallbackSupported:Z

.field private m_IsRawCaptureEnabled:Z

.field private m_IsRecordingMode:Z

.field private m_IsStandaloneFaceBeautyEnabled:Z

.field private m_IsTimeLapseMode:Z

.field private m_IsZslManualCaptureSupported:Z

.field private m_JpegQuality:I

.field private m_MediaRecorder:Landroid/media/MediaRecorder;

.field private m_MotionVectorCallback:Ljava/lang/Object;

.field private m_OneplusCallback:Ljava/lang/Object;

.field private m_PictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private m_PictureSize:Landroid/util/Size;

.field private m_PostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private m_PostviewReceivedCount:I

.field private m_PreviewCallbackByteLength:I

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

.field private m_PreviewFpsRangeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_PreviewSize:Landroid/util/Size;

.field private m_PreviewSizeBackup:Landroid/util/Size;

.field private m_ProcessCallback:Ljava/lang/Object;

.field private m_RawCallback:Landroid/hardware/Camera$PictureCallback;

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

.field private final m_SetParametersRunnable:Ljava/lang/Runnable;

.field private m_ShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private m_ShutterReceivedCount:I

.field private m_TakePictureFailedOnShutter:Z

.field private m_TakenTime:J

.field private m_TargetCapturedFrameCount:I

.field private m_VideoSize:Landroid/util/Size;

.field private m_WatermarkBoundsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private m_WatermarkFilePathsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_ZoomRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/LegacyCameraImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/LegacyCameraImpl;)Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-Camera$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-Camera$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-Camera$StateSwitchesValues:[I

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

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-Camera$StateSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-FlashModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-FlashModeSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-FlashModeSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-FocusModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-FocusModeSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-FocusModeSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-FocusStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-FocusStateSwitchesValues:[I

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

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

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

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-FocusStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-LegacyCameraImpl$TakingPictureResultSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-LegacyCameraImpl$TakingPictureResultSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-LegacyCameraImpl$TakingPictureResultSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->values()[Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->CAPTURE_STOPPING:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->FRAME_COUNT_REACHED:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_JPEG:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_RAW:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->TAKE_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->WAIT_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-LegacyCameraImpl$TakingPictureResultSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-OperationStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/oneplus/camera/LegacyCameraImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsApplyingParameters:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/LegacyCameraImpl;Z)Z
    .locals 1
    .param p1, "immediately"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/LegacyCameraImpl;I)V
    .locals 0
    .param p1, "aeState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->onAeStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/LegacyCameraImpl;[Landroid/hardware/Camera$Face;)V
    .locals 0
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->onFaceDetection([Landroid/hardware/Camera$Face;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/LegacyCameraImpl;I)V
    .locals 0
    .param p1, "motionState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->onMotionStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/LegacyCameraImpl;[[Landroid/graphics/PointF;Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [[Landroid/graphics/PointF;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->onMotionVectorReceived([[Landroid/graphics/PointF;Landroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/oneplus/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->onPictureReceived([BLandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/oneplus/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->onPostviewReceived([BLandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/oneplus/camera/LegacyCameraImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->onProcessReceived()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/oneplus/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->onRawReceived([BLandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/oneplus/camera/LegacyCameraImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->onShutterReceived()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/oneplus/camera/LegacyCameraImpl;Z)V
    .locals 0
    .param p1, "abortCaptures"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/LegacyCameraImpl;Z)V
    .locals 0
    .param p1, "start"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->onAutoFocusMoving(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/LegacyCameraImpl;Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->onAutoFocus(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/LegacyCameraImpl;I)V
    .locals 0
    .param p1, "hdrState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->onAutoHdrStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->onBufferedPreviewCallbackReceived([BLandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/LegacyCameraImpl;[B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->onCameraStateChanged([B)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->onDngImageReceived([BLandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/LegacyCameraImpl;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p3, "camera"    # Landroid/hardware/Camera;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/LegacyCameraImpl;->onDngMetadataReceived(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/LegacyCameraImpl;I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->onError(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Lcom/oneplus/camera/CameraInfo;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "cameraInfo"    # Lcom/oneplus/camera/CameraInfo;

    .prologue
    .line 302
    invoke-direct {p0, p1, p4}, Lcom/oneplus/camera/BaseCamera;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CameraInfo;)V

    .line 107
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeAreas:Ljava/util/List;

    .line 109
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    .line 110
    sget-object v8, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    .line 111
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfAreas:Ljava/util/List;

    .line 113
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    .line 115
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    .line 117
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AvailableLegacySceneModes:Ljava/util/Set;

    .line 118
    const/4 v8, 0x1

    iput v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AwbMode:I

    .line 119
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehDebugInfoTable:Ljava/util/Map;

    .line 120
    const/4 v8, 0x1

    iput v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehJpegNum:I

    .line 121
    new-instance v8, Landroid/util/Size;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehPictureSize:Landroid/util/Size;

    .line 122
    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehStrength:F

    .line 128
    const/4 v8, 0x0

    iput v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ColorTemperature:I

    .line 132
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoom:Ljava/lang/Float;

    .line 135
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRatios:Ljava/util/List;

    .line 137
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureTime:J

    .line 141
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/util/List;

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    .line 142
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ForceCancelAutoFocus:Z

    .line 143
    sget-object v8, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    .line 144
    sget-object v8, Lcom/oneplus/camera/FocusMode;->DISABLED:Lcom/oneplus/camera/FocusMode;

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 145
    sget-object v8, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 146
    const/high16 v8, -0x40800000    # -1.0f

    iput v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusValue:F

    .line 152
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsCameraStateCallbackSupported:Z

    .line 153
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    .line 156
    const/4 v8, -0x1

    iput v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ISOValue:I

    .line 164
    const/4 v8, -0x1

    iput v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    .line 166
    new-instance v8, Landroid/util/Size;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 170
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRangeMap:Ljava/util/Map;

    .line 171
    new-instance v8, Landroid/util/Size;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 174
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    .line 176
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    .line 178
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    .line 179
    const/4 v8, 0x0

    iput v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    .line 184
    new-instance v8, Landroid/util/Size;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 185
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    .line 186
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    .line 192
    new-instance v8, Lcom/oneplus/camera/LegacyCameraImpl$1;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/LegacyCameraImpl$1;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 201
    new-instance v8, Lcom/oneplus/camera/LegacyCameraImpl$2;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/LegacyCameraImpl$2;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 210
    new-instance v8, Lcom/oneplus/camera/LegacyCameraImpl$3;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/LegacyCameraImpl$3;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BufferedPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 218
    new-instance v8, Lcom/oneplus/camera/LegacyCameraImpl$4;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/LegacyCameraImpl$4;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ErrorCallbackCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 227
    new-instance v8, Lcom/oneplus/camera/LegacyCameraImpl$5;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/LegacyCameraImpl$5;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 238
    new-instance v8, Lcom/oneplus/camera/LegacyCameraImpl$6;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/LegacyCameraImpl$6;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 246
    new-instance v8, Lcom/oneplus/camera/LegacyCameraImpl$7;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/LegacyCameraImpl$7;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 255
    new-instance v8, Lcom/oneplus/camera/LegacyCameraImpl$8;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/LegacyCameraImpl$8;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_RawCallback:Landroid/hardware/Camera$PictureCallback;

    .line 263
    new-instance v8, Lcom/oneplus/camera/LegacyCameraImpl$9;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/LegacyCameraImpl$9;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 274
    new-instance v8, Lcom/oneplus/camera/LegacyCameraImpl$10;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/LegacyCameraImpl$10;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SetParametersRunnable:Ljava/lang/Runnable;

    .line 305
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    .line 308
    sget-object v8, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_FIXED_SIZE_PREVIEW_RECEIVER_NEEDED:Lcom/oneplus/base/PropertyKey;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 311
    sget-object v8, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 312
    .local v2, "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    sget-object v8, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 313
    sget-object v8, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 320
    :goto_0
    sget-object v8, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 321
    .local v6, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 322
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 325
    :cond_0
    sget-object v8, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p4, v8}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 326
    .local v4, "maxFaceCount":I
    if-lez v4, :cond_3

    .line 328
    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "LegacyCameraImpl() - Max face count : "

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 330
    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v9, v8, v3

    .line 329
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 314
    .end local v3    # "i":I
    .end local v4    # "maxFaceCount":I
    .end local v6    # "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_1
    sget-object v8, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 315
    sget-object v8, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    goto :goto_0

    .line 317
    :cond_2
    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "LegacyCameraImpl() - Initial focus mode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    .restart local v4    # "maxFaceCount":I
    .restart local v6    # "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_3
    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "LegacyCameraImpl() - Face detection is unsupported"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_4

    .line 336
    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    aput-object v9, v8, v3

    .line 335
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 341
    :cond_4
    :try_start_0
    const-string/jumbo v8, "android.hardware.Camera$Face"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 342
    .local v1, "faceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "getIsSmile"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 343
    sget-object v8, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 344
    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "LegacyCameraImpl() - smile capture is supported"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v1    # "faceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    sget-object v8, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STEP:Lcom/oneplus/base/PropertyKey;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 355
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v5, :cond_5

    .line 357
    const-string/jumbo v8, "oem.opcamera_manual_zsl.support"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsZslManualCaptureSupported:Z

    .line 358
    iget-boolean v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsZslManualCaptureSupported:Z

    if-eqz v8, :cond_5

    .line 359
    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "LegacyCameraImpl() - ZSL manual capture is supported"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_5
    :try_start_1
    const-string/jumbo v8, "android.hardware.Camera$CameraStateCallback"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraStateCallbackClass:Ljava/lang/Class;

    .line 366
    sget-object v8, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_ACTIVE_PICTURE_INFO_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    :goto_4
    sget-object v8, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/LegacyCameraImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 299
    return-void

    .line 345
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v7

    .line 346
    .local v7, "tr":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "LegacyCameraImpl() - Failed to get smile capture information"

    invoke-static {v8, v9, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    sget-object v8, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_3

    .line 369
    .end local v7    # "tr":Ljava/lang/Throwable;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v0

    .line 370
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsCameraStateCallbackSupported:Z

    .line 371
    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "LegacyCameraImpl() - Camera state call-back is unsupported"

    invoke-static {v8, v9, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private addPreviewCallbacks()V
    .locals 5

    .prologue
    .line 395
    iget-boolean v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsPreviewCallbackAdded:Z

    if-eqz v2, :cond_0

    .line 396
    return-void

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "addPreviewCallbacks() - Camera is released"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void

    .line 406
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->getPreviewFormat()I

    move-result v1

    .line 407
    .local v1, "previewFormat":I
    packed-switch v1, :pswitch_data_0

    .line 413
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addPreviewCallbacks() - Not supported preview format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unsupported preview format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 410
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewCallbackByteLength:I

    .line 418
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "addPreviewCallbacks() - Bytes length: "

    iget v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewCallbackByteLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 420
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewCallbackByteLength:I

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BufferedPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 392
    return-void

    .line 407
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method private applyAeCallback()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 431
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 433
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyAeCallback() - Camera is released"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return v7

    .line 438
    :cond_0
    iget-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsCameraStateCallbackSupported:Z

    if-eqz v3, :cond_1

    .line 439
    return v8

    .line 442
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeCallback:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 447
    :try_start_0
    const-string/jumbo v3, "android.hardware.Camera$AECallback"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 448
    .local v0, "aeCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    new-instance v5, Lcom/oneplus/camera/LegacyCameraImpl$11;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/LegacyCameraImpl$11;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .end local v0    # "aeCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    const-string/jumbo v3, "android.hardware.Camera$AECallback"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 494
    .restart local v0    # "aeCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setAECallback"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 495
    .local v2, "setAeCallbackMethod":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeCallback:Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 502
    return v8

    .line 484
    .end local v0    # "aeCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "setAeCallbackMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyAeCallback() - Cannot set AE callback"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 486
    return v7

    .line 498
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 499
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyAeCallback() - Fail to set AE callback"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    return v7
.end method

.method private applyAeLock(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 509
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 518
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 513
    :cond_1
    if-eqz p1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyAeLock() - AE lock is unsupported"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return v2

    .line 520
    :cond_2
    return v2
.end method

.method private applyAeRegions(Ljava/util/List;)Z
    .locals 5
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
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 546
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_0

    .line 547
    return v4

    .line 550
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    .line 551
    .local v0, "maxMeteringAreas":I
    if-nez v0, :cond_2

    .line 552
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    :cond_1
    return v1

    .line 555
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeAreas:Ljava/util/List;

    invoke-direct {p0, p1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->createCameraAreas(Ljava/util/List;ILjava/util/List;)V

    .line 558
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeAreas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 559
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 564
    :goto_0
    return v1

    .line 561
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeAreas:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_0
.end method

.method private applyAfRegions(Ljava/util/List;)Z
    .locals 5
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
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 572
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_0

    .line 573
    return v4

    .line 576
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    .line 577
    .local v0, "maxFocusAreas":I
    if-nez v0, :cond_2

    .line 578
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    :cond_1
    return v1

    .line 581
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfAreas:Ljava/util/List;

    invoke-direct {p0, p1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->createCameraAreas(Ljava/util/List;ILjava/util/List;)V

    .line 584
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfAreas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 585
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 590
    :goto_0
    return v1

    .line 587
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfAreas:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_0
.end method

.method private applyAwbLock(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 527
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 536
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 531
    :cond_1
    if-eqz p1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyAwbLock() - Awb lock is unsupported"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return v2

    .line 538
    :cond_2
    return v2
.end method

.method private applyAwbMode(I)Z
    .locals 2
    .param p1, "awbMode"    # I

    .prologue
    .line 597
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 599
    const-string/jumbo v0, "auto"

    .line 600
    .local v0, "awbStr":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 617
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 618
    const/4 v1, 0x1

    return v1

    .line 603
    :sswitch_0
    const-string/jumbo v0, "cloudy-daylight"

    goto :goto_0

    .line 606
    :sswitch_1
    const-string/jumbo v0, "daylight"

    goto :goto_0

    .line 609
    :sswitch_2
    const-string/jumbo v0, "fluorescent"

    goto :goto_0

    .line 612
    :sswitch_3
    const-string/jumbo v0, "incandescent"

    goto :goto_0

    .line 615
    :sswitch_4
    const-string/jumbo v0, "manual"

    goto :goto_0

    .line 620
    .end local v0    # "awbStr":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 600
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
        0x65 -> :sswitch_4
    .end sparse-switch
.end method

.method private applyBokeh(ZF)Z
    .locals 5
    .param p1, "isEnabled"    # Z
    .param p2, "strength"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 627
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_6

    .line 629
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AvailableLegacySceneModes:Ljava/util/Set;

    const-string/jumbo v3, "bokeh"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    if-eqz p1, :cond_3

    .line 632
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "bokeh"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 636
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "bokeh-mode"

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 637
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "bokeh-blur-value"

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 638
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 640
    iput v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehJpegNum:I

    .line 641
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_BOKEH_ORIGINAL_PICTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 643
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "bokeh-original-picture"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 644
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/oneplus/camera/BokehState;->NORMAL:Lcom/oneplus/camera/BokehState;

    if-ne v0, v2, :cond_1

    .line 645
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehJpegNum:I

    .line 649
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "bokeh-jpeg-num"

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehJpegNum:I

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 651
    :cond_2
    return v1

    .line 634
    :cond_3
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->applySceneMode(I)Z

    goto :goto_0

    :cond_4
    move v0, v2

    .line 636
    goto :goto_1

    .line 648
    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "bokeh-original-picture"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_2

    .line 653
    :cond_6
    return v2
.end method

.method private applyColorTemperature(I)Z
    .locals 2
    .param p1, "colorTemperature"    # I

    .prologue
    .line 660
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "color-temperature"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 663
    const/4 v0, 0x1

    return v0

    .line 665
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private applyDngImageCallbackBuffer()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 673
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 675
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "applyDngImageCallbackBuffer() - Camera is released"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    return v9

    .line 682
    :cond_0
    :try_start_0
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 683
    .local v3, "sensorSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [B

    .line 684
    .local v1, "dngBuffer":[B
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyDngImageCallbackBuffer() - dngBuffer.length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "addDngImageCallbackBuffer"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, [B

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 687
    .local v0, "addDngImageCallbackBufferMethod":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    return v10

    .line 690
    .end local v0    # "addDngImageCallbackBufferMethod":Ljava/lang/reflect/Method;
    .end local v1    # "dngBuffer":[B
    .end local v3    # "sensorSize":Landroid/util/Size;
    :catch_0
    move-exception v2

    .line 691
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "applyDngImageCallbackBuffer() - Fail to set DngImageCallbackBuffer"

    invoke-static {v4, v5, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 692
    return v9
.end method

.method private applyExposureCompensation(F)Z
    .locals 4
    .param p1, "ev"    # F

    .prologue
    .line 700
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v3, :cond_0

    .line 702
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v3

    div-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 703
    .local v0, "index":I
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 704
    .local v2, "minIndex":I
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 705
    .local v1, "maxIndex":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 706
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 707
    const/4 v3, 0x1

    return v3

    .line 709
    .end local v0    # "index":I
    .end local v1    # "maxIndex":I
    .end local v2    # "minIndex":I
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private applyExposureTime(J)Z
    .locals 7
    .param p1, "exposureTime"    # J

    .prologue
    .line 716
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1

    .line 718
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 720
    long-to-double v2, p1

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "applyExposureTime() - Exposure time: "

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 722
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "exposure-time"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 725
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "exposure-time"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 728
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private applyFaceBeautyValue(I)Z
    .locals 3
    .param p1, "faceBeautyValue"    # I

    .prologue
    .line 735
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "applyFaceBeautyValue() - faceBeautyValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "face-beauty-current-value"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 740
    const/4 v0, 0x1

    return v0

    .line 742
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private applyFaceDetection(Z)Z
    .locals 5
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 748
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    .line 749
    .local v1, "previewState":Lcom/oneplus/camera/OperationState;
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_3

    .line 753
    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_2

    .line 754
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 757
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 756
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "applyFaceDetection() - Fail to start/stop face detection"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 762
    return v4

    .line 765
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    return v4
.end method

.method private applyFlashMode(Lcom/oneplus/camera/FlashMode;)Z
    .locals 5
    .param p1, "flashMode"    # Lcom/oneplus/camera/FlashMode;

    .prologue
    const/4 v3, 0x0

    .line 772
    const/4 v1, 0x0

    .line 773
    .local v1, "success":Z
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 774
    .local v0, "previewState":Lcom/oneplus/camera/OperationState;
    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v2, :cond_1

    .line 775
    :cond_0
    return v3

    .line 776
    :cond_1
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 777
    return v3

    .line 779
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_3

    .line 781
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-FlashModeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 796
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported flash mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 784
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "auto"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 798
    :goto_0
    const/4 v1, 0x1

    .line 800
    :cond_3
    return v1

    .line 787
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "on"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 793
    :pswitch_3
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "torch"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 781
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private applyFocusMode(Lcom/oneplus/camera/FocusMode;)Z
    .locals 3
    .param p1, "focusMode"    # Lcom/oneplus/camera/FocusMode;

    .prologue
    const/4 v2, 0x0

    .line 807
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    .line 809
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-FocusModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/FocusMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 825
    return v2

    .line 813
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 827
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 816
    :pswitch_1
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "continuous-picture"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 822
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "manual"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 829
    :cond_1
    return v2

    .line 809
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private applyFocusPosition(F)Z
    .locals 6
    .param p1, "focusValue"    # F

    .prologue
    const/4 v5, 0x0

    .line 836
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_1

    .line 839
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 840
    .local v1, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v0, v2, p1

    .line 843
    .local v0, "focusPosition":F
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "manual-focus-position"

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 844
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "manual-focus-pos-type"

    invoke-virtual {v2, v3, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 845
    const/4 v2, 0x1

    return v2

    .line 840
    .end local v0    # "focusPosition":F
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .restart local v0    # "focusPosition":F
    goto :goto_0

    .line 847
    .end local v0    # "focusPosition":F
    .end local v1    # "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_1
    return v5
.end method

.method private applyHighVideoFrameRate()Z
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyHighVideoFrameRate()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "high-fps-recording"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 858
    const/4 v0, 0x1

    return v0

    .line 860
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private applyISO(I)Z
    .locals 4
    .param p1, "iso"    # I

    .prologue
    .line 867
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    .line 869
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "iso"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ISO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "iso"

    const-string/jumbo v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 875
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private applyManualCapture(Z)Z
    .locals 2
    .param p1, "isManual"    # Z

    .prologue
    .line 882
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    .line 884
    if-eqz p1, :cond_0

    .line 885
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "manual"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 888
    const/4 v0, 0x1

    return v0

    .line 887
    :cond_0
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->applySceneMode(I)Z

    move-result v0

    return v0

    .line 890
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private applyMirrorMode(Z)Z
    .locals 4
    .param p1, "isMirrored"    # Z

    .prologue
    const/4 v2, 0x0

    .line 897
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_3

    .line 899
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 900
    return v2

    .line 901
    :cond_0
    if-eqz p1, :cond_2

    .line 903
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "applyMirrorMode() - Is mirror"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->calculateJpegOrientation()I

    move-result v0

    .line 905
    .local v0, "jpegOrientation":I
    rem-int/lit16 v1, v0, 0xb4

    if-nez v1, :cond_1

    .line 906
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "snapshot-picture-flip"

    const-string/jumbo v3, "flip-h"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    .end local v0    # "jpegOrientation":I
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 908
    .restart local v0    # "jpegOrientation":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "snapshot-picture-flip"

    const-string/jumbo v3, "flip-v"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 911
    .end local v0    # "jpegOrientation":I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "snapshot-picture-flip"

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 914
    :cond_3
    return v2
.end method

.method private applyOneplusCallback(Z)Z
    .locals 10
    .param p1, "isRawCapureEnabled"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 922
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 924
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyOneplusCallback() - Camera is released"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    return v8

    .line 929
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_OneplusCallback:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 934
    :try_start_0
    const-string/jumbo v4, "android.hardware.Camera$OneplusCallback"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 935
    .local v1, "oneplusCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    new-instance v6, Lcom/oneplus/camera/LegacyCameraImpl$12;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/LegacyCameraImpl$12;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_OneplusCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    .end local v1    # "oneplusCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-string/jumbo v4, "android.hardware.Camera$OneplusCallback"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 969
    .restart local v1    # "oneplusCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setOneplusCallback"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 970
    .local v2, "setOneplusCallbackMethod":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_OneplusCallback:Ljava/lang/Object;

    :cond_2
    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 977
    return v9

    .line 959
    .end local v1    # "oneplusCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "setOneplusCallbackMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyOneplusCallback() - Cannot set Oneplus callback"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 961
    return v8

    .line 973
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 974
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyOneplusCallback() - Fail to set Oneplus callback"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 975
    return v8
.end method

.method private applyParameters()Z
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters(Z)Z

    move-result v0

    return v0
.end method

.method private applyParameters(Z)Z
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 989
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_2

    .line 992
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsApplyingParameters:Z

    if-eqz v1, :cond_1

    .line 994
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SetParametersRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 995
    iput-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsApplyingParameters:Z

    .line 997
    :cond_1
    return v4

    .line 1001
    :cond_2
    if-eqz p1, :cond_5

    .line 1004
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsApplyingParameters:Z

    if-eqz v1, :cond_3

    .line 1006
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SetParametersRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 1007
    iput-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsApplyingParameters:Z

    .line 1015
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :cond_4
    :goto_0
    return v4

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "applyParameters() - Error when set parameters"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1020
    return v3

    .line 1026
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsApplyingParameters:Z

    if-nez v1, :cond_4

    .line 1028
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SetParametersRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1029
    iput-boolean v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsApplyingParameters:Z

    goto :goto_0
.end method

.method private applyPictureSize(Landroid/util/Size;)Z
    .locals 3
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1044
    const/4 v0, 0x1

    return v0

    .line 1046
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private applyPreviewFpsRange(Landroid/util/Range;)Z
    .locals 5
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
    .line 1119
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_2

    .line 1123
    if-nez p1, :cond_0

    .line 1125
    :try_start_0
    iget-boolean v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v2, :cond_1

    .line 1126
    iget-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    .line 1130
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->mappingToDriverFpsRange(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    .line 1131
    .local v0, "driverFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1132
    const/4 v2, 0x1

    return v2

    .line 1128
    .end local v0    # "driverFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    iget-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1135
    :catch_0
    move-exception v1

    .line 1136
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "applyPreviewFpsRange() - Error when set preview FPS range"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1139
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private applyPreviewSize(Landroid/util/Size;)Z
    .locals 3
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1149
    const/4 v0, 0x1

    return v0

    .line 1151
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private applyProcessCallback(Z)Z
    .locals 10
    .param p1, "isProcessCallbackEnabled"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1054
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 1056
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyProcessCallback() - Camera is released"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    return v8

    .line 1061
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ProcessCallback:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 1065
    :try_start_0
    const-string/jumbo v4, "android.hardware.Camera$ProcessCallback"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1066
    .local v1, "processCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    new-instance v6, Lcom/oneplus/camera/LegacyCameraImpl$13;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/LegacyCameraImpl$13;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ProcessCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    .end local v1    # "processCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "applyProcessCallback() - Set process callback"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const-string/jumbo v4, "android.hardware.Camera$ProcessCallback"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1091
    .restart local v1    # "processCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setProcessCallback"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1092
    .local v2, "setProcessCallbackMethod":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ProcessCallback:Ljava/lang/Object;

    :cond_2
    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1099
    return v9

    .line 1080
    .end local v1    # "processCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "setProcessCallbackMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyProcessCallback() - Cannot set process callback"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1082
    return v8

    .line 1095
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1096
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyProcessCallback() - Fail to set process callback"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1097
    return v8
.end method

.method private applyRecordingMode(Z)Z
    .locals 1
    .param p1, "isRecordingMode"    # Z

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1110
    const/4 v0, 0x1

    return v0

    .line 1112
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private applySceneMode(I)Z
    .locals 5
    .param p1, "sceneMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 1158
    const/4 v1, 0x0

    .line 1159
    .local v1, "success":Z
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_3

    .line 1162
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1163
    return v3

    .line 1166
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsBokehEnabled:Z

    if-eqz v2, :cond_1

    .line 1167
    return v3

    .line 1170
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->mappingToLegacyScene(I)Ljava/lang/String;

    move-result-object v0

    .line 1171
    .local v0, "legacySceneMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AvailableLegacySceneModes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1173
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "applySceneMode() - Unsupported scene : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const/4 v2, 0x0

    return v2

    .line 1176
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1177
    const/4 v1, 0x1

    .line 1179
    .end local v0    # "legacySceneMode":Ljava/lang/String;
    :cond_3
    return v1
.end method

.method private applyServiceMode()Z
    .locals 3

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyServiceMode()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "is-service-mode"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const/4 v0, 0x1

    return v0

    .line 1192
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private applyStandaloneFaceBeautyEnabled(Z)Z
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1199
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_1

    .line 1201
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "is-face-beauty-enabled"

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1202
    return v1

    .line 1204
    :cond_1
    return v0
.end method

.method private applyThumbnailSize()Z
    .locals 6

    .prologue
    const/16 v4, 0x64

    const/4 v5, 0x1

    .line 1211
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_1

    .line 1213
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v1

    .line 1214
    .local v1, "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->getOptimalThumbnailSize(Ljava/util/List;II)Landroid/util/Size;

    move-result-object v0

    .line 1215
    .local v0, "thumbSize":Landroid/util/Size;
    if-eqz v0, :cond_0

    .line 1216
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "applyThumbnailSize() - Thumbnail image size : "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1222
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 1223
    return v5

    .line 1219
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3, v4, v4, v5}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v0

    .line 1220
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "applyThumbnailSize() - Cannot find thumbnail image size with same aspect ratio, use "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1225
    .end local v0    # "thumbSize":Landroid/util/Size;
    .end local v1    # "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private applyTimeLapseMode(Z)Z
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1232
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_1

    .line 1234
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "time_lapse_mode"

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1235
    return v1

    .line 1237
    :cond_1
    return v0
.end method

.method private applyVideoSize(Landroid/util/Size;)Z
    .locals 4
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "video-size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const/4 v0, 0x1

    return v0

    .line 1249
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private applyWatermarkBoundsMap(Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1256
    .local p1, "boundsMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Landroid/graphics/Rect;>;"
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v6, :cond_5

    .line 1261
    const/4 v1, 0x0

    .line 1262
    .local v1, "boundsStr":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v1    # "boundsStr":Ljava/lang/String;
    .local v4, "size$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 1264
    .local v3, "size":Landroid/util/Size;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1265
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1266
    .local v5, "sizeBoundsStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1267
    move-object v1, v5

    .local v1, "boundsStr":Ljava/lang/String;
    goto :goto_0

    .line 1270
    .end local v1    # "boundsStr":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1271
    .restart local v1    # "boundsStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1274
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "boundsStr":Ljava/lang/String;
    .end local v3    # "size":Landroid/util/Size;
    .end local v5    # "sizeBoundsStr":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "watermark-bounds-map"

    if-eqz v1, :cond_2

    move-object v6, v1

    :goto_1
    invoke-virtual {v7, v8, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-boolean v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsBokehEnabled:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1278
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :goto_2
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "watermark-bounds"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v7, v8, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const/4 v6, 0x1

    return v6

    .line 1274
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_2
    const-string/jumbo v6, ""

    goto :goto_1

    .line 1277
    :cond_3
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehPictureSize:Landroid/util/Size;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    goto :goto_2

    .line 1278
    :cond_4
    const-string/jumbo v6, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1282
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "size$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 1283
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "applyWatermarkBounds() - Error to apply watermark bounds"

    invoke-static {v6, v7, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1286
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_5
    const/4 v6, 0x0

    return v6
.end method

.method private applyWatermarkFilePathsMap(Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1293
    .local p1, "filePathsMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v6, :cond_5

    .line 1298
    const/4 v2, 0x0

    .line 1299
    .local v2, "filePathsStr":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v2    # "filePathsStr":Ljava/lang/String;
    .local v4, "size$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 1301
    .local v3, "size":Landroid/util/Size;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1302
    .local v1, "filePath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1303
    .local v5, "sizeFilePathStr":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1304
    move-object v2, v5

    .local v2, "filePathsStr":Ljava/lang/String;
    goto :goto_0

    .line 1307
    .end local v2    # "filePathsStr":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1308
    .restart local v2    # "filePathsStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1311
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "filePathsStr":Ljava/lang/String;
    .end local v3    # "size":Landroid/util/Size;
    .end local v5    # "sizeFilePathStr":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "watermark-file-paths-map"

    if-eqz v2, :cond_2

    move-object v6, v2

    :goto_1
    invoke-virtual {v7, v8, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    iget-boolean v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsBokehEnabled:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1315
    .restart local v1    # "filePath":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v7, "watermark-file-path"

    if-eqz v1, :cond_4

    .end local v1    # "filePath":Ljava/lang/String;
    :goto_3
    invoke-virtual {v6, v7, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const/4 v6, 0x1

    return v6

    .line 1311
    :cond_2
    const-string/jumbo v6, ""

    goto :goto_1

    .line 1314
    :cond_3
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehPictureSize:Landroid/util/Size;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "filePath":Ljava/lang/String;
    goto :goto_2

    .line 1315
    :cond_4
    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1319
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v4    # "size$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "applyWatermarkFilePaths() - Error to apply watermark file paths"

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1323
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    const/4 v6, 0x0

    return v6
.end method

.method private applyZoom(F)Z
    .locals 5
    .param p1, "digitalZoom"    # F

    .prologue
    .line 1330
    const/4 v0, 0x0

    .line 1331
    .local v0, "success":Z
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 1333
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->mappingToDriverZoom(Ljava/lang/Float;)I

    move-result v1

    .line 1334
    .local v1, "zoom":I
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1336
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1337
    const/4 v0, 0x1

    .line 1338
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "applyZoom() - Zoom: "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1351
    .end local v1    # "zoom":I
    :cond_0
    :goto_0
    return v0

    .line 1342
    .restart local v1    # "zoom":I
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 1344
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopSmoothZoom()V

    .line 1345
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 1346
    const/4 v0, 0x1

    .line 1347
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "applyZoom() - Smooth zoom: "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private calculateJpegOrientation()I
    .locals 3

    .prologue
    .line 1410
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v0

    .line 1411
    .local v0, "deviceOrientation":I
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v1, v2, :cond_0

    .line 1412
    neg-int v0, v0

    .line 1413
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private captureInternal()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1537
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v5, v6, :cond_0

    .line 1539
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "captureInternal() - Capture state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    return v10

    .line 1542
    :cond_0
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v5, v6, :cond_1

    .line 1544
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "captureInternal() - Preview state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    return v10

    .line 1549
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TakenTime:J

    .line 1552
    new-instance v1, Ljava/io/File;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const-string/jumbo v6, "Camera"

    aput-object v6, v5, v11

    invoke-static {v5}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1553
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1555
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1556
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IMG_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget-wide v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TakenTime:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1557
    .local v3, "name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1558
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x1

    .line 1559
    .local v4, "suffix":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1561
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IMG_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget-wide v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TakenTime:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "%02d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1562
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1563
    .restart local v2    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1565
    :cond_3
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "captureInternal() - File path : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v6, "image-file-path"

    invoke-virtual {v5, v6, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "suffix":I
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->prepareCaptureParameters()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1573
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "captureInternal() - Error when preparing capture parameters"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    return v10

    .line 1578
    :cond_5
    invoke-direct {p0, v11}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters(Z)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1579
    return v10

    .line 1583
    :cond_6
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1669
    :cond_7
    :goto_1
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v6, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1672
    return v11

    .line 1587
    :sswitch_0
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "captureInternal() - Take picture"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    iget-boolean v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsProcessCallbackSupported:Z

    if-nez v5, :cond_8

    iget v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-eq v5, v11, :cond_c

    .line 1591
    :cond_8
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_LONG_PROCESSING_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1610
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->isAutoHdrNeeded()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1625
    :cond_9
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "captureInternal() - clear raw callback"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    invoke-direct {p0, v10}, Lcom/oneplus/camera/LegacyCameraImpl;->applyOneplusCallback(Z)Z

    .line 1630
    :goto_3
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v5, v6, :cond_b

    .line 1631
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    sget-object v6, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    if-eq v5, v6, :cond_a

    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    sget-object v6, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    if-ne v5, v6, :cond_b

    .line 1632
    :cond_a
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1630
    if-eqz v5, :cond_b

    .line 1633
    iget-boolean v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v5, :cond_e

    .line 1641
    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->takePicture()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1643
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "captureInternal() - Take picture failed"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_SCREEN_FLASH_NEEDED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1645
    return v10

    .line 1596
    :cond_c
    iget v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    sparse-switch v5, :sswitch_data_1

    .line 1603
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_LONG_PROCESSING_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 1600
    :sswitch_1
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_LONG_PROCESSING_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 1610
    :cond_d
    iget v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ne v5, v11, :cond_9

    .line 1612
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "captureInternal() - Set raw callback"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyDngImageCallbackBuffer()Z

    .line 1618
    invoke-direct {p0, v11}, Lcom/oneplus/camera/LegacyCameraImpl;->applyOneplusCallback(Z)Z

    .line 1621
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_3

    .line 1634
    :cond_e
    iget v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ne v5, v11, :cond_b

    .line 1636
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "captureInternal() - Enable screeen flash"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_SCREEN_FLASH_NEEDED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_4

    .line 1651
    :sswitch_2
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v5, v6}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1653
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1655
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "captureInternal() - Set preview size to picture size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for preview capturing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    iput-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSizeBackup:Landroid/util/Size;

    .line 1657
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1661
    :cond_f
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "captureInternal() - Invalid preview size and picture size"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    return v10

    .line 1583
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x100 -> :sswitch_0
    .end sparse-switch

    .line 1596
    :sswitch_data_1
    .sparse-switch
        0xb -> :sswitch_1
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method private checkAWBModes()V
    .locals 7

    .prologue
    .line 1734
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v5, :cond_2

    .line 1738
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1739
    .local v0, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v4

    .line 1740
    .local v4, "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_6

    .line 1742
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1743
    .local v1, "awbStr":Ljava/lang/String;
    const-string/jumbo v5, "auto"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1744
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1740
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1745
    :cond_1
    const-string/jumbo v5, "cloudy-daylight"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1746
    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1758
    .end local v0    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "awbStr":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 1759
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkAWBModes() - Error when get awb modes"

    invoke-static {v5, v6, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1732
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    return-void

    .line 1747
    .restart local v0    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "awbStr":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    const-string/jumbo v5, "daylight"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1748
    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1749
    :cond_4
    const-string/jumbo v5, "fluorescent"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1750
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1751
    :cond_5
    const-string/jumbo v5, "incandescent"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1752
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1754
    .end local v1    # "awbStr":Ljava/lang/String;
    :cond_6
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1755
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkAWBModes() - AWB modes: "

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private checkAlternativePictureSizes()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1680
    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 1681
    .local v3, "cameraParameters":Landroid/hardware/Camera$Parameters;
    if-eqz v3, :cond_5

    .line 1686
    :try_start_0
    const-string/jumbo v8, "alternative-picture-sizes"

    invoke-virtual {v3, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1687
    .local v1, "alternativePictureSizesStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 1689
    :cond_0
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "checkAlternativePictureSizes() - Reset alternative picture sizes"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v7, :cond_1

    .line 1691
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "alternative-picture-sizes"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    :cond_1
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    .line 1695
    .local v6, "oldValue":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    .line 1698
    sget-object v7, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ALTERNATIVE_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    invoke-virtual {p0, v7, v6, v8}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1699
    return-void

    .line 1703
    .end local v6    # "oldValue":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1704
    .local v5, "newValue":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const-string/jumbo v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1705
    .local v2, "alternativePictureSizesStrArr":[Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v8, v2

    if-lez v8, :cond_3

    .line 1707
    array-length v8, v2

    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v0, v2, v7

    .line 1708
    .local v0, "alternativePictureSizeStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1707
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1710
    .end local v0    # "alternativePictureSizeStr":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "checkAlternativePictureSizes() - Alternative picture sizes : "

    invoke-static {v7, v8, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1713
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v7, :cond_4

    .line 1714
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "alternative-picture-sizes"

    invoke-virtual {v7, v8, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    :cond_4
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    .line 1718
    .restart local v6    # "oldValue":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    .line 1721
    sget-object v7, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ALTERNATIVE_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    invoke-virtual {p0, v7, v6, v8}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    .end local v1    # "alternativePictureSizesStr":Ljava/lang/String;
    .end local v2    # "alternativePictureSizesStrArr":[Ljava/lang/String;
    .end local v5    # "newValue":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v6    # "oldValue":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_5
    :goto_1
    return-void

    .line 1724
    :catch_0
    move-exception v4

    .line 1725
    .local v4, "e":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "checkAlternativePictureSizes() - Error when get alternative picture sizes"

    invoke-static {v7, v8, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private checkBokehPictureSize()V
    .locals 6

    .prologue
    const/16 v5, 0xcc0

    const/16 v4, 0x990

    .line 1768
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 1777
    :try_start_0
    new-instance v1, Landroid/util/Size;

    const/16 v2, 0xcc0

    const/16 v3, 0x990

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehPictureSize:Landroid/util/Size;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1766
    :cond_0
    :goto_0
    return-void

    .line 1780
    :catch_0
    move-exception v0

    .line 1781
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "checkBokehPictureSize() - Error to get bokeh picture size, use 3264x2448"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1782
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v5, v4}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehPictureSize:Landroid/util/Size;

    goto :goto_0
.end method

.method private checkDefaultPreviewFPSRange()V
    .locals 11

    .prologue
    const/16 v10, 0x1e

    const/4 v9, 0x0

    .line 1791
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v6, :cond_4

    .line 1793
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    if-nez v6, :cond_0

    .line 1797
    const/4 v6, 0x2

    :try_start_0
    new-array v5, v6, [I

    .line 1798
    .local v5, "range":[I
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v5}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 1799
    new-instance v6, Landroid/util/Range;

    const/4 v7, 0x0

    aget v7, v5, v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v5, v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    .line 1800
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkDefaultPreviewFPSRange() - Default photo preview FPS range: "

    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    invoke-static {v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1807
    .end local v5    # "range":[I
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-nez v6, :cond_4

    .line 1809
    sget-object v6, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1810
    .local v3, "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1812
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    .line 1813
    .local v4, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v10, :cond_2

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v10, :cond_2

    .line 1815
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v2, v6, -0x14

    .line 1816
    .local v2, "lowerBoundDiff":I
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x14

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v2, v6, :cond_2

    .line 1817
    :cond_1
    iput-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    .line 1810
    .end local v2    # "lowerBoundDiff":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1803
    .end local v1    # "i":I
    .end local v3    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1804
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkDefaultPreviewFPSRange() - Error when get photo preview FPS range"

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1820
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "i":I
    .restart local v3    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_3
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-eqz v6, :cond_5

    .line 1821
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkDefaultPreviewFPSRange() - Default video FPS range : "

    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    invoke-static {v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1789
    .end local v1    # "i":I
    .end local v3    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_4
    :goto_2
    return-void

    .line 1824
    .restart local v1    # "i":I
    .restart local v3    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 1826
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Range;

    iput-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    .line 1827
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkDefaultPreviewFPSRange() - No suitable FPS range for video, use range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1830
    :cond_6
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkDefaultPreviewFPSRange() - No suitable FPS range for video"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private checkFaceBeautyValues()V
    .locals 10

    .prologue
    .line 1840
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v7, :cond_6

    .line 1845
    :try_start_0
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "face-beauty-values"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1846
    .local v6, "faceBeautyValuesStr":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1847
    :cond_0
    return-void

    .line 1848
    :cond_1
    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1849
    .local v5, "faceBeautyValues":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1850
    .local v3, "faceBeautyIntValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    array-length v8, v5

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v4, v5, v7

    .line 1851
    .local v4, "faceBeautyValue":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1850
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1852
    .end local v4    # "faceBeautyValue":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1853
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "checkFaceBeautyValues() - Update new face beauty list: "

    invoke-static {v7, v8, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1856
    :cond_3
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "face-beauty-current-value"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1857
    .local v2, "faceBeautyDefaultValueStr":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1858
    :cond_4
    return-void

    .line 1859
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1860
    .local v1, "faceBeautyDefaultValue":I
    sget-object v7, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1861
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "checkFaceBeautyValues() - Update new face beauty default value: "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1838
    .end local v1    # "faceBeautyDefaultValue":I
    .end local v2    # "faceBeautyDefaultValueStr":Ljava/lang/String;
    .end local v3    # "faceBeautyIntValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "faceBeautyValues":[Ljava/lang/String;
    .end local v6    # "faceBeautyValuesStr":Ljava/lang/String;
    :cond_6
    :goto_1
    return-void

    .line 1864
    :catch_0
    move-exception v0

    .line 1865
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "checkFaceBeautyValues() - Error when get face beauty values"

    invoke-static {v7, v8, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private checkManualExposureRange()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 1874
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_0

    .line 1878
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v5, "min-exposure-time"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1879
    .local v3, "minExp":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v5, "max-exposure-time"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1880
    .local v2, "maxExp":Ljava/lang/String;
    new-instance v1, Landroid/util/Range;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1881
    .local v1, "expRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1882
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkManualExposureRange() - Exposure range: "

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1872
    .end local v1    # "expRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v2    # "maxExp":Ljava/lang/String;
    .end local v3    # "minExp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1885
    :catch_0
    move-exception v0

    .line 1886
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkManualExposureRange() - Error when get manual exposure range, use [125000,1000000000]"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1887
    new-instance v1, Landroid/util/Range;

    const-wide/32 v4, 0x1e848

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v6, 0x3b9aca00

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1888
    .restart local v1    # "expRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkManualFocusRange()V
    .locals 6

    .prologue
    .line 1897
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_0

    .line 1901
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v5, "min-focus-position"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1902
    .local v3, "minFocus":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v5, "max-focus-position"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1903
    .local v2, "maxFocus":Ljava/lang/String;
    new-instance v1, Landroid/util/Range;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1904
    .local v1, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1905
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkManualFocusRange() - Focus range: "

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1895
    .end local v1    # "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .end local v2    # "maxFocus":Ljava/lang/String;
    .end local v3    # "minFocus":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1908
    :catch_0
    move-exception v0

    .line 1909
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkManualFocusRange() - Error when get manual focus range, use [0,499]"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1910
    new-instance v1, Landroid/util/Range;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v5, 0x43f98000    # 499.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1911
    .restart local v1    # "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkManualISORange()V
    .locals 13

    .prologue
    .line 1920
    iget-object v9, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v9, :cond_3

    .line 1924
    :try_start_0
    iget-object v9, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v10, "iso-values"

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1925
    .local v6, "isoValuesStr":Ljava/lang/String;
    const-string/jumbo v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1926
    .local v5, "isoValuesArr":[Ljava/lang/String;
    const v8, 0x7fffffff

    .line 1927
    .local v8, "minISO":I
    const/high16 v7, -0x80000000

    .line 1928
    .local v7, "maxISO":I
    array-length v9, v5

    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1930
    aget-object v2, v5, v1

    .line 1931
    .local v2, "isoRawValue":Ljava/lang/String;
    const-string/jumbo v9, "^ISO[\\d]+$"

    invoke-virtual {v2, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1933
    const/4 v9, 0x3

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1934
    .local v4, "isoValueStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1935
    .local v3, "isoValue":I
    if-ge v3, v8, :cond_0

    .line 1936
    move v8, v3

    .line 1937
    :cond_0
    if-le v3, v7, :cond_1

    .line 1938
    move v7, v3

    .line 1928
    .end local v3    # "isoValue":I
    .end local v4    # "isoValueStr":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1941
    .end local v2    # "isoRawValue":Ljava/lang/String;
    :cond_2
    sget-object v9, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v10, Landroid/util/Range;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v9, v10}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1942
    iget-object v9, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "checkManualISORange() - ISO range: "

    sget-object v11, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v11}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    .end local v1    # "i":I
    .end local v5    # "isoValuesArr":[Ljava/lang/String;
    .end local v6    # "isoValuesStr":Ljava/lang/String;
    .end local v7    # "maxISO":I
    .end local v8    # "minISO":I
    :cond_3
    :goto_1
    return-void

    .line 1945
    :catch_0
    move-exception v0

    .line 1946
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v9, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "checkManualISORange() - Error when get manual ISO range, use [100,1600]"

    invoke-static {v9, v10, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1947
    sget-object v9, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v10, Landroid/util/Range;

    const/16 v11, 0x64

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x640

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v9, v10}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private checkPreviewFPSRanges()V
    .locals 8

    .prologue
    .line 1956
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v5, :cond_0

    .line 1960
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 1961
    .local v3, "fpsRangesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1962
    .local v4, "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "fpsRange$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1963
    .local v1, "fpsRange":[I
    new-instance v5, Landroid/util/Range;

    const/4 v6, 0x0

    aget v6, v1, v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v1, v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1968
    .end local v1    # "fpsRange":[I
    .end local v2    # "fpsRange$iterator":Ljava/util/Iterator;
    .end local v3    # "fpsRangesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v4    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :catch_0
    move-exception v0

    .line 1969
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkPreviewFPSRanges() - Error when get photo preview FPS range"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1954
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void

    .line 1964
    .restart local v2    # "fpsRange$iterator":Ljava/util/Iterator;
    .restart local v3    # "fpsRangesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v4    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_1
    :try_start_1
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1965
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkPreviewFPSRanges() - FPS ranges: "

    invoke-static {v5, v6, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private checkSceneModes()V
    .locals 2

    .prologue
    .line 1979
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->getIntListChars(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1976
    return-void
.end method

.method private checkZoomRange()V
    .locals 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1987
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 1989
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1991
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRatios:Ljava/util/List;

    .line 1992
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    .line 1993
    .local v1, "maxZoom":I
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRatios:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1994
    .local v0, "maxDigitalZoomm":Ljava/lang/Float;
    new-instance v2, Landroid/util/Range;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    .line 1995
    new-instance v2, Landroid/util/Range;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ZoomRange:Landroid/util/Range;

    .line 1996
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1997
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "checkZoomRange() - Digital zoom range: "

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    const-string/jumbo v5, ", Zoom range: "

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ZoomRange:Landroid/util/Range;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1985
    .end local v0    # "maxDigitalZoomm":Ljava/lang/Float;
    .end local v1    # "maxZoom":I
    :cond_0
    :goto_1
    return-void

    .line 1993
    .restart local v1    # "maxZoom":I
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRatios:Ljava/util/List;

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRatios:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    goto :goto_0

    .line 2000
    .end local v1    # "maxZoom":I
    :cond_2
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRatios:Ljava/util/List;

    goto :goto_1
.end method

.method private closeInternal()V
    .locals 4

    .prologue
    .line 2071
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "closeInternal() - Release camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' [Start]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 2073
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "closeInternal() - Release camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' [End]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2081
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2067
    :goto_0
    return-void

    .line 2076
    :catch_0
    move-exception v0

    .line 2077
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "closeInternal() - Cannot release camera, "

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2081
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 2080
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 2081
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2080
    throw v1
.end method

.method private createCameraArea(Lcom/oneplus/camera/Camera$MeteringRect;)Landroid/hardware/Camera$Area;
    .locals 8
    .param p1, "rect"    # Lcom/oneplus/camera/Camera$MeteringRect;

    .prologue
    const/4 v2, 0x0

    const/high16 v7, 0x44fa0000    # 2000.0f

    const/high16 v6, 0x447a0000    # 1000.0f

    .line 2089
    if-nez p1, :cond_0

    .line 2090
    return-object v2

    .line 2091
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 2092
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getLeft()F

    move-result v2

    mul-float/2addr v2, v7

    sub-float/2addr v2, v6

    float-to-int v2, v2

    .line 2093
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getTop()F

    move-result v3

    mul-float/2addr v3, v7

    sub-float/2addr v3, v6

    float-to-int v3, v3

    .line 2094
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getRight()F

    move-result v4

    mul-float/2addr v4, v7

    sub-float/2addr v4, v6

    float-to-int v4, v4

    .line 2095
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getBottom()F

    move-result v5

    mul-float/2addr v5, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 2091
    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2097
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getWeight()F

    move-result v1

    .line 2098
    .local v1, "weight":F
    new-instance v3, Landroid/hardware/Camera$Area;

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-direct {v3, v0, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    return-object v3

    :cond_1
    mul-float v2, v1, v6

    float-to-int v2, v2

    goto :goto_0
.end method

.method private createCameraAreas(Ljava/util/List;ILjava/util/List;)V
    .locals 4
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2105
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    .local p3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-eqz p3, :cond_1

    .line 2107
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 2108
    if-eqz p1, :cond_1

    .line 2110
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2112
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->createCameraArea(Lcom/oneplus/camera/Camera$MeteringRect;)Landroid/hardware/Camera$Area;

    move-result-object v0

    .line 2113
    .local v0, "area":Landroid/hardware/Camera$Area;
    if-eqz v0, :cond_0

    .line 2114
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2110
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2103
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private dumpParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2126
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2127
    .local v2, "keyValuePairs":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 2128
    .local v1, "keyValuePair":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "dumpParameters() - "

    invoke-static {v5, v6, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2131
    .end local v1    # "keyValuePair":Ljava/lang/String;
    .end local v2    # "keyValuePairs":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2132
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "dumpParameters() - Error when dump parameters"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2122
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private getCameraCharacteristic()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method private getFocalLength()F
    .locals 4

    .prologue
    .line 2260
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1

    .line 2262
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v0

    .line 2263
    .local v0, "focalLength":F
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2264
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateFocalLength() - Focal length: "

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2265
    :cond_0
    return v0

    .line 2268
    .end local v0    # "focalLength":F
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateFocalLength() - Cannot get focal length"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method private getIntListChars(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2276
    .local p1, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2277
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "scene$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2279
    .local v1, "scene":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->mappingFromLegacyScene(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 2280
    .local v3, "sceneId":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2283
    .end local v1    # "scene":Ljava/lang/String;
    .end local v3    # "sceneId":Ljava/lang/Integer;
    :cond_1
    return-object v0
.end method

.method private getOptimalThumbnailSize(Ljava/util/List;II)Landroid/util/Size;
    .locals 16
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/util/Size;"
        }
    .end annotation

    .prologue
    .line 2139
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    .line 2140
    .local v2, "ASPECT_TOLERANCE":D
    if-nez p1, :cond_0

    .line 2141
    const/4 v9, 0x0

    return-object v9

    .line 2143
    :cond_0
    const/4 v4, 0x0

    .line 2144
    .local v4, "optimalSize":Landroid/util/Size;
    move/from16 v0, p2

    int-to-double v12, v0

    move/from16 v0, p3

    int-to-double v14, v0

    div-double v10, v12, v14

    .line 2146
    .local v10, "targetRatio":D
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v4    # "optimalSize":Landroid/util/Size;
    .local v8, "size$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 2148
    .local v5, "size":Landroid/hardware/Camera$Size;
    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-double v12, v9

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-double v14, v9

    div-double v6, v12, v14

    .line 2149
    .local v6, "ratio":D
    sub-double v12, v6, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v9, v12, v14

    if-gtz v9, :cond_1

    .line 2151
    if-eqz v4, :cond_2

    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v12

    if-le v9, v12, :cond_1

    .line 2152
    :cond_2
    new-instance v4, Landroid/util/Size;

    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    iget v12, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v9, v12}, Landroid/util/Size;-><init>(II)V

    .local v4, "optimalSize":Landroid/util/Size;
    goto :goto_0

    .line 2154
    .end local v4    # "optimalSize":Landroid/util/Size;
    .end local v5    # "size":Landroid/hardware/Camera$Size;
    .end local v6    # "ratio":D
    :cond_3
    return-object v4
.end method

.method private getPreviewFormat()I
    .locals 3

    .prologue
    .line 2290
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 2292
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    .line 2293
    .local v0, "previewFormat":I
    return v0

    .line 2297
    .end local v0    # "previewFormat":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getPreviewFormat() - Fail to get preview format, use NV21"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    const/16 v1, 0x11

    return v1
.end method

.method private isAutoHdrNeeded()Z
    .locals 5

    .prologue
    const/16 v4, 0x2711

    const/4 v1, 0x0

    .line 2331
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAutoHdrNeeded() - m_SceneMode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , m_AutoHdr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAutoHdrNeeded() - result is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    if-ne v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    if-ne v0, v4, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 2332
    goto :goto_0
.end method

.method private isRawCaptureNeeded()Z
    .locals 6

    .prologue
    const/16 v5, 0x2711

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2340
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRawCaptureNeeded() - get(PROP_IS_RAW_CAPTURE_SUPPORTED) is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", m_IsRecordingMode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , m_IsRawCaptureEnabled is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRawCaptureEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , m_SceneMode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRawCaptureNeeded() -  result is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v0, :cond_5

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1

    .line 2341
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRawCaptureEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    if-ne v0, v5, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 2342
    :cond_5
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRawCaptureEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    if-ne v0, v5, :cond_1

    goto :goto_1
.end method

.method private mappingFromLegacyScene(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "legacyScene"    # Ljava/lang/String;

    .prologue
    .line 2349
    const/4 v0, 0x0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    const-string/jumbo v1, "action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2353
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2406
    .end local v0    # "outSceneMode":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v0

    .line 2350
    .restart local v0    # "outSceneMode":Ljava/lang/Integer;
    :cond_1
    const-string/jumbo v1, "portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2356
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_2
    const-string/jumbo v1, "landscape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2359
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_3
    const-string/jumbo v1, "night"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2362
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_4
    const-string/jumbo v1, "night-portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2365
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_5
    const-string/jumbo v1, "theatre"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2368
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_6
    const-string/jumbo v1, "beach"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2371
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_7
    const-string/jumbo v1, "snow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2374
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_8
    const-string/jumbo v1, "sunset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2377
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_9
    const-string/jumbo v1, "steadyphoto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2380
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_a
    const-string/jumbo v1, "fireworks"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2383
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_b
    const-string/jumbo v1, "sports"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2386
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_c
    const-string/jumbo v1, "party"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2389
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_d
    const-string/jumbo v1, "candlelight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2392
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_e
    const-string/jumbo v1, "barcode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2395
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_f
    const-string/jumbo v1, "hdr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2398
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 2350
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_10
    const-string/jumbo v1, "hdr-auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2401
    const/16 v1, 0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto/16 :goto_0
.end method

.method private mappingToDriverFpsRange(Landroid/util/Range;)Landroid/util/Range;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2414
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRangeMap:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 2415
    .local v3, "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    .line 2416
    return-object v3

    .line 2419
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    mul-int/lit16 v12, v0, 0x3e8

    .line 2420
    .local v12, "requestFpsLower":I
    invoke-virtual/range {p1 .. p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    mul-int/lit16 v13, v0, 0x3e8

    .line 2421
    .local v13, "requestFpsUpper":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 2423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v14

    .line 2424
    .local v14, "supportedFpsRagnes":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "supportedFpsRange$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    .line 2426
    .local v15, "supportedFpsRange":[I
    const/4 v2, 0x0

    .line 2427
    .local v2, "chooseThis":Z
    const/16 v17, 0x0

    aget v17, v15, v17

    sub-int v17, v17, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-double v8, v0

    .line 2428
    .local v8, "diffLower":D
    const/16 v17, 0x1

    aget v17, v15, v17

    sub-int v17, v17, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-double v10, v0

    .line 2429
    .local v10, "diffUpper":D
    if-nez v3, :cond_3

    .line 2431
    const-wide v18, 0x408f400000000000L    # 1000.0

    cmpg-double v17, v8, v18

    if-gez v17, :cond_2

    const-wide v18, 0x408f400000000000L    # 1000.0

    cmpg-double v17, v10, v18

    if-gez v17, :cond_2

    .line 2432
    const/4 v2, 0x1

    .line 2441
    :cond_2
    :goto_1
    if-eqz v2, :cond_1

    .line 2442
    new-instance v3, Landroid/util/Range;

    .end local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v17, 0x0

    aget v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x1

    aget v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .restart local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 2434
    :cond_3
    const-wide v18, 0x408f400000000000L    # 1000.0

    cmpg-double v17, v8, v18

    if-gez v17, :cond_2

    const-wide v18, 0x408f400000000000L    # 1000.0

    cmpg-double v17, v10, v18

    if-gez v17, :cond_2

    .line 2436
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v17, v17, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-double v4, v0

    .line 2437
    .local v4, "diffChoosedLower":D
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v17, v17, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-double v6, v0

    .line 2438
    .local v6, "diffChoosedUpper":D
    cmpg-double v17, v8, v4

    if-gez v17, :cond_2

    cmpg-double v17, v10, v6

    if-gez v17, :cond_2

    .line 2439
    const/4 v2, 0x1

    goto :goto_1

    .line 2444
    .end local v2    # "chooseThis":Z
    .end local v4    # "diffChoosedLower":D
    .end local v6    # "diffChoosedUpper":D
    .end local v8    # "diffLower":D
    .end local v10    # "diffUpper":D
    .end local v15    # "supportedFpsRange":[I
    :cond_4
    if-eqz v3, :cond_5

    .line 2445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "mappingToDriverFPSRange() - Choosed FPS range: "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2451
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRangeMap:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2458
    .end local v14    # "supportedFpsRagnes":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v16    # "supportedFpsRange$iterator":Ljava/util/Iterator;
    :goto_3
    return-object v3

    .line 2448
    .restart local v14    # "supportedFpsRagnes":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v16    # "supportedFpsRange$iterator":Ljava/util/Iterator;
    :cond_5
    new-instance v3, Landroid/util/Range;

    .end local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2449
    .restart local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mappingToDriverFPSRange() - Cannot find suitable FPS range: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2455
    .end local v14    # "supportedFpsRagnes":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v16    # "supportedFpsRange$iterator":Ljava/util/Iterator;
    :cond_6
    new-instance v3, Landroid/util/Range;

    .end local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2456
    .restart local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mappingToDriverFPSRange() - No parameters, use original FPS range: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private mappingToDriverZoom(Ljava/lang/Float;)I
    .locals 5
    .param p1, "digitalZoom"    # Ljava/lang/Float;

    .prologue
    const/4 v3, 0x0

    .line 2465
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ZoomRange:Landroid/util/Range;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 2466
    :cond_0
    return v3

    .line 2467
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2468
    .local v0, "digitalZoomRatio":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRatios:Ljava/util/List;

    invoke-static {v2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 2469
    .local v1, "valueIndex":I
    if-gez v1, :cond_2

    .line 2471
    not-int v1, v1

    .line 2472
    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRatios:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 2474
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRatios:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRatios:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v3, v2, :cond_2

    .line 2475
    add-int/lit8 v1, v1, -0x1

    .line 2478
    :cond_2
    return v1
.end method

.method private mappingToLegacyScene(I)Ljava/lang/String;
    .locals 1
    .param p1, "inSceneMode"    # I

    .prologue
    .line 2485
    const-string/jumbo v0, "auto"

    .line 2486
    .local v0, "outSceneMode":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 2546
    :goto_0
    :sswitch_0
    return-object v0

    .line 2493
    :sswitch_1
    const-string/jumbo v0, "action"

    goto :goto_0

    .line 2496
    :sswitch_2
    const-string/jumbo v0, "portrait"

    goto :goto_0

    .line 2499
    :sswitch_3
    const-string/jumbo v0, "landscape"

    goto :goto_0

    .line 2502
    :sswitch_4
    const-string/jumbo v0, "night"

    goto :goto_0

    .line 2505
    :sswitch_5
    const-string/jumbo v0, "night-portrait"

    goto :goto_0

    .line 2508
    :sswitch_6
    const-string/jumbo v0, "theatre"

    goto :goto_0

    .line 2511
    :sswitch_7
    const-string/jumbo v0, "beach"

    goto :goto_0

    .line 2514
    :sswitch_8
    const-string/jumbo v0, "snow"

    goto :goto_0

    .line 2517
    :sswitch_9
    const-string/jumbo v0, "sunset"

    goto :goto_0

    .line 2520
    :sswitch_a
    const-string/jumbo v0, "steadyphoto"

    goto :goto_0

    .line 2523
    :sswitch_b
    const-string/jumbo v0, "fireworks"

    goto :goto_0

    .line 2526
    :sswitch_c
    const-string/jumbo v0, "sports"

    goto :goto_0

    .line 2529
    :sswitch_d
    const-string/jumbo v0, "party"

    goto :goto_0

    .line 2532
    :sswitch_e
    const-string/jumbo v0, "candlelight"

    goto :goto_0

    .line 2535
    :sswitch_f
    const-string/jumbo v0, "barcode"

    goto :goto_0

    .line 2538
    :sswitch_10
    const-string/jumbo v0, "hdr"

    goto :goto_0

    .line 2541
    :sswitch_11
    const-string/jumbo v0, "hdr-auto"

    goto :goto_0

    .line 2486
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_0
        0x12 -> :sswitch_10
        0x2711 -> :sswitch_11
    .end sparse-switch
.end method

.method private onActiveColorTemperatureChanged(I)V
    .locals 2
    .param p1, "colorTemperature"    # I

    .prologue
    .line 2553
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ACTIVE_COLOR_TEMPERATURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2551
    return-void
.end method

.method private onActiveExposureCompensationChanged(F)V
    .locals 2
    .param p1, "ev"    # F

    .prologue
    .line 2560
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ACTIVE_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2558
    return-void
.end method

.method private onActiveExposureTimeChanged(J)V
    .locals 3
    .param p1, "exposureTimeNanos"    # J

    .prologue
    .line 2567
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ACTIVE_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2565
    return-void
.end method

.method private onActiveISOChanged(I)V
    .locals 2
    .param p1, "iso"    # I

    .prologue
    .line 2574
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ACTIVE_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2572
    return-void
.end method

.method private onAeStateChanged(I)V
    .locals 5
    .param p1, "aeState"    # I

    .prologue
    .line 2582
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    .line 2583
    .local v1, "oldState":Lcom/oneplus/camera/AutoExposureState;
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    .line 2584
    .local v0, "newState":Lcom/oneplus/camera/AutoExposureState;
    packed-switch p1, :pswitch_data_0

    .line 2596
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAeStateChanged() - Unknown AE state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    :goto_0
    if-eq v0, v1, :cond_0

    .line 2603
    iput-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    .line 2604
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAeStateChanged() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v2, v1, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2579
    :cond_0
    return-void

    .line 2587
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/AutoExposureState;->CONVERGED:Lcom/oneplus/camera/AutoExposureState;

    goto :goto_0

    .line 2590
    :pswitch_1
    sget-object v0, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    goto :goto_0

    .line 2593
    :pswitch_2
    sget-object v0, Lcom/oneplus/camera/AutoExposureState;->SEARCHING:Lcom/oneplus/camera/AutoExposureState;

    goto :goto_0

    .line 2584
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onAutoFocus(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 2615
    .local v0, "oldState":Lcom/oneplus/camera/FocusState;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-FocusStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2622
    return-void

    .line 2626
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2629
    if-eqz p1, :cond_0

    sget-object v1, Lcom/oneplus/camera/FocusState;->FOCUSED:Lcom/oneplus/camera/FocusState;

    :goto_0
    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 2630
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2611
    return-void

    .line 2629
    :cond_0
    sget-object v1, Lcom/oneplus/camera/FocusState;->UNFOCUSED:Lcom/oneplus/camera/FocusState;

    goto :goto_0

    .line 2615
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onAutoFocusMoving(Z)V
    .locals 5
    .param p1, "start"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2637
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 2638
    .local v0, "oldState":Lcom/oneplus/camera/FocusState;
    if-eqz p1, :cond_1

    .line 2640
    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-eq v0, v1, :cond_0

    .line 2643
    const/16 v1, 0x2710

    const-wide/16 v2, 0x1388

    invoke-static {p0, v1, v4, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 2646
    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 2647
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2635
    :cond_0
    :goto_0
    return-void

    .line 2650
    :cond_1
    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-ne v0, v1, :cond_0

    .line 2651
    invoke-direct {p0, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->onAutoFocus(Z)V

    goto :goto_0
.end method

.method private onAutoFocusTimeout()V
    .locals 2

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAutoFocusTimeout()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2659
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->onAutoFocus(Z)V

    .line 2656
    return-void
.end method

.method private onAutoHdrStateChanged(I)V
    .locals 5
    .param p1, "hdrState"    # I

    .prologue
    .line 2666
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    .line 2667
    .local v1, "oldState":Z
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    .line 2668
    .local v0, "newState":Z
    packed-switch p1, :pswitch_data_0

    .line 2677
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAutoHdrStateChanged() - Unknown AutoHdr state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2682
    .end local v0    # "newState":Z
    :goto_0
    if-eq v0, v1, :cond_0

    .line 2684
    iput-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    .line 2685
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAutoHdrStateChanged() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AUTO_HDR_STATUS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2663
    :goto_1
    return-void

    .line 2671
    .restart local v0    # "newState":Z
    :pswitch_0
    const/4 v0, 0x0

    .line 2672
    .local v0, "newState":Z
    goto :goto_0

    .line 2674
    .local v0, "newState":Z
    :pswitch_1
    const/4 v0, 0x1

    .line 2675
    .local v0, "newState":Z
    goto :goto_0

    .line 2689
    .end local v0    # "newState":Z
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAutoHdrStateChanged() - Same state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2668
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onBokehDebugInfoChanged([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 2697
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_BOKEH_DEBUG_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2698
    return-void

    .line 2701
    :cond_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x4

    const/4 v5, 0x4

    invoke-static {p1, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2702
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 2703
    .local v3, "intBuffer":Ljava/nio/IntBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 2704
    .local v2, "floatBuffer":Ljava/nio/FloatBuffer;
    new-instance v1, Lcom/oneplus/camera/BokehDebugInfo;

    invoke-direct {v1}, Lcom/oneplus/camera/BokehDebugInfo;-><init>()V

    .line 2705
    .local v1, "debugInfo":Lcom/oneplus/camera/BokehDebugInfo;
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    iput v4, v1, Lcom/oneplus/camera/BokehDebugInfo;->cameraRole:I

    .line 2706
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    iput v4, v1, Lcom/oneplus/camera/BokehDebugInfo;->startX:I

    .line 2707
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    iput v4, v1, Lcom/oneplus/camera/BokehDebugInfo;->startY:I

    .line 2708
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    iput v4, v1, Lcom/oneplus/camera/BokehDebugInfo;->width:I

    .line 2709
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    iput v4, v1, Lcom/oneplus/camera/BokehDebugInfo;->height:I

    .line 2710
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2711
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    iput v4, v1, Lcom/oneplus/camera/BokehDebugInfo;->exposureTime:F

    .line 2712
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    iput v4, v1, Lcom/oneplus/camera/BokehDebugInfo;->realGain:F

    .line 2713
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 2714
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    iput v4, v1, Lcom/oneplus/camera/BokehDebugInfo;->aecStatus:I

    .line 2715
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2716
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    iput v4, v1, Lcom/oneplus/camera/BokehDebugInfo;->lensShiftUm:F

    .line 2717
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 2718
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    iput v4, v1, Lcom/oneplus/camera/BokehDebugInfo;->afStatus:I

    .line 2721
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehDebugInfoTable:Ljava/util/Map;

    iget v5, v1, Lcom/oneplus/camera/BokehDebugInfo;->cameraRole:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2722
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_BOKEH_DEBUG_INFO_UPDATED:Lcom/oneplus/base/EventKey;

    sget-object v5, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2694
    return-void
.end method

.method private onBokehStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 2730
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsBokehEnabled:Z

    if-nez v0, :cond_0

    .line 2731
    return-void

    .line 2734
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2759
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBokehStateChanged() - Unknown state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2760
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/BokehState;->ERROR:Lcom/oneplus/camera/BokehState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2727
    :goto_0
    return-void

    .line 2737
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/BokehState;->NO_DEPTH_EFFECT:Lcom/oneplus/camera/BokehState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2741
    :pswitch_1
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/BokehState;->NORMAL:Lcom/oneplus/camera/BokehState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2744
    :pswitch_2
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/BokehState;->DISTANCE_TOO_CLOSE:Lcom/oneplus/camera/BokehState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2747
    :pswitch_3
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/BokehState;->DISTANCE_TOO_FAR:Lcom/oneplus/camera/BokehState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2750
    :pswitch_4
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/BokehState;->LOW_LIGHT:Lcom/oneplus/camera/BokehState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2753
    :pswitch_5
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/BokehState;->NO_SUBJECT:Lcom/oneplus/camera/BokehState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2756
    :pswitch_6
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/BokehState;->CAMERA_COVERED:Lcom/oneplus/camera/BokehState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2734
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method private onBufferedPreviewCallbackReceived([BLandroid/hardware/Camera;)V
    .locals 13
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/16 v4, 0x11

    const/4 v3, -0x1

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 2770
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v5

    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v2}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_0

    .line 2775
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBufferedPreviewCallbackReceived() - Invalid preview state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    return-void

    .line 2780
    :pswitch_0
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2783
    if-eqz p1, :cond_0

    array-length v2, p1

    iget v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewCallbackByteLength:I

    if-eq v2, v5, :cond_1

    .line 2785
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onBufferedPreviewCallbackReceived() - Invalid preview data"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    return-void

    .line 2790
    :cond_1
    const/4 v6, 0x0

    .line 2791
    .local v6, "planes":[Lcom/oneplus/camera/media/ImagePlane;
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 2792
    .local v10, "pictureFormat":I
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->hasHandlers(Lcom/oneplus/base/EventKey;)Z

    move-result v0

    .line 2793
    .local v0, "hasHandlers":Z
    const/16 v2, 0x100

    if-eq v10, v2, :cond_6

    const/4 v11, 0x1

    .line 2794
    .local v11, "yuvCapture":Z
    :goto_0
    if-nez v0, :cond_2

    if-eqz v11, :cond_7

    .line 2795
    :cond_2
    new-array v6, v7, [Lcom/oneplus/camera/media/ImagePlane;

    .end local v6    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    new-instance v2, Lcom/oneplus/camera/media/ImagePlane;

    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-direct {v2, p1, v7, v5}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    const/4 v5, 0x0

    aput-object v2, v6, v5

    .line 2800
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v6, :cond_3

    .line 2801
    sget-object v12, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v2, v1

    move-object v7, v1

    invoke-static/range {v1 .. v9}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v2

    invoke-virtual {p0, v12, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2804
    :cond_3
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v2, v5, :cond_4

    .line 2806
    packed-switch v10, :pswitch_data_1

    .line 2815
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-eqz v1, :cond_5

    .line 2816
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 2767
    :cond_5
    return-void

    .line 2793
    .end local v11    # "yuvCapture":Z
    .restart local v6    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_6
    const/4 v11, 0x0

    .restart local v11    # "yuvCapture":Z
    goto :goto_0

    .line 2797
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->removePreviewCallbacks()V

    goto :goto_1

    .line 2809
    .end local v6    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    :pswitch_1
    sget-object v12, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v2, v1

    move-object v7, v1

    invoke-static/range {v1 .. v9}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v1

    invoke-virtual {p0, v12, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_2

    .line 2770
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 2806
    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
    .end packed-switch
.end method

.method private onCameraStateChanged([B)V
    .locals 11
    .param p1, "data"    # [B

    .prologue
    const/4 v10, 0x4

    const/4 v5, 0x0

    .line 2824
    if-eqz p1, :cond_0

    array-length v6, p1

    if-ge v6, v10, :cond_2

    .line 2826
    :cond_0
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCameraStateChanged() - Incorrect data size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_1

    array-length v5, p1

    :cond_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    return-void

    .line 2831
    :cond_2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2832
    .local v1, "dataBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 2833
    .local v3, "intDataBuffer":Ljava/nio/IntBuffer;
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    .line 2834
    .local v0, "callbackType":I
    packed-switch v0, :pswitch_data_0

    .line 2928
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCameraStateChanged() - Undefined type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    :cond_3
    :goto_0
    :pswitch_0
    return-void

    .line 2838
    :pswitch_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 2839
    .local v2, "floatDataBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_4

    .line 2840
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->get()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->onActiveExposureCompensationChanged(F)V

    goto :goto_0

    .line 2842
    :cond_4
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCameraStateChanged() - Incorrect data size for CAMERA_STATE_CB_TYPE_ACTIVE_EXPOSURE_COMP : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2848
    .end local v2    # "floatDataBuffer":Ljava/nio/FloatBuffer;
    :pswitch_2
    iget-wide v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureTime:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 2850
    array-length v5, p1

    add-int/lit8 v5, v5, -0x4

    invoke-static {p1, v10, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v4

    .line 2851
    .local v4, "longDataBuffer":Ljava/nio/LongBuffer;
    invoke-virtual {v4}, Ljava/nio/LongBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_5

    .line 2852
    invoke-virtual {v4}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/oneplus/camera/LegacyCameraImpl;->onActiveExposureTimeChanged(J)V

    goto :goto_0

    .line 2854
    :cond_5
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCameraStateChanged() - Incorrect data size for CAMERA_STATE_CB_TYPE_ACTIVE_EXPOSURE_TIME : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2865
    .end local v4    # "longDataBuffer":Ljava/nio/LongBuffer;
    :pswitch_3
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_6

    .line 2866
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->onActiveISOChanged(I)V

    goto :goto_0

    .line 2868
    :cond_6
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCameraStateChanged() - Incorrect data size for CAMERA_STATE_CB_TYPE_ACTIVE_ISO : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2874
    :pswitch_4
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_7

    .line 2875
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->onActiveColorTemperatureChanged(I)V

    goto/16 :goto_0

    .line 2877
    :cond_7
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCameraStateChanged() - Incorrect data size for CAMERA_STATE_CB_TYPE_ACTIVE_WB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2883
    :pswitch_5
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_8

    .line 2884
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->onAeStateChanged(I)V

    goto/16 :goto_0

    .line 2886
    :cond_8
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCameraStateChanged() - Incorrect data size for CAMERA_STATE_CB_TYPE_AE_STATE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2892
    :pswitch_6
    array-length v5, p1

    const/16 v6, 0x2c

    if-lt v5, v6, :cond_9

    .line 2893
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->onBokehDebugInfoChanged([B)V

    goto/16 :goto_0

    .line 2895
    :cond_9
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCameraStateChanged() - Incorrect data size for CAMERA_STATE_CB_TYPE_BOKEH_DEBUG_INFO : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2901
    :pswitch_7
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_a

    .line 2902
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->onBokehStateChanged(I)V

    goto/16 :goto_0

    .line 2904
    :cond_a
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCameraStateChanged() - Incorrect data size for CAMERA_STATE_CB_TYPE_BOKEH_STATE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2910
    :pswitch_8
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_b

    .line 2911
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->onAutoHdrStateChanged(I)V

    goto/16 :goto_0

    .line 2913
    :cond_b
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCameraStateChanged() - Incorrect data size for CAMERA_STATE_CB_TYPE_HDR_STATE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2919
    :pswitch_9
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_c

    .line 2920
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->onMotionStateChanged(I)V

    goto/16 :goto_0

    .line 2922
    :cond_c
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCameraStateChanged() - Incorrect data size for CAMERA_STATE_CB_TYPE_MOTION_STATE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2834
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private onCaptureCompleted()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2938
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureCompleted()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    iput v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    .line 2942
    iput v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PostviewReceivedCount:I

    .line 2943
    iput v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedCount:I

    .line 2944
    iput v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    .line 2945
    iput v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    .line 2946
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2947
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2948
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2949
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_SCREEN_FLASH_NEEDED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2950
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2951
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2953
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-eq v0, v2, :cond_0

    .line 2955
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->applySceneMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2956
    invoke-direct {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters(Z)Z

    .line 2960
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSizeBackup:Landroid/util/Size;

    if-eqz v0, :cond_1

    .line 2962
    invoke-virtual {p0, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->stopPreview(I)V

    .line 2963
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSizeBackup:Landroid/util/Size;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2964
    iput-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSizeBackup:Landroid/util/Size;

    .line 2968
    :cond_1
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsZslManualCaptureSupported:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 2969
    :cond_2
    :goto_0
    invoke-virtual {p0, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->stopPreview(I)V

    .line 2972
    :cond_3
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/oneplus/base/Device;->isOnePlus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2936
    :cond_4
    :goto_1
    return-void

    .line 2968
    :cond_5
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ISOValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 2973
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->startPreviewDirectlyInternal()Z

    goto :goto_1
.end method

.method private onDngImageReceived([BLandroid/hardware/Camera;)V
    .locals 11
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2980
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2987
    sget-object v6, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    .line 2988
    .local v1, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2994
    :pswitch_0
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onDngImageReceived() - Capture state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2995
    return-void

    .line 2982
    .end local v1    # "captureState":Lcom/oneplus/camera/OperationState;
    :cond_0
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDngImageReceived() - Do not need raw capture"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    return-void

    .line 2997
    .restart local v1    # "captureState":Lcom/oneplus/camera/OperationState;
    :pswitch_1
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v6, :cond_1

    .line 2999
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDngImageReceived() - No capture handle"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3000
    return-void

    .line 3004
    :cond_1
    if-nez p1, :cond_2

    .line 3006
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDngImageReceived() - data is null"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    invoke-direct {p0, v8, v8, v8}, Lcom/oneplus/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 3008
    return-void

    .line 3012
    :cond_2
    new-array v5, v10, [Lcom/oneplus/camera/media/ImagePlane;

    new-instance v6, Lcom/oneplus/camera/media/ImagePlane;

    array-length v7, p1

    invoke-direct {v6, p1, v10, v7}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    aput-object v6, v5, v9

    .line 3015
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    iget v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    .line 3016
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3017
    .local v3, "logBuffer":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "{ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3018
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_4

    .line 3020
    if-lez v2, :cond_3

    .line 3021
    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3022
    :cond_3
    aget-object v6, v5, v2

    invoke-virtual {v6}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3018
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3024
    :cond_4
    const-string/jumbo v6, " }"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3025
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDngImageReceived() - Index : "

    iget v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, ", picture data size : "

    invoke-static {v6, v7, v8, v9, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3028
    iget v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v6, :cond_5

    iget v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    iget v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-le v6, v7, :cond_5

    .line 3030
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDngImageReceived() - Unexpected picture, drop"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    return-void

    .line 3035
    :cond_5
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 3036
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    if-nez v0, :cond_6

    .line 3038
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3039
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDngImageReceived() - Received picture before capture completed"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    return-void

    .line 3044
    :cond_6
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/oneplus/camera/media/ImagePlane;

    .line 3045
    .local v4, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v4, :cond_7

    .line 3047
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDngImageReceived() - Wait for picture"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3049
    return-void

    .line 3053
    :cond_7
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 3056
    .restart local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    invoke-direct {p0, v0, v4, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 2978
    return-void

    .line 2988
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDngMetadataReceived(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/Camera;)V
    .locals 6
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p3, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 3062
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3069
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 3070
    .local v0, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3076
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDngMetadataReceived() - Capture state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3077
    return-void

    .line 3064
    .end local v0    # "captureState":Lcom/oneplus/camera/OperationState;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDngMetadataReceived() - Do not need raw capture"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3065
    return-void

    .line 3079
    .restart local v0    # "captureState":Lcom/oneplus/camera/OperationState;
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v3, :cond_1

    .line 3081
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDngMetadataReceived() - No capture handle"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    return-void

    .line 3086
    :cond_1
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 3089
    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedCount:I

    .line 3092
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDngMetadataReceived() - Index : "

    iget v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3095
    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedCount:I

    iget v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-le v3, v4, :cond_2

    .line 3097
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDngMetadataReceived() - Unexpected call-back, drop"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    return-void

    .line 3103
    :cond_2
    const/4 v2, 0x0

    .line 3105
    .local v2, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/camera/media/ImagePlane;

    .line 3106
    .local v1, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v1, :cond_3

    .line 3108
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDngMetadataReceived() - Wait for picture"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3109
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v3, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3110
    return-void

    .line 3114
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v2, [Lcom/oneplus/camera/media/ImagePlane;

    .line 3115
    .local v2, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v2, :cond_4

    .line 3117
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDngMetadataReceived() - Wait for raw picture"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3118
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v3, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3119
    return-void

    .line 3123
    :cond_4
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v1, [Lcom/oneplus/camera/media/ImagePlane;

    .line 3126
    .restart local v1    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    invoke-direct {p0, p2, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 3060
    return-void

    .line 3070
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 3133
    packed-switch p1, :pswitch_data_0

    .line 3143
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError - errorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_ERROR:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CameraEventArgs;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/CameraEventArgs;-><init>(Lcom/oneplus/camera/Camera;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3131
    :pswitch_0
    return-void

    .line 3133
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onFaceDetection([Landroid/hardware/Camera$Face;)V
    .locals 7
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    const/16 v6, 0x2711

    .line 3154
    iget-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    if-nez v3, :cond_0

    .line 3155
    return-void

    .line 3158
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceListIndex:I

    aget-object v0, v3, v4

    .line 3159
    .local v0, "currentFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    if-eqz p1, :cond_1

    array-length v3, p1

    if-nez v3, :cond_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3161
    invoke-static {p0, v6}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 3162
    return-void

    .line 3166
    :cond_2
    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceListIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceListIndex:I

    .line 3167
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceListIndex:I

    aget-object v2, v3, v4

    .line 3168
    .local v2, "newFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    if-eqz p1, :cond_4

    array-length v3, p1

    if-lez v3, :cond_4

    .line 3170
    array-length v3, p1

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 3171
    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/oneplus/camera/Camera$Face;->obtain(Landroid/hardware/Camera$Face;)Lcom/oneplus/camera/Camera$Face;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3170
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3174
    :cond_3
    const/4 v3, 0x1

    const-wide/16 v4, 0x96

    invoke-static {p0, v6, v3, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 3180
    .end local v1    # "i":I
    :goto_1
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3183
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_5

    .line 3184
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Camera$Face;

    invoke-virtual {v3}, Lcom/oneplus/camera/Camera$Face;->recycle()V

    .line 3183
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 3177
    .end local v1    # "i":I
    :cond_4
    invoke-static {p0, v6}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    goto :goto_1

    .line 3185
    .restart local v1    # "i":I
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3151
    return-void
.end method

.method private onJpegTimeout()V
    .locals 2

    .prologue
    .line 3191
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onJpegTimeout()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3189
    return-void
.end method

.method private onMotionStateChanged(I)V
    .locals 3
    .param p1, "motionState"    # I

    .prologue
    .line 3197
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMotionStateChanged() - State: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3198
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_MOTION_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3195
    return-void
.end method

.method private onMotionVectorReceived([[Landroid/graphics/PointF;Landroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [[Landroid/graphics/PointF;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 3205
    if-nez p1, :cond_0

    .line 3206
    return-void

    .line 3207
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMotionVectorReceived() - Data[0][0]: "

    aget-object v2, p1, v3

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3208
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_MOTION_VECTOR_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/PointF;

    invoke-static {v0}, Lcom/oneplus/camera/MotionVectorEventArgs;->obtain([[Landroid/graphics/PointF;)Lcom/oneplus/camera/MotionVectorEventArgs;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3203
    return-void
.end method

.method private onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V
    .locals 23
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p2, "picturePlanes"    # [Lcom/oneplus/camera/media/ImagePlane;
    .param p3, "rawPicturePlanes"    # [Lcom/oneplus/camera/media/ImagePlane;

    .prologue
    .line 3216
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    .line 3217
    .local v2, "captureState":Lcom/oneplus/camera/OperationState;
    sget-object v22, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->FRAME_COUNT_REACHED:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    .line 3220
    .local v22, "takingPictureResult":Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_6

    .line 3221
    :cond_0
    sget-object v22, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_JPEG:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    .line 3232
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/oneplus/util/AutomaticId;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3233
    .local v4, "pictureId":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-LegacyCameraImpl$TakingPictureResultSwitchesValues()[I

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 3243
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TakenTime:J

    .line 3244
    .local v10, "takenTime":J
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3245
    .local v6, "pictureFormat":I
    const/4 v12, 0x0

    .line 3246
    .local v12, "flags":I
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_BOKEH_ENABLED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3248
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->WAIT_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    move-object/from16 v0, v22

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/oneplus/camera/BokehState;->NORMAL:Lcom/oneplus/camera/BokehState;

    if-eq v3, v5, :cond_c

    .line 3249
    :cond_2
    sget v3, Lcom/oneplus/camera/LegacyCameraImpl;->FLAG_ORIGINAL_PICTURE:I

    or-int/lit8 v12, v3, 0x0

    .line 3253
    :cond_3
    :goto_1
    sget-object v13, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    const/4 v9, 0x0

    move-object/from16 v8, p2

    invoke-static/range {v3 .. v12}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;JI)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3255
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3257
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/Size;

    .line 3258
    .local v17, "sensorSize":Landroid/util/Size;
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v15, v5, -0x1

    const/16 v16, 0x20

    move-object v14, v4

    move-object/from16 v18, p3

    move-object/from16 v19, p1

    move-wide/from16 v20, v10

    invoke-static/range {v13 .. v21}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3265
    .end local v6    # "pictureFormat":I
    .end local v10    # "takenTime":J
    .end local v12    # "flags":I
    .end local v17    # "sensorSize":Landroid/util/Size;
    :cond_4
    :goto_2
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-LegacyCameraImpl$TakingPictureResultSwitchesValues()[I

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_1

    .line 3213
    :cond_5
    :goto_3
    return-void

    .line 3222
    .end local v4    # "pictureId":Ljava/lang/String;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_8

    .line 3223
    :cond_7
    sget-object v22, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_RAW:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    goto/16 :goto_0

    .line 3224
    :cond_8
    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v2, v3, :cond_9

    .line 3225
    sget-object v22, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->CAPTURE_STOPPING:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    goto/16 :goto_0

    .line 3226
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ltz v3, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ge v3, v5, :cond_b

    .line 3227
    :cond_a
    sget-object v22, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->TAKE_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    goto/16 :goto_0

    .line 3228
    :cond_b
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_BOKEH_ENABLED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehJpegNum:I

    if-ge v3, v5, :cond_1

    .line 3229
    sget-object v22, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->WAIT_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    goto/16 :goto_0

    .line 3238
    .restart local v4    # "pictureId":Ljava/lang/String;
    :pswitch_0
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v4, v7}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;I)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_2

    .line 3251
    .restart local v6    # "pictureFormat":I
    .restart local v10    # "takenTime":J
    .restart local v12    # "flags":I
    :cond_c
    sget v3, Lcom/oneplus/camera/LegacyCameraImpl;->FLAG_BOKEH_PICTURE:I

    or-int/lit8 v12, v3, 0x0

    goto/16 :goto_1

    .line 3268
    .end local v6    # "pictureFormat":I
    .end local v10    # "takenTime":J
    .end local v12    # "flags":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPictureReceived() - Frame count reached, start completing capture"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3269
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V

    goto/16 :goto_3

    .line 3273
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TakePictureFailedOnShutter:Z

    if-eqz v3, :cond_5

    .line 3275
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TakePictureFailedOnShutter:Z

    .line 3276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPictureReceived() - Take next picture"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3277
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/LegacyCameraImpl;->takePicture()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPictureReceived() - Cannot take next picture, stop"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3280
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V

    goto/16 :goto_3

    .line 3287
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPictureReceived() - Capture failed, start completing capture"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3288
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V

    goto/16 :goto_3

    .line 3292
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPictureReceived() - Already stop capture, start completing capture"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3293
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/LegacyCameraImpl;->onCaptureCompleted()V

    goto/16 :goto_3

    .line 3297
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPictureReceived() - Wait next original picture"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3233
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3265
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private onPictureReceived([BLandroid/hardware/Camera;)V
    .locals 11
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 3308
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v6, :cond_0

    .line 3310
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - No capture handle"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3311
    return-void

    .line 3313
    :cond_0
    sget-object v6, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    .line 3314
    .local v1, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 3320
    :pswitch_0
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onPictureReceived() - Capture state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3321
    return-void

    .line 3325
    :pswitch_1
    if-nez p1, :cond_1

    .line 3327
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - data is null"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3328
    invoke-direct {p0, v8, v8, v8}, Lcom/oneplus/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 3329
    return-void

    .line 3333
    :cond_1
    const/16 v6, 0x2712

    invoke-static {p0, v6}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 3336
    new-array v4, v10, [Lcom/oneplus/camera/media/ImagePlane;

    new-instance v6, Lcom/oneplus/camera/media/ImagePlane;

    array-length v7, p1

    invoke-direct {v6, p1, v10, v7}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    aput-object v6, v4, v9

    .line 3339
    .local v4, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    iget v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    .line 3340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3341
    .local v3, "logBuffer":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "{ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3342
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_3

    .line 3344
    if-lez v2, :cond_2

    .line 3345
    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3346
    :cond_2
    aget-object v6, v4, v2

    invoke-virtual {v6}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3342
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3348
    :cond_3
    const-string/jumbo v6, " }"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3349
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Index : "

    iget v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, ", picture data size : "

    invoke-static {v6, v7, v8, v9, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3352
    sget-object v6, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_BOKEH_ORIGINAL_PICTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    iget v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    iget v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-le v6, v7, :cond_4

    .line 3354
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Unexpected picture, drop"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3355
    return-void

    .line 3357
    :cond_4
    sget-object v6, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_BOKEH_ORIGINAL_PICTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    const/4 v7, 0x2

    if-le v6, v7, :cond_5

    .line 3359
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Unexpected bokeh original picture, drop"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    return-void

    .line 3364
    :cond_5
    const/4 v0, 0x0

    .line 3365
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    const/4 v5, 0x0

    .line 3368
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    iget v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    const/16 v7, 0x2711

    if-ne v6, v7, :cond_6

    .line 3370
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - auto HDR scene"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3371
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v5, [Lcom/oneplus/camera/media/ImagePlane;

    .line 3372
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 3373
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    invoke-direct {p0, v0, v4, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 3374
    return-void

    .line 3377
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3379
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 3380
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    if-nez v0, :cond_7

    .line 3382
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3383
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Received picture before capture completed"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3384
    return-void

    .line 3387
    :cond_7
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v5, [Lcom/oneplus/camera/media/ImagePlane;

    .line 3388
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v5, :cond_8

    .line 3390
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Wait for raw picture"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3391
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3392
    return-void

    .line 3395
    :cond_8
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 3399
    .end local v5    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_9
    invoke-direct {p0, v0, v4, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 3305
    return-void

    .line 3314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onPostviewReceived([BLandroid/hardware/Camera;)V
    .locals 33
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 3407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3453
    :cond_0
    :goto_0
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/oneplus/camera/media/ImagePlane;

    move-object/from16 v18, v0

    new-instance v2, Lcom/oneplus/camera/media/ImagePlane;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v4, v3}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    const/4 v3, 0x0

    aput-object v2, v18, v3

    .line 3456
    .local v18, "planes":[Lcom/oneplus/camera/media/ImagePlane;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPostviewReceived() - Index : "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PostviewReceivedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3457
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PostviewReceivedCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PostviewReceivedCount:I

    .line 3460
    if-eqz v18, :cond_1

    .line 3461
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PostviewReceivedCount:I

    add-int/lit8 v15, v3, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const/4 v14, 0x0

    const/16 v16, 0x11

    const/16 v19, 0x0

    invoke-static/range {v13 .. v21}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3404
    :cond_1
    return-void

    .line 3410
    .end local v18    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsBokehEnabled:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    move-object/from16 v26, v0

    .line 3411
    .local v26, "pictureSize":Landroid/util/Size;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    move-object/from16 v0, v26

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/graphics/Rect;

    .line 3412
    .local v30, "watermarkBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    move-object/from16 v0, v26

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 3413
    .local v31, "watermarkFilePath":Ljava/lang/String;
    if-eqz v30, :cond_3

    if-nez v31, :cond_5

    .line 3414
    :cond_3
    return-void

    .line 3410
    .end local v26    # "pictureSize":Landroid/util/Size;
    .end local v30    # "watermarkBounds":Landroid/graphics/Rect;
    .end local v31    # "watermarkFilePath":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehPictureSize:Landroid/util/Size;

    move-object/from16 v26, v0

    .restart local v26    # "pictureSize":Landroid/util/Size;
    goto :goto_1

    .line 3417
    .restart local v30    # "watermarkBounds":Landroid/graphics/Rect;
    .restart local v31    # "watermarkFilePath":Ljava/lang/String;
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    .line 3418
    .local v28, "time":J
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v25

    .line 3419
    .local v25, "nv21BufferSize":I
    move/from16 v0, v25

    new-array v5, v0, [B

    .line 3420
    .local v5, "nv21Buffer":[B
    move/from16 v0, v25

    new-array v6, v0, [B

    .line 3421
    .local v6, "nv21AlphaBuffer":[B
    const/4 v3, 0x0

    const/16 v23, 0x0

    .local v23, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3423
    .end local v23    # "is":Ljava/io/InputStream;
    .local v24, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v5, v2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 3424
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v6, v2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3431
    if-eqz v24, :cond_6

    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 3427
    :catch_0
    move-exception v22

    .local v22, "e":Ljava/lang/Throwable;
    move-object/from16 v23, v24

    .line 3428
    .end local v24    # "is":Ljava/io/InputStream;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPostviewReceived() - Error to read watermark"

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3429
    const/4 v5, 0x0

    .line 3430
    .local v5, "nv21Buffer":[B
    const/4 v6, 0x0

    .line 3434
    .end local v5    # "nv21Buffer":[B
    .end local v6    # "nv21AlphaBuffer":[B
    .end local v22    # "e":Ljava/lang/Throwable;
    :goto_4
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 3437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v26 .. v26}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v27, v2, v3

    .line 3438
    .local v27, "ratio":F
    move-object/from16 v0, v30

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float v2, v2, v27

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v11, v2, 0x2

    .line 3439
    .local v11, "x":I
    move-object/from16 v0, v30

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float v2, v2, v27

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v12, v2, 0x2

    .line 3440
    .local v12, "y":I
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 3441
    .local v7, "srcWidth":I
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 3442
    .local v8, "srcHeight":I
    int-to-float v2, v7

    mul-float v2, v2, v27

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v9, v2, 0x2

    .line 3443
    .local v9, "scaledWidth":I
    int-to-float v2, v8

    mul-float v2, v2, v27

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v10, v2, 0x2

    .line 3446
    .local v10, "scaledHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v12}, Lcom/oneplus/media/ImageUtils;->combineNV21Images([BII[B[BIIIIII)V

    .line 3448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPostviewReceived() - Add watermark spent : "

    const/16 v4, 0xb

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v14, v14, v28

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v4, v14

    const-string/jumbo v13, " ms, preview size : "

    const/4 v14, 0x1

    aput-object v13, v4, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    const/4 v14, 0x2

    aput-object v13, v4, v14

    const-string/jumbo v13, ", watermark size : "

    const/4 v14, 0x3

    aput-object v13, v4, v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x4

    aput-object v13, v4, v14

    const-string/jumbo v13, "x"

    const/4 v14, 0x5

    aput-object v13, v4, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x6

    aput-object v13, v4, v14

    const-string/jumbo v13, ", x : "

    const/4 v14, 0x7

    aput-object v13, v4, v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v4, v14

    const-string/jumbo v13, ", y : "

    const/16 v14, 0x9

    aput-object v13, v4, v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0xa

    aput-object v13, v4, v14

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3431
    .end local v7    # "srcWidth":I
    .end local v8    # "srcHeight":I
    .end local v9    # "scaledWidth":I
    .end local v10    # "scaledHeight":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v27    # "ratio":F
    .local v5, "nv21Buffer":[B
    .restart local v6    # "nv21AlphaBuffer":[B
    .restart local v24    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    goto/16 :goto_2

    :cond_7
    move-object/from16 v23, v24

    .end local v24    # "is":Ljava/io/InputStream;
    .local v23, "is":Ljava/io/InputStream;
    goto/16 :goto_4

    .local v23, "is":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .end local v23    # "is":Ljava/io/InputStream;
    :goto_5
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v3

    move-object/from16 v32, v3

    move-object v3, v2

    move-object/from16 v2, v32

    :goto_6
    if-eqz v23, :cond_8

    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_8
    :goto_7
    if-eqz v3, :cond_a

    :try_start_6
    throw v3

    .line 3427
    :catch_3
    move-exception v22

    .restart local v22    # "e":Ljava/lang/Throwable;
    goto/16 :goto_3

    .line 3431
    .end local v22    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v4

    if-nez v3, :cond_9

    move-object v3, v4

    goto :goto_7

    :cond_9
    if-eq v3, v4, :cond_8

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_a
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v23    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    goto :goto_6

    .end local v23    # "is":Ljava/io/InputStream;
    .restart local v24    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v2

    move-object/from16 v23, v24

    .end local v24    # "is":Ljava/io/InputStream;
    .local v23, "is":Ljava/io/InputStream;
    goto :goto_6

    .end local v23    # "is":Ljava/io/InputStream;
    .restart local v24    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v2

    move-object/from16 v23, v24

    .end local v24    # "is":Ljava/io/InputStream;
    .restart local v23    # "is":Ljava/io/InputStream;
    goto :goto_5
.end method

.method private onProcessReceived()V
    .locals 2

    .prologue
    .line 3468
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onProcessCallbackReceived()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3471
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_LONG_PROCESSING_CAPTURE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3466
    return-void
.end method

.method private onRawReceived([BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 3476
    return-void
.end method

.method private onShutterReceived()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3486
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 3487
    .local v0, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3493
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onShutterReceived() - Capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3494
    return-void

    .line 3496
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v1, :cond_0

    .line 3498
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterReceived() - No capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3499
    return-void

    .line 3503
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterReceived() - Index : "

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3504
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    .line 3507
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_SCREEN_FLASH_NEEDED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3509
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterReceived() - Disable screeen flash"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3510
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_SCREEN_FLASH_NEEDED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3514
    :cond_1
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-le v1, v2, :cond_2

    .line 3516
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterReceived() - Unexpected call-back, drop"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3517
    return-void

    .line 3521
    :cond_2
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v5, v3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;I)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3526
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ge v1, v2, :cond_4

    .line 3528
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterReceived() - Take next picture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    iput-boolean v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TakePictureFailedOnShutter:Z

    .line 3530
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->takePicture()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3532
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterReceived() - Cannot take next picture on shutter"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3533
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TakePictureFailedOnShutter:Z

    .line 3483
    :cond_4
    return-void

    .line 3487
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private openInternal(I)Z
    .locals 6
    .param p1, "flags"    # I

    .prologue
    const/4 v5, 0x0

    .line 3602
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3604
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "openInternal() - Waiting for another camera closing"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3607
    :try_start_0
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 3608
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "openInternal() - Another camera closed"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3620
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openInternal() - Open camera \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' [Start]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3621
    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    .line 3622
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openInternal() - Open camera \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' [End]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3633
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->setupCameraStateCallback()Z

    .line 3636
    const/4 v2, 0x1

    return v2

    .line 3611
    :catch_0
    move-exception v0

    .line 3612
    .local v0, "ex":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "openInternal() - Interrupted while waiting for another camera"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3613
    return v5

    .line 3625
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 3626
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openInternal() - Fail to start opening camera \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3627
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->CAMERA_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3628
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    const/4 v4, -0x4

    invoke-direct {v3, p0, v4}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;-><init>(Lcom/oneplus/camera/Camera;I)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3629
    return v5
.end method

.method private prepareCaptureParameters()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3671
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_0

    .line 3673
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareCaptureParameters() - Camera parameters is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3674
    return v9

    .line 3680
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsBokehEnabled:Z

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehStrength:F

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyBokeh(ZF)Z

    .line 3683
    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-eq v2, v8, :cond_1

    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 3684
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "sports"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3687
    :cond_1
    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ne v2, v8, :cond_3

    .line 3689
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareCaptureParameters() - JPEG quality : "

    iget v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3690
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 3699
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->calculateJpegOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 3702
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 3703
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_2

    .line 3705
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 3706
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 3707
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 3708
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 3712
    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsMirrored:Z

    invoke-direct {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->applyMirrorMode(Z)Z

    .line 3720
    return v8

    .line 3694
    .end local v1    # "location":Landroid/location/Location;
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareCaptureParameters() - JPEG quality for burst : "

    const/16 v4, 0x5a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3695
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3715
    :catch_0
    move-exception v0

    .line 3716
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareCaptureParameters() - Error when preparing parameters"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3717
    return v9
.end method

.method private preparePreviewParameters()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3728
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyPreviewFpsRange(Landroid/util/Range;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3730
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "preparePreviewParameters() - Error when apply preview FPS range"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3731
    return v6

    .line 3735
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyPreviewSize(Landroid/util/Size;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3737
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "preparePreviewParameters() - Error when apply preview size"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3738
    return v6

    .line 3742
    :cond_1
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applySceneMode(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3743
    return v6

    .line 3746
    :cond_2
    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureCompensation:F

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyExposureCompensation(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3747
    return v6

    .line 3750
    :cond_3
    iget-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAeLocked:Z

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAeLock(Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3751
    return v6

    .line 3754
    :cond_4
    iget-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAwbLocked:Z

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAwbLock(Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3755
    return v6

    .line 3758
    :cond_5
    iget-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsBokehEnabled:Z

    iget v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehStrength:F

    invoke-direct {p0, v3, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->applyBokeh(ZF)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3759
    return v6

    .line 3762
    :cond_6
    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 3764
    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceBeautyValue:I

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFaceBeautyValue(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3765
    return v6

    .line 3769
    :cond_7
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3771
    iget-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsStandaloneFaceBeautyEnabled:Z

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyStandaloneFaceBeautyEnabled(Z)Z

    .line 3772
    iget-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsStandaloneFaceBeautyEnabled:Z

    if-eqz v3, :cond_8

    .line 3773
    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceBeautyValue:I

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFaceBeautyValue(I)Z

    .line 3777
    :cond_8
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 3778
    return v6

    .line 3781
    :cond_9
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFocusMode(Lcom/oneplus/camera/FocusMode;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 3782
    return v6

    .line 3785
    :cond_a
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAeRegions(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAfRegions(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3789
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 3790
    .local v1, "pictureSize":Landroid/util/Size;
    iget-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v3, :cond_c

    .line 3792
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 3793
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyVideoSize(Landroid/util/Size;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 3795
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "preparePreviewParameters() - Error when apply video size"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3796
    return v6

    .line 3786
    .end local v1    # "pictureSize":Landroid/util/Size;
    :cond_b
    return v6

    .line 3799
    .restart local v1    # "pictureSize":Landroid/util/Size;
    :cond_c
    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyPictureSize(Landroid/util/Size;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 3801
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "preparePreviewParameters() - Error when apply picture size"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3802
    return v6

    .line 3806
    :cond_d
    iget-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyRecordingMode(Z)Z

    move-result v3

    if-nez v3, :cond_e

    .line 3808
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "preparePreviewParameters() - Error when apply recording mode"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3809
    return v6

    .line 3813
    :cond_e
    iget-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsTimeLapseMode:Z

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyTimeLapseMode(Z)Z

    move-result v3

    if-nez v3, :cond_f

    .line 3815
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "preparePreviewParameters() - Error when apply time-lapse mode"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3816
    return v6

    .line 3820
    :cond_f
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyThumbnailSize()Z

    move-result v3

    if-nez v3, :cond_10

    .line 3822
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "preparePreviewParameters() - Error when apply thumbnail size"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3823
    return v6

    .line 3827
    :cond_10
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyZoom(F)Z

    move-result v3

    if-nez v3, :cond_11

    .line 3829
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "preparePreviewParameters() - Error when apply zoom"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3830
    return v6

    .line 3834
    :cond_11
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CONTROL_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3836
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyManualCapture(Z)Z

    .line 3837
    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AwbMode:I

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAwbMode(I)Z

    .line 3838
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_COLOR_TEMPERATURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3839
    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ColorTemperature:I

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyColorTemperature(I)Z

    .line 3840
    :cond_12
    iget-wide v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureTime:J

    invoke-direct {p0, v4, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->applyExposureTime(J)Z

    .line 3841
    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusValue:F

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFocusPosition(F)Z

    .line 3842
    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ISOValue:I

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyISO(I)Z

    .line 3846
    :cond_13
    iget-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v3, :cond_14

    .line 3848
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_HIGH_VIDEO_FRAME_RATE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3850
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_SPECIAL_VIDEO_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3851
    .local v0, "isSpecialVideoMode":Z
    if-nez v0, :cond_14

    .line 3854
    new-instance v2, Lcom/oneplus/base/Settings;

    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v7, v6}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3855
    .local v2, "settings":Lcom/oneplus/base/Settings;
    if-eqz v2, :cond_14

    const-string/jumbo v3, "VideoFrameRate"

    invoke-virtual {v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3856
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyHighVideoFrameRate()Z

    .line 3862
    .end local v0    # "isSpecialVideoMode":Z
    .end local v2    # "settings":Lcom/oneplus/base/Settings;
    :cond_14
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3864
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyWatermarkBoundsMap(Ljava/util/Map;)Z

    .line 3865
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyWatermarkFilePathsMap(Ljava/util/Map;)Z

    .line 3869
    :cond_15
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_SERVICE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyServiceMode()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3876
    :cond_16
    const/4 v3, 0x1

    return v3

    .line 3871
    :cond_17
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "preparePreviewParameters() - Error when apply service mode"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3872
    return v6
.end method

.method private reconnectCamera()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3883
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 3884
    return v3

    .line 3888
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3895
    const/4 v1, 0x1

    return v1

    .line 3891
    :catch_0
    move-exception v0

    .line 3892
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reconnectCamera() - Error when reconnect"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3893
    return v3
.end method

.method private removePreviewCallbacks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3916
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 3918
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removePreviewCallbacks() - Camera is released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3919
    return-void

    .line 3923
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 3926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsPreviewCallbackAdded:Z

    .line 3913
    return-void
.end method

.method private setAWBModeProp(I)Z
    .locals 5
    .param p1, "awbMode"    # I

    .prologue
    .line 4135
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4136
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4137
    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AwbMode:I

    if-ne v2, p1, :cond_0

    .line 4138
    const/4 v2, 0x1

    return v2

    .line 4139
    :cond_0
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4140
    .local v0, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4142
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

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

    .line 4143
    const/4 v2, 0x0

    return v2

    .line 4146
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setAWBModeProp() - Awb mode : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4149
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AwbMode:I

    .line 4150
    .local v1, "oldAwbMode":I
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AwbMode:I

    .line 4153
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAwbMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4154
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4157
    :cond_2
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private setAeLockProp(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4034
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4035
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4036
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAeLocked:Z

    if-ne v1, p1, :cond_0

    .line 4037
    return v0

    .line 4040
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAeLock(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4041
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4044
    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAeLocked:Z

    .line 4045
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setAeRegionsProp(Ljava/util/List;)Z
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
    .line 4054
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4055
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4056
    if-nez p1, :cond_0

    .line 4057
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4058
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4059
    const/4 v1, 0x0

    return v1

    .line 4062
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    .line 4063
    .local v0, "oldRegions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4064
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    .line 4069
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAeRegions(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4070
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4073
    :cond_2
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 4066
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    goto :goto_0
.end method

.method private setAfRegionsProp(Ljava/util/List;)Z
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
    .line 4082
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4083
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4084
    if-nez p1, :cond_0

    .line 4085
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4086
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4087
    const/4 v1, 0x0

    return v1

    .line 4090
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    .line 4091
    .local v0, "oldRegions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4092
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    .line 4097
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAfRegions(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4098
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4101
    :cond_2
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 4094
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    goto :goto_0
.end method

.method private setAudioSourceParams(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .prologue
    .line 4108
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4106
    return-void
.end method

.method private setAwbLockProp(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4116
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4117
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4118
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAwbLocked:Z

    if-ne v1, p1, :cond_0

    .line 4119
    return v0

    .line 4122
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAwbLock(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4123
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4126
    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAwbLocked:Z

    .line 4127
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setBokehEnabledProp(Z)Z
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4165
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4166
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsBokehEnabled:Z

    if-ne v1, p1, :cond_0

    .line 4167
    return v0

    .line 4170
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsBokehEnabled:Z

    .line 4171
    if-eqz p1, :cond_2

    .line 4172
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/BokehState;->INITIALIZING:Lcom/oneplus/camera/BokehState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4184
    :goto_0
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehStrength:F

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyBokeh(ZF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4185
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4188
    :cond_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_BOKEH_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-eqz p1, :cond_4

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 4175
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehDebugInfoTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4177
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehDebugInfoTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 4178
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_BOKEH_DEBUG_INFO_UPDATED:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 4180
    :cond_3
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/BokehState;->DISABLED:Lcom/oneplus/camera/BokehState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4188
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private setBokehStrengthProp(F)Z
    .locals 4
    .param p1, "strength"    # F

    .prologue
    const/4 v3, 0x0

    .line 4196
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4197
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4198
    :cond_0
    return v3

    .line 4199
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    .line 4200
    const/4 p1, 0x0

    .line 4203
    :cond_2
    :goto_0
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehStrength:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    .line 4204
    return v3

    .line 4201
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 4202
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 4207
    :cond_4
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehStrength:F

    .line 4208
    .local v0, "prevStrength":F
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehStrength:F

    .line 4209
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsBokehEnabled:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsBokehEnabled:Z

    invoke-direct {p0, v1, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyBokeh(ZF)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4210
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4213
    :cond_5
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STRENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setCameraDisplayOrientation()V
    .locals 8

    .prologue
    .line 4220
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v5, :cond_0

    .line 4222
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setCameraDisplayOrientation() - Camera is released"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4223
    return-void

    .line 4225
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4226
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_2

    instance-of v5, v1, Landroid/app/Activity;

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 4228
    check-cast v0, Landroid/app/Activity;

    .line 4229
    .local v0, "activity":Landroid/app/Activity;
    const/4 v2, 0x0

    .line 4230
    .local v2, "degrees":I
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 4246
    :goto_0
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4247
    .local v3, "orientation":I
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v5, v6, :cond_1

    .line 4249
    add-int v5, v3, v2

    rem-int/lit16 v4, v5, 0x168

    .line 4250
    .local v4, "result":I
    rsub-int v5, v4, 0x168

    rem-int/lit16 v4, v5, 0x168

    .line 4254
    :goto_1
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 4218
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "degrees":I
    .end local v3    # "orientation":I
    .end local v4    # "result":I
    :goto_2
    return-void

    .line 4233
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v2    # "degrees":I
    :sswitch_0
    const/4 v2, 0x0

    .line 4234
    goto :goto_0

    .line 4236
    :sswitch_1
    const/16 v2, 0x5a

    .line 4237
    goto :goto_0

    .line 4239
    :sswitch_2
    const/16 v2, 0xb4

    .line 4240
    goto :goto_0

    .line 4242
    :sswitch_3
    const/16 v2, 0x10e

    .line 4243
    goto :goto_0

    .line 4253
    .restart local v3    # "orientation":I
    :cond_1
    sub-int v5, v3, v2

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v4, v5, 0x168

    .restart local v4    # "result":I
    goto :goto_1

    .line 4257
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "degrees":I
    .end local v3    # "orientation":I
    .end local v4    # "result":I
    :cond_2
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setCameraDisplayOrientation() - Invalid context: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4230
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method private setColorTemperature(I)Z
    .locals 4
    .param p1, "colorTemperature"    # I

    .prologue
    .line 4265
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4266
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4267
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ColorTemperature:I

    if-ne v1, p1, :cond_0

    .line 4268
    const/4 v1, 0x1

    return v1

    .line 4270
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setColorTemperature() - Color temperature : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4273
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ColorTemperature:I

    .line 4274
    .local v0, "oldColorTemperature":I
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ColorTemperature:I

    .line 4277
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyColorTemperature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4278
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4281
    :cond_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_COLOR_TEMPERATURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setDigitalZoomProp(F)Z
    .locals 3
    .param p1, "zoom"    # F

    .prologue
    const/4 v2, 0x0

    .line 4288
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4289
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4290
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoom:Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4291
    return v2

    .line 4292
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4294
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoom:Ljava/lang/Float;

    .line 4295
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoom:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyZoom(F)Z

    .line 4296
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4297
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoom:Ljava/lang/Float;

    invoke-super {p0, v0, v1}, Lcom/oneplus/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 4293
    :cond_2
    return v2
.end method

.method private setExposureCompensationProp(F)Z
    .locals 8
    .param p1, "ev"    # F

    .prologue
    .line 4305
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4306
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4309
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 4310
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 4311
    .local v2, "step":F
    div-float v3, p1, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    mul-float p1, v3, v2

    .line 4312
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 4313
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureCompensation:F

    .line 4314
    .local v0, "oldEv":F
    sub-float v3, v0, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    .line 4315
    const/4 v3, 0x0

    return v3

    .line 4318
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyExposureCompensation(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4319
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4322
    :cond_1
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureCompensation:F

    .line 4323
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureCompensation:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private setExposureTimeProp(J)Z
    .locals 9
    .param p1, "exposureTime"    # J

    .prologue
    const-wide/16 v6, -0x1

    .line 4331
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4332
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4333
    iget-wide v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureTime:J

    cmp-long v1, v4, p1

    if-nez v1, :cond_0

    .line 4334
    const/4 v1, 0x1

    return v1

    .line 4335
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 4336
    .local v0, "exposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    cmp-long v1, p1, v6

    if-eqz v1, :cond_1

    .line 4338
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, p1, v4

    if-lez v1, :cond_4

    .line 4340
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setExposureTimeProp() - Exposure time is too large, trim to upper"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4341
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 4350
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setExposureTimeProp() - Exposure time : "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4353
    iget-wide v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureTime:J

    .line 4354
    .local v2, "oldExposureTime":J
    iput-wide p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureTime:J

    .line 4357
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->applyExposureTime(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4358
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4361
    :cond_2
    cmp-long v1, p1, v6

    if-eqz v1, :cond_3

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_ACTIVE_PICTURE_INFO_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4362
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->onActiveExposureTimeChanged(J)V

    .line 4365
    :cond_3
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 4343
    .end local v2    # "oldExposureTime":J
    :cond_4
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, p1, v4

    if-gez v1, :cond_1

    .line 4345
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setExposureTimeProp() - Exposure time is too small, trim to lower"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4346
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0
.end method

.method private setFaceBeautyValueProp(I)Z
    .locals 4
    .param p1, "faceBeautyValue"    # I

    .prologue
    .line 4411
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4412
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceBeautyValue:I

    .line 4416
    .local v0, "oldFaceBeautyValue":I
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFaceBeautyValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4417
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4419
    :cond_0
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceBeautyValue:I

    .line 4421
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setFaceDetectionProp(Z)Z
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4429
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4430
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4431
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    if-ne v1, p1, :cond_0

    .line 4432
    return v0

    .line 4435
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFaceDetection(Z)Z

    .line 4438
    iput-boolean p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    .line 4439
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setFlashModeProp(Lcom/oneplus/camera/FlashMode;)Z
    .locals 5
    .param p1, "flashMode"    # Lcom/oneplus/camera/FlashMode;

    .prologue
    const/4 v4, 0x0

    .line 4447
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4448
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    .line 4449
    .local v0, "oldFlashMode":Lcom/oneplus/camera/FlashMode;
    if-ne v0, p1, :cond_0

    .line 4450
    return v4

    .line 4452
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    if-eq p1, v1, :cond_1

    .line 4454
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFlashModeProp() - No flash on camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4455
    return v4

    .line 4457
    :cond_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4459
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFlashModeProp() - Unsupported flash mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", supported flash modes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4460
    return v4

    .line 4463
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4464
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4466
    :cond_3
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    .line 4468
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setFocusModeProp(Lcom/oneplus/camera/FocusMode;)Z
    .locals 6
    .param p1, "focusMode"    # Lcom/oneplus/camera/FocusMode;

    .prologue
    const/4 v5, 0x0

    .line 4476
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4477
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4478
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 4479
    .local v0, "oldFocusMode":Lcom/oneplus/camera/FocusMode;
    if-ne v0, p1, :cond_0

    .line 4480
    return v5

    .line 4481
    :cond_0
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4483
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFocusModeProp() - Invalid focus mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4484
    return v5

    .line 4488
    :cond_1
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 4489
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFocusMode(Lcom/oneplus/camera/FocusMode;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4491
    sget-object v2, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    if-ne p1, v2, :cond_2

    .line 4493
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 4494
    .local v1, "oldFocusState":Lcom/oneplus/camera/FocusState;
    sget-object v2, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    iput-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 4495
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v1, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4497
    .end local v1    # "oldFocusState":Lcom/oneplus/camera/FocusState;
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4501
    :cond_3
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private setFocusProp(F)Z
    .locals 5
    .param p1, "focusValue"    # F

    .prologue
    .line 4509
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4510
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4511
    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusValue:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 4512
    const/4 v2, 0x1

    return v2

    .line 4513
    :cond_0
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 4514
    .local v0, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    .line 4516
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    .line 4518
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFocusProp() - Focus value is too large, trim to upper"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4519
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 4528
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFocusProp() - Focus : "

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4531
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusValue:F

    .line 4532
    .local v1, "oldFocus":F
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusValue:F

    .line 4535
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFocusPosition(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4536
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4539
    :cond_2
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 4521
    .end local v1    # "oldFocus":F
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 4523
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFocusProp() - Focus value is too small, trim to lower"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4524
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
    .line 4547
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4548
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4549
    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ISOValue:I

    if-ne v2, p1, :cond_0

    .line 4550
    const/4 v2, 0x1

    return v2

    .line 4551
    :cond_0
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 4552
    .local v0, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 4554
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le p1, v2, :cond_3

    .line 4556
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setISOProp() - ISO value is too large, trim to upper"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4557
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4566
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setISOProp() - ISO value : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4569
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ISOValue:I

    .line 4570
    .local v1, "oldIsoValue":I
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ISOValue:I

    .line 4573
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyISO(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4574
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4577
    :cond_2
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 4559
    .end local v1    # "oldIsoValue":I
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 4561
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setISOProp() - ISO value is too small, trim to lower"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4562
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

    .line 4584
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4585
    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 4586
    :cond_0
    return v1

    .line 4587
    :cond_1
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    .line 4588
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setManualCaptureProp(Ljava/lang/Boolean;)Z
    .locals 2
    .param p1, "isManual"    # Ljava/lang/Boolean;

    .prologue
    .line 4596
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4597
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4598
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4599
    .local v0, "oldIsManual":Z
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4600
    const/4 v1, 0x0

    return v1

    .line 4603
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyManualCapture(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4604
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4607
    :cond_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v1, p1}, Lcom/oneplus/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setMirrorModeProp(Ljava/lang/Boolean;)Z
    .locals 3
    .param p1, "isMirrored"    # Ljava/lang/Boolean;

    .prologue
    .line 4615
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4616
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4617
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4618
    .local v0, "oldIsMirrored":Z
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4619
    const/4 v1, 0x0

    return v1

    .line 4622
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsMirrored:Z

    .line 4625
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyMirrorMode(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4626
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4629
    :cond_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setMotionVectorCallbackEnabled(Z)V
    .locals 8
    .param p1, "isMotionVectorEnabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 4637
    iget-boolean v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsMotionVectorEnabled:Z

    if-ne v4, p1, :cond_0

    .line 4638
    return-void

    .line 4641
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v4, :cond_1

    .line 4643
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setMotionVectorCallback() - Camera is released"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4644
    return-void

    .line 4648
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MotionVectorCallback:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 4653
    :try_start_0
    const-string/jumbo v4, "android.hardware.Camera$MotionVectorCallback"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4654
    .local v1, "motionVectorCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    new-instance v6, Lcom/oneplus/camera/LegacyCameraImpl$15;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/LegacyCameraImpl$15;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MotionVectorCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4680
    .end local v1    # "motionVectorCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    const-string/jumbo v4, "android.hardware.Camera$MotionVectorCallback"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4681
    .restart local v1    # "motionVectorCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setMotionVectorCallback"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 4682
    .local v2, "setMotionVectorCallbackMethod":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MotionVectorCallback:Ljava/lang/Object;

    :cond_3
    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4683
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setMotionVectorCallback() - Is enabled: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 4692
    iput-boolean p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsMotionVectorEnabled:Z

    .line 4634
    return-void

    .line 4671
    .end local v1    # "motionVectorCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "setMotionVectorCallbackMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 4672
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setMotionVectorCallback() - Cannot get motion vector callback"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4673
    return-void

    .line 4686
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 4687
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setMotionVectorCallback() - Fail to set motion vector callback"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4688
    return-void
.end method

.method private setPictureSizeProp(Landroid/util/Size;)Z
    .locals 4
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 4700
    if-nez p1, :cond_0

    .line 4701
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No picture size specified."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4702
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4704
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPictureSizeProp() - Size "

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

    .line 4705
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid picture size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4707
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4708
    const/4 v1, 0x0

    return v1

    .line 4711
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPictureSizeProp() - Size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4712
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 4713
    .local v0, "prevSize":Landroid/util/Size;
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 4716
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

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
    .line 4724
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4725
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4728
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    invoke-virtual {v1, p1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4729
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 4732
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

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

    .line 4733
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    .line 4734
    .local v0, "oldRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    .line 4735
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyPreviewFpsRange(Landroid/util/Range;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4736
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4739
    :cond_2
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setPreviewReceiverProp(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Object;

    .prologue
    .line 4747
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4748
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    .line 4749
    .local v0, "prevReceiver":Ljava/lang/Object;
    if-ne v0, p1, :cond_0

    .line 4750
    const/4 v1, 0x0

    return v1

    .line 4751
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_1

    .line 4753
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviewReceiver() - Preview state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4754
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot change preview receiver when preview state is not STOPPED."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4757
    :cond_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v1, p1}, Lcom/oneplus/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setPreviewSizeProp(Landroid/util/Size;)Z
    .locals 6
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    const/4 v5, 0x0

    .line 4765
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4766
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4769
    if-nez p1, :cond_0

    .line 4770
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No preview size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4771
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 4772
    .local v1, "oldSize":Landroid/util/Size;
    invoke-virtual {p1, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4773
    return v5

    .line 4774
    :cond_1
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4776
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

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

    .line 4777
    return v5

    .line 4782
    :cond_2
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v2}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 4791
    const/4 v0, 0x0

    .line 4796
    .local v0, "needRestartPreview":Z
    :goto_0
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 4799
    if-eqz v0, :cond_3

    .line 4801
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setPreviewSizeProp() - Restart preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4802
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->startPreviewInternal()Z

    .line 4806
    :cond_3
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 4786
    .end local v0    # "needRestartPreview":Z
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setPreviewSizeProp() - Stop preview to change preview size"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4787
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->stopPreviewInternal()V

    .line 4788
    const/4 v0, 0x1

    .line 4789
    .restart local v0    # "needRestartPreview":Z
    goto :goto_0

    .line 4782
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

    .line 5288
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

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

    .line 5289
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 5290
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRawCaptureEnabled:Z

    if-ne v1, p1, :cond_0

    .line 5291
    return v0

    .line 5292
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRawCaptureEnabled:Z

    .line 5294
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 4814
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4815
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-ne v1, p1, :cond_0

    .line 4816
    return v2

    .line 4817
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v3, :cond_1

    .line 4819
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRecordingModeProp() - Current capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4820
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot change recording mode due to current capture state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4823
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

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

    .line 4827
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v3

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 4836
    const/4 v0, 0x0

    .line 4841
    .local v0, "needRestartPreview":Z
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    .line 4844
    if-eqz v0, :cond_2

    .line 4846
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setRecordingModeProp() - Restart preview"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4847
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->startPreview(I)Z

    .line 4851
    :cond_2
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-eqz p1, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 4831
    .end local v0    # "needRestartPreview":Z
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setRecordingModeProp() - Stop preview to change recording mode"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4832
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->stopPreview(I)V

    .line 4833
    const/4 v0, 0x1

    .line 4834
    .restart local v0    # "needRestartPreview":Z
    goto :goto_0

    .line 4851
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 4827
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

    .line 4859
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4860
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4861
    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    if-ne v2, p1, :cond_0

    .line 4862
    return v5

    .line 4865
    :cond_0
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4866
    .local v1, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 4868
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

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

    .line 4869
    return v5

    .line 4872
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSceneModeProp() - Scene mode : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4874
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applySceneMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4875
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4877
    :cond_2
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    .line 4878
    .local v0, "oldSceneMode":I
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    .line 4879
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private setStandaloneFaceBeautyEnabledProp(Z)Z
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 4373
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4374
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4377
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsStandaloneFaceBeautyEnabled:Z

    .line 4378
    .local v0, "oldValue":Z
    iput-boolean p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsStandaloneFaceBeautyEnabled:Z

    .line 4381
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyStandaloneFaceBeautyEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4382
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4385
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_STANDALONE_FACE_BEAUTY_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setTimeLapseModeProp(Z)Z
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4393
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4394
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsTimeLapseMode:Z

    if-ne v1, p1, :cond_0

    .line 4395
    return v0

    .line 4398
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsTimeLapseMode:Z

    .line 4399
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyTimeLapseMode(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4400
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4403
    :cond_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_TIME_LAPSE_MODE:Lcom/oneplus/base/PropertyKey;

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-super {p0, v1, v0, v2}, Lcom/oneplus/camera/BaseCamera;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setVideoSizeProp(Landroid/util/Size;)Z
    .locals 5
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    const/4 v4, 0x0

    .line 4946
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4947
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4948
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 4960
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 4961
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No video size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4952
    :pswitch_0
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v1, :cond_0

    .line 4953
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setVideoSizeProp() - Apply video size when starting preview next time"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4962
    :cond_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4964
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

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

    .line 4965
    return v4

    .line 4967
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4968
    return v4

    .line 4970
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setVideoSizeProp() - Video size : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4973
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 4974
    .local v0, "oldSize":Landroid/util/Size;
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 4975
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 4948
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setWatermarkBoundsMapProp(Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Landroid/graphics/Rect;>;"
    const/4 v7, 0x0

    .line 4983
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4984
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4985
    if-nez p1, :cond_0

    .line 4986
    return v7

    .line 4989
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 4991
    const/4 v0, 0x0

    .line 4992
    .local v0, "hasDiff":Z
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "size$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 4994
    .local v3, "size":Landroid/util/Size;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4996
    const/4 v0, 0x1

    .line 5000
    .end local v3    # "size":Landroid/util/Size;
    :cond_2
    if-nez v0, :cond_3

    .line 5001
    return v7

    .line 5005
    .end local v0    # "hasDiff":Z
    .end local v4    # "size$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    .line 5006
    .local v2, "oldValue":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Landroid/graphics/Rect;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5007
    .local v1, "newValue":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Landroid/graphics/Rect;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "size$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 5008
    .restart local v3    # "size":Landroid/util/Size;
    new-instance v6, Landroid/graphics/Rect;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-direct {v6, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5009
    .end local v3    # "size":Landroid/util/Size;
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    .line 5012
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->applyWatermarkBoundsMap(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5013
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 5016
    :cond_5
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_BOUNDS_MAP:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    invoke-virtual {p0, v5, v2, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method private setWatermarkFilePathsMapProp(Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "filePaths":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 5024
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 5025
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 5026
    if-nez p1, :cond_0

    .line 5027
    return v7

    .line 5030
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 5032
    const/4 v0, 0x0

    .line 5033
    .local v0, "hasDiff":Z
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "size$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 5035
    .local v3, "size":Landroid/util/Size;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5037
    const/4 v0, 0x1

    .line 5041
    .end local v3    # "size":Landroid/util/Size;
    :cond_2
    if-nez v0, :cond_3

    .line 5042
    return v7

    .line 5046
    .end local v0    # "hasDiff":Z
    .end local v4    # "size$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    .line 5047
    .local v2, "oldValue":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5048
    .local v1, "newValue":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "size$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 5049
    .restart local v3    # "size":Landroid/util/Size;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5050
    .end local v3    # "size":Landroid/util/Size;
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    .line 5053
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->applyWatermarkFilePathsMap(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5054
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 5057
    :cond_5
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_FILE_PATHS_MAP:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    invoke-virtual {p0, v5, v2, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method private setupCameraStateCallback()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4887
    iget-boolean v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsCameraStateCallbackSupported:Z

    if-nez v4, :cond_0

    .line 4888
    return v8

    .line 4891
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraStateCallback:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 4895
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraStateCallbackClass:Ljava/lang/Class;

    if-nez v4, :cond_1

    .line 4896
    const-string/jumbo v4, "android.hardware.Camera$CameraStateCallback"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraStateCallbackClass:Ljava/lang/Class;

    .line 4897
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraStateCallbackClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraStateCallbackClass:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Lcom/oneplus/camera/LegacyCameraImpl$16;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/LegacyCameraImpl$16;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraStateCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4925
    :cond_2
    :try_start_1
    const-string/jumbo v4, "android.hardware.Camera$CameraStateCallback"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4926
    .local v0, "callbackClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setCameraStateCallback"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 4927
    .local v3, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraStateCallback:Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4928
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setupCameraStateCallback() - Call-back set"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 4938
    return v9

    .line 4915
    .end local v0    # "callbackClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 4916
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setupCameraStateCallback() - Camera state call-back is unsupported, fail to create call-back instance"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4917
    iput-boolean v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsCameraStateCallbackSupported:Z

    .line 4918
    return v8

    .line 4931
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 4932
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setupCameraStateCallback() - Camera state call-back is unsupported, fail to set call-back"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4933
    iput-boolean v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsCameraStateCallbackSupported:Z

    .line 4934
    return v8
.end method

.method private startPreviewDirectlyInternal()Z
    .locals 4

    .prologue
    .line 5186
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPreviewInternal() - Start preview \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' [Start]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5187
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 5188
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPreviewInternal() - Start preview \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' [End]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5197
    const/4 v1, 0x1

    return v1

    .line 5191
    :catch_0
    move-exception v0

    .line 5192
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPreviewInternal() - Fail to start preview \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5193
    const/4 v1, 0x0

    return v1
.end method

.method private startPreviewInternal()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 5205
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    .line 5206
    .local v3, "receiver":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 5207
    return v12

    .line 5210
    :cond_0
    instance-of v5, v3, Landroid/view/SurfaceHolder;

    if-eqz v5, :cond_1

    move-object v2, v3

    .line 5212
    check-cast v2, Landroid/view/SurfaceHolder;

    .line 5213
    .local v2, "holder":Landroid/view/SurfaceHolder;
    const/4 v4, 0x0

    .line 5214
    .local v4, "retryCount":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 5219
    .local v6, "startTimeMillis":J
    :goto_0
    if-nez v4, :cond_2

    .line 5220
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startPreviewInternal() - Set preview display"

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5223
    :goto_1
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5249
    .end local v2    # "holder":Landroid/view/SurfaceHolder;
    .end local v4    # "retryCount":I
    .end local v6    # "startTimeMillis":J
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->preparePreviewParameters()Z

    move-result v5

    if-nez v5, :cond_4

    .line 5251
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startPreviewInternal() - Error when preparing preview parameters"

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5252
    return v12

    .line 5222
    .restart local v2    # "holder":Landroid/view/SurfaceHolder;
    .restart local v4    # "retryCount":I
    .restart local v6    # "startTimeMillis":J
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startPreviewInternal() - Set preview display, retry: "

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5227
    :catch_0
    move-exception v0

    .line 5228
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v10, 0x3e8

    cmp-long v5, v8, v10

    if-gez v5, :cond_3

    .line 5232
    const-wide/16 v8, 0xa

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 5236
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5235
    :catch_1
    move-exception v1

    .local v1, "e2":Ljava/lang/Throwable;
    goto :goto_2

    .line 5240
    .end local v1    # "e2":Ljava/lang/Throwable;
    :cond_3
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startPreviewInternal() - Error when set preview display, stop retry"

    invoke-static {v5, v8, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5241
    return v12

    .line 5255
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "holder":Landroid/view/SurfaceHolder;
    .end local v4    # "retryCount":I
    .end local v6    # "startTimeMillis":J
    :cond_4
    invoke-direct {p0, v13}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters(Z)Z

    .line 5258
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->checkAlternativePictureSizes()V

    .line 5261
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_MOTION_VECTOR_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->hasHandlers(Lcom/oneplus/base/EventKey;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsMotionVectorEnabled:Z

    if-eqz v5, :cond_6

    .line 5265
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->addPreviewCallbacks()V

    .line 5268
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->startPreviewDirectlyInternal()Z

    move-result v5

    if-nez v5, :cond_7

    .line 5269
    return v12

    .line 5262
    :cond_6
    invoke-direct {p0, v13}, Lcom/oneplus/camera/LegacyCameraImpl;->setMotionVectorCallbackEnabled(Z)V

    goto :goto_3

    .line 5272
    :cond_7
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v5, v8}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 5273
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {v5, v8}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 5276
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAeCallback()Z

    .line 5279
    iget-boolean v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    invoke-direct {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFaceDetection(Z)Z

    .line 5282
    return v13
.end method

.method private stopCaptureInternal(Z)V
    .locals 3
    .param p1, "abortCaptures"    # Z

    .prologue
    .line 5335
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v1, :cond_0

    .line 5337
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopCaptureInternal() - No capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5338
    return-void

    .line 5340
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 5341
    .local v0, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5353
    :pswitch_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5356
    if-eqz p1, :cond_1

    .line 5357
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->onCaptureCompleted()V

    .line 5332
    :cond_1
    return-void

    .line 5344
    :pswitch_1
    return-void

    .line 5349
    :pswitch_2
    return-void

    .line 5341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopPreviewDirectlyInternal()V
    .locals 4

    .prologue
    .line 5410
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPreviewDirectlyInternal() - Stop preview \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' [Start]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5411
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 5412
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPreviewDirectlyInternal() - Stop preview \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' [End]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5406
    return-void

    .line 5415
    :catch_0
    move-exception v0

    .line 5416
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPreviewDirectlyInternal() - Fail to stop preview \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5417
    return-void
.end method

.method private stopPreviewInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5426
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->removePreviewCallbacks()V

    .line 5427
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5430
    invoke-direct {p0, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->setMotionVectorCallbackEnabled(Z)V

    .line 5433
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->applyExposureCompensation(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5434
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 5437
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 5438
    .local v0, "focusState":Lcom/oneplus/camera/FocusState;
    sget-object v2, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    if-eq v0, v2, :cond_1

    .line 5440
    sget-object v2, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    iput-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 5441
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5448
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->stopPreviewDirectlyInternal()V

    .line 5451
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 5452
    .local v1, "handler":Landroid/os/Handler;
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5423
    return-void
.end method

.method private takePicture()Z
    .locals 8

    .prologue
    const/16 v7, 0x2712

    const/4 v6, 0x1

    .line 5497
    const/16 v1, 0x2712

    const/4 v2, 0x1

    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-static {p0, v1, v2, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 5499
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "takePicture() - Start"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5500
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_RawCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PostviewCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 5501
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "takePicture() - End"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5513
    return v6

    .line 5504
    :catch_0
    move-exception v0

    .line 5505
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "takePicture() - Error when taking picture"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5508
    invoke-static {p0, v7}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 5510
    const/4 v1, 0x0

    return v1
.end method

.method private updateParameters()V
    .locals 3

    .prologue
    .line 5546
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 5548
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateParameters() - Camera is released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5549
    return-void

    .line 5553
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    .line 5556
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AvailableLegacySceneModes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5557
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AvailableLegacySceneModes:Ljava/util/Set;

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5560
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->checkPreviewFPSRanges()V

    .line 5561
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->checkDefaultPreviewFPSRange()V

    .line 5564
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->checkZoomRange()V

    .line 5567
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->checkBokehPictureSize()V

    .line 5570
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    if-gez v0, :cond_1

    .line 5572
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    .line 5573
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateParameters() - Default JPEG quality : "

    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5574
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 5575
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5544
    :cond_1
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
    .line 383
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsPreviewCallbackAdded:Z

    if-eqz v0, :cond_2

    .line 385
    :cond_0
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_MOTION_VECTOR_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsMotionVectorEnabled:Z

    if-eqz v0, :cond_3

    .line 387
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCamera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 381
    return-void

    .line 384
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->addPreviewCallbacks()V

    goto :goto_0

    .line 386
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setMotionVectorCallbackEnabled(Z)V

    goto :goto_0
.end method

.method public bindMediaRecorder(Landroid/media/MediaRecorder;I)Z
    .locals 6
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1360
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 1361
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 1362
    if-nez p1, :cond_0

    .line 1364
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "bindMediaRecorder() - Recorder is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    return v4

    .line 1367
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_1

    .line 1369
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bindMediaRecorder() - Current capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    return v4

    .line 1374
    :cond_1
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 1379
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V

    .line 1382
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1385
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v1, v2, :cond_2

    .line 1386
    const-string/jumbo v1, "camerarecorder=facing_front"

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setAudioSourceParams(Ljava/lang/String;)V

    .line 1391
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1403
    return v3

    .line 1388
    :cond_2
    const-string/jumbo v1, "camerarecorder=facing_back"

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setAudioSourceParams(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1394
    :catch_0
    move-exception v0

    .line 1395
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "bindMediaRecorder() - Cannot bind media recorder"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1397
    const-string/jumbo v1, "camerarecorder=none"

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setAudioSourceParams(Ljava/lang/String;)V

    .line 1398
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->reconnectCamera()Z

    .line 1399
    iput-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 1400
    return v4
.end method

.method public calculateViewAngles(Landroid/graphics/Rect;I)Landroid/util/SizeF;
    .locals 10
    .param p1, "cropRegion"    # Landroid/graphics/Rect;
    .param p2, "flags"    # I

    .prologue
    .line 1422
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1423
    .local v2, "focalLength":F
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SizeF;

    .line 1424
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

    .line 1425
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

    .line 1428
    .local v1, "anglesY":F
    if-nez p1, :cond_0

    .line 1429
    new-instance v5, Landroid/util/SizeF;

    invoke-direct {v5, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v5

    .line 1432
    :cond_0
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SENSOR_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 1433
    .local v4, "sensorSizeFull":Landroid/util/Size;
    new-instance v5, Landroid/util/SizeF;

    .line 1434
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v0

    .line 1435
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v7, v1

    .line 1433
    invoke-direct {v5, v6, v7}, Landroid/util/SizeF;-><init>(FF)V

    return-object v5
.end method

.method public cancelAutoFocus(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .line 1445
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 1446
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    .line 1447
    .local v2, "previewState":Lcom/oneplus/camera/OperationState;
    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v2, v3, :cond_0

    .line 1449
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ForceCancelAutoFocus:Z

    .line 1450
    return-void

    .line 1454
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "cancelAutoFocus() - Cancel current auto-focus"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1465
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 1466
    .local v1, "oldState":Lcom/oneplus/camera/FocusState;
    sget-object v3, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    iput-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 1467
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v1, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1442
    return-void

    .line 1460
    .end local v1    # "oldState":Lcom/oneplus/camera/FocusState;
    :catch_0
    move-exception v0

    .line 1461
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "cancelAutoFocus() - Fail to cancel auto-focus"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public capture(II)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "frameCount"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 1476
    if-nez p1, :cond_0

    .line 1478
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

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

    .line 1479
    return-object v4

    .line 1483
    :cond_0
    const/4 v0, 0x0

    .line 1484
    .local v0, "captureLater":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 1485
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_1

    .line 1487
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "capture() - Capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    return-object v4

    .line 1490
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-Camera$StateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1495
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "capture() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    return-object v4

    .line 1498
    :pswitch_0
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 1503
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "capture() - Preview state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    return-object v4

    .line 1508
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1511
    new-instance v1, Lcom/oneplus/camera/LegacyCameraImpl$14;

    const-string/jumbo v2, "Capture"

    invoke-direct {v1, p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl$14;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    .line 1521
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    .line 1522
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->captureInternal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1529
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    return-object v1

    .line 1524
    :cond_3
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1525
    return-object v4

    .line 1490
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 1498
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public close(I)V
    .locals 8
    .param p1, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 2010
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2011
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 2012
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Camera$State;

    .line 2013
    .local v3, "state":Lcom/oneplus/camera/Camera$State;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-Camera$StateSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v3}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2021
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "close() - Invalid state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    return-void

    .line 2017
    :pswitch_0
    return-void

    .line 2026
    :pswitch_1
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2029
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 2030
    .local v2, "oldFocusState":Lcom/oneplus/camera/FocusState;
    sget-object v4, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    iput-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 2031
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v4, v2, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2034
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    .line 2035
    .local v0, "oldAeState":Lcom/oneplus/camera/AutoExposureState;
    sget-object v4, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    iput-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    .line 2036
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v4, v0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2039
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    .line 2040
    .local v1, "oldAutoHdrState":Z
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    .line 2041
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AUTO_HDR_STATUS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2044
    iget-boolean v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsBokehEnabled:Z

    if-eqz v4, :cond_1

    .line 2046
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehDebugInfoTable:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2048
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehDebugInfoTable:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 2049
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_BOKEH_DEBUG_INFO_UPDATED:Lcom/oneplus/base/EventKey;

    sget-object v5, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2051
    :cond_0
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/BokehState;->INITIALIZING:Lcom/oneplus/camera/BokehState;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2055
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->closeInternal()V

    .line 2058
    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    .line 2059
    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    .line 2062
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2007
    return-void

    .line 2013
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
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
    .line 2163
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 2164
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    return-object v0

    .line 2165
    :cond_0
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 2166
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    return-object v0

    .line 2167
    :cond_1
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 2168
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    return-object v0

    .line 2169
    :cond_2
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ALTERNATIVE_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 2170
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    return-object v0

    .line 2171
    :cond_3
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AUTO_HDR_STATUS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 2172
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2173
    :cond_4
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 2174
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AwbMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2175
    :cond_5
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 2176
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehPictureSize:Landroid/util/Size;

    return-object v0

    .line 2177
    :cond_6
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STRENGTH:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 2178
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehStrength:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 2179
    :cond_7
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    .line 2180
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->getCameraCharacteristic()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0

    .line 2181
    :cond_8
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_COLOR_TEMPERATURE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    .line 2182
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ColorTemperature:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2183
    :cond_9
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_a

    .line 2184
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureCompensation:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 2185
    :cond_a
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_b

    .line 2186
    iget-wide v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 2187
    :cond_b
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_c

    .line 2188
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceListIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 2189
    :cond_c
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_d

    .line 2190
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceBeautyValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2191
    :cond_d
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_e

    .line 2192
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    return-object v0

    .line 2193
    :cond_e
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_f

    .line 2194
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->getFocalLength()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 2195
    :cond_f
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_10

    .line 2196
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 2197
    :cond_10
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_11

    .line 2198
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    return-object v0

    .line 2199
    :cond_11
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_12

    .line 2200
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    return-object v0

    .line 2201
    :cond_12
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_13

    .line 2202
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAeLocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2203
    :cond_13
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_14

    .line 2204
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAwbLocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2205
    :cond_14
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_BOKEH_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_15

    .line 2206
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsBokehEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2207
    :cond_15
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_16

    .line 2208
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2209
    :cond_16
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_17

    .line 2210
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsMirrored:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2211
    :cond_17
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_18

    .line 2212
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRawCaptureEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2213
    :cond_18
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_19

    .line 2214
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2215
    :cond_19
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1a

    .line 2216
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ISOValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2217
    :cond_1a
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_TIME_LAPSE_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1b

    .line 2218
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsTimeLapseMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2219
    :cond_1b
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1d

    .line 2220
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    if-ltz v0, :cond_1c

    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1c
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    goto :goto_0

    .line 2221
    :cond_1d
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1e

    .line 2222
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    return-object v0

    .line 2223
    :cond_1e
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1f

    .line 2224
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    return-object v0

    .line 2225
    :cond_1f
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_20

    .line 2226
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    return-object v0

    .line 2227
    :cond_20
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_21

    .line 2228
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2229
    :cond_21
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_22

    .line 2230
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    return-object v0

    .line 2231
    :cond_22
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_BOUNDS_MAP:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_23

    .line 2232
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    return-object v0

    .line 2233
    :cond_23
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_FILE_PATHS_MAP:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_24

    .line 2234
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    return-object v0

    .line 2235
    :cond_24
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCamera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBokehDebugInfo()[Lcom/oneplus/camera/BokehDebugInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2243
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehDebugInfoTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 2244
    .local v0, "size":I
    if-gtz v0, :cond_0

    .line 2245
    new-array v1, v2, [Lcom/oneplus/camera/BokehDebugInfo;

    return-object v1

    .line 2246
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BokehDebugInfoTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v2, v0, [Lcom/oneplus/camera/BokehDebugInfo;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/camera/BokehDebugInfo;

    return-object v1
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2307
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2322
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCamera;->handleMessage(Landroid/os/Message;)V

    .line 2305
    :goto_0
    return-void

    .line 2310
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->onAutoFocusTimeout()V

    goto :goto_0

    .line 2314
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - MSG_FACES_CHANGED_TIME_OUT"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->onFaceDetection([Landroid/hardware/Camera$Face;)V

    goto :goto_0

    .line 2319
    :pswitch_2
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->onJpegTimeout()V

    goto :goto_0

    .line 2307
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public open(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3545
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3546
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3547
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$State;

    .line 3548
    .local v0, "state":Lcom/oneplus/camera/Camera$State;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-Camera$StateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3556
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open() - Invalid state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3557
    return v4

    .line 3552
    :pswitch_1
    return v3

    .line 3561
    :pswitch_2
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3564
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->openInternal(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3565
    return v4

    .line 3568
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ErrorCallbackCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3571
    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyProcessCallback(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3572
    iput-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsProcessCallbackSupported:Z

    .line 3577
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->setCameraDisplayOrientation()V

    .line 3580
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 3583
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->updateParameters()V

    .line 3586
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->checkSceneModes()V

    .line 3589
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->checkFaceBeautyValues()V

    .line 3592
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3594
    return v3

    .line 3574
    :cond_1
    iput-boolean v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsProcessCallbackSupported:Z

    goto :goto_0

    .line 3548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public pauseVideoRecording(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 3645
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3646
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 3648
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "pauseVideoRecording() - No media recorder"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3649
    return v3

    .line 3655
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "pauseVideoRecording()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3656
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3657
    const/4 v1, 0x1

    return v1

    .line 3660
    :catch_0
    move-exception v0

    .line 3661
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "pauseVideoRecording() - Fail to pause"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3662
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
    .line 3904
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCamera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3907
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_MOTION_VECTOR_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->hasHandlers(Lcom/oneplus/base/EventKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3901
    :cond_0
    :goto_0
    return-void

    .line 3908
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setMotionVectorCallbackEnabled(Z)V

    goto :goto_0
.end method

.method public resumeVideoRecording(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 3935
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3936
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 3938
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeVideoRecording() - No media recorder"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3939
    return v3

    .line 3945
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeVideoRecording()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3946
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3947
    const/4 v1, 0x1

    return v1

    .line 3950
    :catch_0
    move-exception v0

    .line 3951
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeVideoRecording() - Fail to resume"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3952
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
    .line 3962
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 3963
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setAeRegionsProp(Ljava/util/List;)Z

    move-result v0

    return v0

    .line 3964
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 3965
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setAfRegionsProp(Ljava/util/List;)Z

    move-result v0

    return v0

    .line 3966
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 3967
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setAWBModeProp(I)Z

    move-result v0

    return v0

    .line 3968
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_2
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_BOKEH_STRENGTH:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 3969
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setBokehStrengthProp(F)Z

    move-result v0

    return v0

    .line 3970
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_3
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_COLOR_TEMPERATURE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 3971
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setColorTemperature(I)Z

    move-result v0

    return v0

    .line 3972
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_4
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 3973
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setDigitalZoomProp(F)Z

    move-result v0

    return v0

    .line 3974
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_5
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 3975
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setExposureCompensationProp(F)Z

    move-result v0

    return v0

    .line 3976
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_6
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 3977
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setExposureTimeProp(J)Z

    move-result v0

    return v0

    .line 3978
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_7
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    .line 3979
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setFaceBeautyValueProp(I)Z

    move-result v0

    return v0

    .line 3980
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_8
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    .line 3981
    check-cast p2, Lcom/oneplus/camera/FlashMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setFlashModeProp(Lcom/oneplus/camera/FlashMode;)Z

    move-result v0

    return v0

    .line 3982
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_9
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_a

    .line 3983
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setFocusProp(F)Z

    move-result v0

    return v0

    .line 3984
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_a
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_b

    .line 3985
    check-cast p2, Lcom/oneplus/camera/FocusMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setFocusModeProp(Lcom/oneplus/camera/FocusMode;)Z

    move-result v0

    return v0

    .line 3986
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_b
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_c

    .line 3987
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setAeLockProp(Z)Z

    move-result v0

    return v0

    .line 3988
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_c
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_d

    .line 3989
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setAwbLockProp(Z)Z

    move-result v0

    return v0

    .line 3990
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_d
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_BOKEH_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_e

    .line 3991
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setBokehEnabledProp(Z)Z

    move-result v0

    return v0

    .line 3992
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_e
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_f

    .line 3993
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setFaceDetectionProp(Z)Z

    move-result v0

    return v0

    .line 3994
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_f
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_10

    .line 3995
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setManualCaptureProp(Ljava/lang/Boolean;)Z

    move-result v0

    return v0

    .line 3996
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_10
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_11

    .line 3997
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setMirrorModeProp(Ljava/lang/Boolean;)Z

    move-result v0

    return v0

    .line 3998
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_11
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_12

    .line 3999
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setRawCaptureProp(Z)Z

    move-result v0

    return v0

    .line 4000
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_12
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_13

    .line 4001
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setRecordingModeProp(Z)Z

    move-result v0

    return v0

    .line 4002
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_13
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_TIME_LAPSE_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_14

    .line 4003
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setTimeLapseModeProp(Z)Z

    move-result v0

    return v0

    .line 4004
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_14
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_STANDALONE_FACE_BEAUTY_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_15

    .line 4005
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setStandaloneFaceBeautyEnabledProp(Z)Z

    move-result v0

    return v0

    .line 4006
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_15
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_16

    .line 4007
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setISOProp(I)Z

    move-result v0

    return v0

    .line 4008
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_16
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_17

    .line 4009
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setJpegQualityProp(I)Z

    move-result v0

    return v0

    .line 4010
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_17
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_18

    .line 4011
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setPictureSizeProp(Landroid/util/Size;)Z

    move-result v0

    return v0

    .line 4012
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_18
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_19

    .line 4013
    check-cast p2, Landroid/util/Range;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setPreviewFpsRangeProp(Landroid/util/Range;)Z

    move-result v0

    return v0

    .line 4014
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_19
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1a

    .line 4015
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setPreviewReceiverProp(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 4016
    :cond_1a
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1b

    .line 4017
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setPreviewSizeProp(Landroid/util/Size;)Z

    move-result v0

    return v0

    .line 4018
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1b
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1c

    .line 4019
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setSceneModeProp(I)Z

    move-result v0

    return v0

    .line 4020
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1c
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1d

    .line 4021
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setVideoSizeProp(Landroid/util/Size;)Z

    move-result v0

    return v0

    .line 4022
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1d
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_BOUNDS_MAP:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1e

    .line 4023
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setWatermarkBoundsMapProp(Ljava/util/Map;)Z

    move-result v0

    return v0

    .line 4024
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1e
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_FILE_PATHS_MAP:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1f

    .line 4025
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setWatermarkFilePathsMapProp(Ljava/util/Map;)Z

    move-result v0

    return v0

    .line 4026
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1f
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startAutoFocus(I)Z
    .locals 9
    .param p1, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 5067
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 5068
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    .line 5069
    .local v2, "previewState":Lcom/oneplus/camera/OperationState;
    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v2, v3, :cond_0

    .line 5071
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAutoFocus() - Preview state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5072
    return v8

    .line 5076
    :cond_0
    iget-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsApplyingParameters:Z

    if-eqz v3, :cond_1

    .line 5077
    invoke-direct {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters(Z)Z

    .line 5079
    :cond_1
    iput-boolean v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ForceCancelAutoFocus:Z

    .line 5082
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 5083
    .local v1, "oldState":Lcom/oneplus/camera/FocusState;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-FocusStateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 5106
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startAutoFocus() - Start auto-focus"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5107
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 5110
    const/16 v3, 0x2710

    const/4 v4, 0x1

    const-wide/16 v6, 0x1388

    invoke-static {p0, v3, v4, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 5113
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    if-eq v3, v4, :cond_2

    .line 5114
    sget-object v3, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    iput-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 5118
    :goto_1
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v1, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 5127
    return v5

    .line 5087
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startAutoFocus() - Cancel current auto-focus"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5090
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 5096
    :goto_2
    sget-object v3, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    iput-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 5097
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v1, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5098
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    goto :goto_0

    .line 5093
    :catch_0
    move-exception v0

    .line 5094
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startAutoFocus() - Fail to cancel auto-focus"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 5116
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    sget-object v3, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    iput-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 5121
    :catch_1
    move-exception v0

    .line 5122
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startAutoFocus() - Fail to start auto-focus"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5123
    return v8

    .line 5083
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startPreview(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5136
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 5137
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 5138
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$State;

    .line 5139
    .local v0, "state":Lcom/oneplus/camera/Camera$State;
    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    if-eq v0, v1, :cond_0

    .line 5141
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPreview() - Camera state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5142
    return v4

    .line 5144
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 5152
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open() - Invalid preview state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5153
    return v4

    .line 5150
    :pswitch_0
    return v3

    .line 5157
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5160
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->startPreviewInternal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5163
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5165
    return v4

    .line 5169
    :cond_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5171
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ForceCancelAutoFocus:Z

    if-eqz v1, :cond_2

    .line 5173
    iput-boolean v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ForceCancelAutoFocus:Z

    .line 5174
    invoke-virtual {p0, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->cancelAutoFocus(I)V

    .line 5176
    :cond_2
    return v3

    .line 5144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startVideoRecording(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 5303
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 5304
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 5305
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 5307
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startVideoRecording() - No media recorder"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5308
    return v3

    .line 5314
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 5316
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->preparePreviewParameters()Z

    .line 5317
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5327
    const/4 v1, 0x1

    return v1

    .line 5320
    :catch_0
    move-exception v0

    .line 5321
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startVideoRecording() - Fail to start video recording"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5323
    const-string/jumbo v1, "camerarecorder=none"

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setAudioSourceParams(Ljava/lang/String;)V

    .line 5324
    return v3
.end method

.method public stopPreview(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 5366
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 5367
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5380
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5383
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 5398
    :goto_1
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->stopPreviewInternal()V

    .line 5401
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5363
    return-void

    .line 5371
    :pswitch_2
    return-void

    .line 5375
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Stop while starting"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5388
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Wait for capture stop"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5389
    return-void

    .line 5392
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Cancel capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5393
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V

    goto :goto_1

    .line 5367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 5383
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
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

    .line 5461
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 5462
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 5463
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 5465
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - No media recorder"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5466
    return v3

    .line 5472
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - MediaRecorder.stop [start]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5473
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 5474
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - MediaRecorder.stop [end]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5484
    const-string/jumbo v1, "camerarecorder=none"

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setAudioSourceParams(Ljava/lang/String;)V

    .line 5487
    const/4 v1, 0x1

    return v1

    .line 5477
    :catch_0
    move-exception v0

    .line 5478
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - Fail to stop recorder"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5484
    const-string/jumbo v1, "camerarecorder=none"

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setAudioSourceParams(Ljava/lang/String;)V

    .line 5479
    return v3

    .line 5482
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 5484
    const-string/jumbo v2, "camerarecorder=none"

    invoke-direct {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setAudioSourceParams(Ljava/lang/String;)V

    .line 5482
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Legacy camera[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Facing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

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
    .line 5530
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 5531
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 5534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 5537
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->reconnectCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5538
    const/4 v0, 0x0

    return v0

    .line 5539
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
