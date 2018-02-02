.class public Lcom/oneplus/camera/LegacyCameraImpl;
.super Lcom/oneplus/camera/BaseCamera;
.source "LegacyCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private static final DUMP_PARAMETERS:Z = false

.field private static final JPEG_QUALITY_BURST:I = 0x5a

.field private static final KEEP_FILE_NAME_IN_PARAMS:Z = true

.field private static final MSG_AUTO_FOCUS_TIMEOUT:I = 0x2710

.field private static final TAKE_NEXT_PICTURE_ON_SHUTTER:Z = true

.field private static final TIMEOUT_AUTO_FOCUS:J = 0x1388L


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

.field private m_AwbMode:I

.field private m_BufferedPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private m_CameraParameters:Landroid/hardware/Camera$Parameters;

.field private m_CaptureHandle:Lcom/oneplus/base/Handle;

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

.field private m_IsAwbLocked:Z

.field private m_IsFaceDetectionEnabled:Z

.field private m_IsMirrored:Z

.field private m_IsPreviewCallbackAdded:Z

.field private m_IsProcessCallbackSupported:Z

.field private m_IsRawCaptureEnabled:Z

.field private m_IsRecordingMode:Z

.field private m_IsZslManualCaptureSupported:Z

.field private m_JpegQuality:I

.field private m_MediaRecorder:Landroid/media/MediaRecorder;

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

.field private m_ShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private m_ShutterReceivedCount:I

.field private m_TakePictureFailedOnShutter:Z

.field private m_TakenTime:J

.field private m_TargetCapturedFrameCount:I

.field private m_VideoSize:Landroid/util/Size;

.field private m_WatermarkBoundsForRotatedPicture:Landroid/graphics/Rect;

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

.field private m_WatermarkFilePathForRotatedPicture:Ljava/lang/String;

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

    const/16 v2, 0x18

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

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/16 v2, 0x19

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

    const/16 v2, 0x1a

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
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->FRAME_COUNT_REACHED:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_JPEG:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_RAW:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->TAKE_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->-com-oneplus-camera-LegacyCameraImpl$TakingPictureResultSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/oneplus/camera/LegacyCameraImpl;I)V
    .locals 0
    .param p1, "aeState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->onAeStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/LegacyCameraImpl;Z)V
    .locals 0
    .param p1, "start"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->onAutoFocusMoving(Z)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/LegacyCameraImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->onProcessReceived()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->onRawReceived([BLandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/LegacyCameraImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->onShutterReceived()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/oneplus/camera/LegacyCameraImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "key"    # Lcom/oneplus/base/EventKey;
    .param p2, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/oneplus/camera/LegacyCameraImpl;Z)V
    .locals 0
    .param p1, "abortCaptures"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/LegacyCameraImpl;Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->onAutoFocus(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/LegacyCameraImpl;I)V
    .locals 0
    .param p1, "hdrState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->onAutoHdrStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->onBufferedPreviewCallbackReceived([BLandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->onDngImageReceived([BLandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/LegacyCameraImpl;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p3, "camera"    # Landroid/hardware/Camera;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/LegacyCameraImpl;->onDngMetadataReceived(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/LegacyCameraImpl;[Landroid/hardware/Camera$Face;)V
    .locals 0
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->onFaceDetection([Landroid/hardware/Camera$Face;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->onPictureReceived([BLandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->onPostviewReceived([BLandroid/hardware/Camera;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Lcom/oneplus/camera/CameraInfo;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "cameraInfo"    # Lcom/oneplus/camera/CameraInfo;

    .prologue
    .line 244
    invoke-direct {p0, p1, p4}, Lcom/oneplus/camera/BaseCamera;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CameraInfo;)V

    .line 77
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeAreas:Ljava/util/List;

    .line 78
    sget-object v7, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    .line 79
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfAreas:Ljava/util/List;

    .line 81
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    .line 83
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    .line 85
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    .line 87
    const/4 v7, 0x1

    iput v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AwbMode:I

    .line 94
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoom:Ljava/lang/Float;

    .line 97
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureTime:J

    .line 99
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ForceCancelAutoFocus:Z

    .line 102
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/util/List;

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    .line 103
    sget-object v7, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    .line 104
    sget-object v7, Lcom/oneplus/camera/FocusMode;->DISABLED:Lcom/oneplus/camera/FocusMode;

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 105
    sget-object v7, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 106
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusValue:F

    .line 110
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    .line 112
    const/4 v7, -0x1

    iput v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ISOValue:I

    .line 118
    const/4 v7, -0x1

    iput v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    .line 120
    new-instance v7, Landroid/util/Size;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 123
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRangeMap:Ljava/util/Map;

    .line 125
    new-instance v7, Landroid/util/Size;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 128
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    .line 130
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    .line 132
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    .line 133
    const/4 v7, 0x0

    iput v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    .line 138
    new-instance v7, Landroid/util/Size;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 140
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    .line 142
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    .line 148
    new-instance v7, Lcom/oneplus/camera/LegacyCameraImpl$1;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/LegacyCameraImpl$1;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 157
    new-instance v7, Lcom/oneplus/camera/LegacyCameraImpl$2;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/LegacyCameraImpl$2;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 166
    new-instance v7, Lcom/oneplus/camera/LegacyCameraImpl$3;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/LegacyCameraImpl$3;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BufferedPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 174
    new-instance v7, Lcom/oneplus/camera/LegacyCameraImpl$4;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/LegacyCameraImpl$4;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ErrorCallbackCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 183
    new-instance v7, Lcom/oneplus/camera/LegacyCameraImpl$5;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/LegacyCameraImpl$5;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 193
    new-instance v7, Lcom/oneplus/camera/LegacyCameraImpl$6;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/LegacyCameraImpl$6;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 201
    new-instance v7, Lcom/oneplus/camera/LegacyCameraImpl$7;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/LegacyCameraImpl$7;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 210
    new-instance v7, Lcom/oneplus/camera/LegacyCameraImpl$8;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/LegacyCameraImpl$8;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_RawCallback:Landroid/hardware/Camera$PictureCallback;

    .line 218
    new-instance v7, Lcom/oneplus/camera/LegacyCameraImpl$9;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/LegacyCameraImpl$9;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 247
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    .line 250
    sget-object v7, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_FIXED_SIZE_PREVIEW_RECEIVER_NEEDED:Lcom/oneplus/base/PropertyKey;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 253
    sget-object v7, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 254
    .local v1, "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    sget-object v7, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 255
    sget-object v7, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 262
    :goto_0
    sget-object v7, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 263
    .local v5, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 264
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 267
    :cond_0
    sget-object v7, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p4, v7}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 268
    .local v3, "maxFaceCount":I
    if-lez v3, :cond_3

    .line 270
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "LegacyCameraImpl() - Max face count : "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v7, v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 272
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v8, v7, v2

    .line 271
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 256
    .end local v2    # "i":I
    .end local v3    # "maxFaceCount":I
    .end local v5    # "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_1
    sget-object v7, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 257
    sget-object v7, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    goto :goto_0

    .line 259
    :cond_2
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "LegacyCameraImpl() - Initial focus mode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    .restart local v3    # "maxFaceCount":I
    .restart local v5    # "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_3
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "LegacyCameraImpl() - Face detection is unsupported"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v7, v7

    add-int/lit8 v2, v7, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_4

    .line 278
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    aput-object v8, v7, v2

    .line 277
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 283
    :cond_4
    :try_start_0
    const-string/jumbo v7, "android.hardware.Camera$Face"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 284
    .local v0, "faceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "getIsSmile"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 285
    sget-object v7, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 286
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "LegacyCameraImpl() - smile capture is supported"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v0    # "faceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    sget-object v7, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STEP:Lcom/oneplus/base/PropertyKey;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 297
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_5

    .line 299
    const-string/jumbo v7, "oem.opcamera_manual_zsl.support"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsZslManualCaptureSupported:Z

    .line 300
    iget-boolean v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsZslManualCaptureSupported:Z

    if-eqz v7, :cond_5

    .line 301
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "LegacyCameraImpl() - ZSL manual capture is supported"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_5
    return-void

    .line 287
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    .line 288
    .local v6, "tr":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "LegacyCameraImpl() - Failed to get smile capture information"

    invoke-static {v7, v8, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    sget-object v7, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private addPreviewCallbacks()V
    .locals 5

    .prologue
    .line 320
    iget-boolean v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsPreviewCallbackAdded:Z

    if-eqz v2, :cond_0

    .line 321
    return-void

    .line 324
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "addPreviewCallbacks() - Camera is released"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void

    .line 331
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->getPreviewFormat()I

    move-result v1

    .line 332
    .local v1, "previewFormat":I
    packed-switch v1, :pswitch_data_0

    .line 338
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

    .line 339
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unsupported preview format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 335
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

    .line 343
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "addPreviewCallbacks() - Bytes length: "

    iget v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewCallbackByteLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 345
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewCallbackByteLength:I

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_BufferedPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 317
    return-void

    .line 332
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

    .line 356
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 358
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyAeCallback() - Camera is released"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return v7

    .line 363
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeCallback:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 368
    :try_start_0
    const-string/jumbo v3, "android.hardware.Camera$AECallback"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 369
    .local v0, "aeCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    new-instance v5, Lcom/oneplus/camera/LegacyCameraImpl$10;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/LegacyCameraImpl$10;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v0    # "aeCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-string/jumbo v3, "android.hardware.Camera$AECallback"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 409
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

    .line 410
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

    .line 417
    return v8

    .line 399
    .end local v0    # "aeCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "setAeCallbackMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyAeCallback() - Cannot set AE callback"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    return v7

    .line 413
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 414
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyAeCallback() - Fail to set AE callback"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    return v7
.end method

.method private applyAeLock(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 433
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 428
    :cond_1
    if-eqz p1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyAeLock() - AE lock is unsupported"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return v2

    .line 435
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

    .line 461
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_0

    .line 462
    return v4

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    .line 466
    .local v0, "maxMeteringAreas":I
    if-nez v0, :cond_2

    .line 467
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    :cond_1
    return v1

    .line 470
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeAreas:Ljava/util/List;

    invoke-direct {p0, p1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->createCameraAreas(Ljava/util/List;ILjava/util/List;)V

    .line 473
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeAreas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 474
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 479
    :goto_0
    return v1

    .line 476
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

    .line 487
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_0

    .line 488
    return v4

    .line 491
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    .line 492
    .local v0, "maxFocusAreas":I
    if-nez v0, :cond_2

    .line 493
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    :cond_1
    return v1

    .line 496
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfAreas:Ljava/util/List;

    invoke-direct {p0, p1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->createCameraAreas(Ljava/util/List;ILjava/util/List;)V

    .line 499
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfAreas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 500
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 505
    :goto_0
    return v1

    .line 502
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

    .line 442
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 451
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 446
    :cond_1
    if-eqz p1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyAwbLock() - Awb lock is unsupported"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return v2

    .line 453
    :cond_2
    return v2
.end method

.method private applyAwbMode(I)Z
    .locals 2
    .param p1, "awbMode"    # I

    .prologue
    .line 512
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 514
    const-string/jumbo v0, "auto"

    .line 515
    .local v0, "awbStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 530
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 531
    const/4 v1, 0x1

    return v1

    .line 518
    :pswitch_1
    const-string/jumbo v0, "cloudy-daylight"

    goto :goto_0

    .line 521
    :pswitch_2
    const-string/jumbo v0, "daylight"

    goto :goto_0

    .line 524
    :pswitch_3
    const-string/jumbo v0, "fluorescent"

    goto :goto_0

    .line 527
    :pswitch_4
    const-string/jumbo v0, "incandescent"

    goto :goto_0

    .line 533
    .end local v0    # "awbStr":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private applyDngImageCallbackBuffer()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 540
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 542
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "applyDngImageCallbackBuffer() - Camera is released"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return v9

    .line 549
    :cond_0
    :try_start_0
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 550
    .local v3, "sensorSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [B

    .line 551
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

    .line 553
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

    .line 554
    .local v0, "addDngImageCallbackBufferMethod":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    return v10

    .line 557
    .end local v0    # "addDngImageCallbackBufferMethod":Ljava/lang/reflect/Method;
    .end local v1    # "dngBuffer":[B
    .end local v3    # "sensorSize":Landroid/util/Size;
    :catch_0
    move-exception v2

    .line 558
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "applyDngImageCallbackBuffer() - Fail to set DngImageCallbackBuffer"

    invoke-static {v4, v5, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 559
    return v9
.end method

.method private applyExposureCompensation(F)Z
    .locals 4
    .param p1, "ev"    # F

    .prologue
    .line 567
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v3, :cond_0

    .line 569
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v3

    div-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 570
    .local v0, "index":I
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 571
    .local v2, "minIndex":I
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 572
    .local v1, "maxIndex":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 573
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 574
    const/4 v3, 0x1

    return v3

    .line 576
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
    .line 583
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1

    .line 585
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 587
    long-to-double v2, p1

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "applyExposureTime() - Exposure time: "

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "exposure-time"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "exposure-time"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private applyFaceBeautyValue(I)Z
    .locals 3
    .param p1, "faceBeautyValue"    # I

    .prologue
    .line 601
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 604
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

    .line 605
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "face-beauty-current-value"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 606
    const/4 v0, 0x1

    return v0

    .line 608
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private applyFaceDetection(Z)Z
    .locals 5
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 614
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    .line 615
    .local v1, "previewState":Lcom/oneplus/camera/OperationState;
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_3

    .line 619
    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v2, :cond_2

    .line 622
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 623
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 620
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "applyFaceDetection() - Fail to start/stop face detection"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 628
    return v4

    .line 631
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    return v4
.end method

.method private applyFlashMode(Lcom/oneplus/camera/FlashMode;)Z
    .locals 5
    .param p1, "flashMode"    # Lcom/oneplus/camera/FlashMode;

    .prologue
    .line 638
    const/4 v1, 0x0

    .line 639
    .local v1, "success":Z
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 640
    .local v0, "previewState":Lcom/oneplus/camera/OperationState;
    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v2, :cond_1

    .line 641
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 643
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_2

    .line 645
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-FlashModeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 660
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

    .line 648
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "auto"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 662
    :goto_0
    const/4 v1, 0x1

    .line 664
    :cond_2
    return v1

    .line 651
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "on"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :pswitch_3
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "torch"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 645
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

    .line 671
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    .line 673
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-FocusModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/FocusMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 689
    return v2

    .line 677
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 691
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 680
    :pswitch_1
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "continuous-picture"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 686
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "manual"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_1
    return v2

    .line 673
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

    .line 700
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_1

    .line 703
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 704
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

    .line 707
    .local v0, "focusPosition":F
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "manual-focus-position"

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 708
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "manual-focus-pos-type"

    invoke-virtual {v2, v3, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 709
    const/4 v2, 0x1

    return v2

    .line 704
    .end local v0    # "focusPosition":F
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .restart local v0    # "focusPosition":F
    goto :goto_0

    .line 711
    .end local v0    # "focusPosition":F
    .end local v1    # "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_1
    return v5
.end method

.method private applyISO(I)Z
    .locals 4
    .param p1, "iso"    # I

    .prologue
    .line 718
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    .line 720
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 721
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

    .line 724
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "iso"

    const-string/jumbo v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 726
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private applyManualCapture(Z)Z
    .locals 2
    .param p1, "isManual"    # Z

    .prologue
    .line 733
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    .line 735
    if-eqz p1, :cond_0

    .line 736
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "manual"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 739
    const/4 v0, 0x1

    return v0

    .line 738
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

    .line 741
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private applyMirrorMode(Z)Z
    .locals 4
    .param p1, "isMirrored"    # Z

    .prologue
    const/4 v2, 0x0

    .line 748
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_3

    .line 750
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 751
    return v2

    .line 752
    :cond_0
    if-eqz p1, :cond_2

    .line 754
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "applyMirrorMode() - Is mirror"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->calculateJpegOrientation()I

    move-result v0

    .line 756
    .local v0, "jpegOrientation":I
    rem-int/lit16 v1, v0, 0xb4

    if-nez v1, :cond_1

    .line 757
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "snapshot-picture-flip"

    const-string/jumbo v3, "flip-h"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    .end local v0    # "jpegOrientation":I
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 759
    .restart local v0    # "jpegOrientation":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "snapshot-picture-flip"

    const-string/jumbo v3, "flip-v"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 762
    .end local v0    # "jpegOrientation":I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "snapshot-picture-flip"

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 765
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

    .line 773
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 775
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyOneplusCallback() - Camera is released"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    return v8

    .line 780
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_OneplusCallback:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 785
    :try_start_0
    const-string/jumbo v4, "android.hardware.Camera$OneplusCallback"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 786
    .local v1, "oneplusCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    new-instance v6, Lcom/oneplus/camera/LegacyCameraImpl$11;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/LegacyCameraImpl$11;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;)V

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_OneplusCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    .end local v1    # "oneplusCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-string/jumbo v4, "android.hardware.Camera$OneplusCallback"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 820
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

    .line 821
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

    .line 828
    return v9

    .line 810
    .end local v1    # "oneplusCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "setOneplusCallbackMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyOneplusCallback() - Cannot set Oneplus callback"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 812
    return v8

    .line 824
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 825
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyOneplusCallback() - Fail to set Oneplus callback"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 826
    return v8
.end method

.method private applyParameters()Z
    .locals 3

    .prologue
    .line 835
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 841
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "applyParameters() - Error when set parameters"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 846
    const/4 v1, 0x0

    return v1
.end method

.method private applyPictureSize(Landroid/util/Size;)Z
    .locals 3
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 859
    const/4 v0, 0x1

    return v0

    .line 861
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
    .line 934
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_2

    .line 938
    if-nez p1, :cond_0

    .line 940
    :try_start_0
    iget-boolean v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v2, :cond_1

    .line 941
    iget-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    .line 945
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->mappingToDriverFpsRange(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    .line 946
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

    .line 947
    const/4 v2, 0x1

    return v2

    .line 943
    .end local v0    # "driverFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    iget-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 950
    :catch_0
    move-exception v1

    .line 951
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "applyPreviewFpsRange() - Error when set preview FPS range"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 954
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private applyPreviewSize(Landroid/util/Size;)Z
    .locals 3
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 961
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 964
    const/4 v0, 0x1

    return v0

    .line 966
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

    .line 869
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 871
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyProcessCallback() - Camera is released"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    return v8

    .line 876
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ProcessCallback:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 880
    :try_start_0
    const-string/jumbo v4, "android.hardware.Camera$ProcessCallback"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 881
    .local v1, "processCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    iput-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ProcessCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    .end local v1    # "processCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "applyProcessCallback() - Set process callback"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string/jumbo v4, "android.hardware.Camera$ProcessCallback"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 906
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

    .line 907
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

    .line 914
    return v9

    .line 895
    .end local v1    # "processCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "setProcessCallbackMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyProcessCallback() - Cannot set process callback"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 897
    return v8

    .line 910
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 911
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyProcessCallback() - Fail to set process callback"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 912
    return v8
.end method

.method private applyRecordingMode(Z)Z
    .locals 1
    .param p1, "isRecordingMode"    # Z

    .prologue
    .line 922
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 925
    const/4 v0, 0x1

    return v0

    .line 927
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private applySceneMode(I)Z
    .locals 3
    .param p1, "sceneMode"    # I

    .prologue
    .line 973
    const/4 v1, 0x0

    .line 974
    .local v1, "success":Z
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_1

    .line 977
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 978
    const/4 v2, 0x1

    return v2

    .line 981
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->mappingToLegacyScene(I)Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "legacySceneMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 983
    const/4 v1, 0x1

    .line 985
    .end local v0    # "legacySceneMode":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private applyServiceMode()Z
    .locals 3

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyServiceMode()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "is-service-mode"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const/4 v0, 0x1

    return v0

    .line 1142
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private applyThumbnailSize()Z
    .locals 6

    .prologue
    const/16 v4, 0x64

    const/4 v5, 0x1

    .line 990
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_1

    .line 992
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v1

    .line 993
    .local v1, "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->getOptimalThumbnailSize(Ljava/util/List;II)Landroid/util/Size;

    move-result-object v0

    .line 994
    .local v0, "thumbSize":Landroid/util/Size;
    if-eqz v0, :cond_0

    .line 995
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "applyThumbnailSize() - Thumbnail image size : "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1001
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 1002
    return v5

    .line 998
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3, v4, v4, v5}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v0

    .line 999
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

    .line 1004
    .end local v0    # "thumbSize":Landroid/util/Size;
    .end local v1    # "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private applyVideoSize(Landroid/util/Size;)Z
    .locals 4
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 1012
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

    .line 1013
    const/4 v0, 0x1

    return v0

    .line 1015
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private applyWatermarkBoundsForRotatedPicture(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1022
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1

    .line 1027
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "watermark-bounds-for-rotated-picture"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const/4 v1, 0x1

    return v1

    .line 1027
    :cond_0
    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "applyWatermarkBoundsForRotatedPicture() - Error to apply watermark bounds for rotated picture"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1035
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    return v1
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
    .line 1042
    .local p1, "boundsMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Landroid/graphics/Rect;>;"
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v6, :cond_4

    .line 1047
    const/4 v1, 0x0

    .line 1048
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

    .line 1050
    .local v3, "size":Landroid/util/Size;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1051
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

    .line 1052
    .local v5, "sizeBoundsStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1053
    move-object v1, v5

    .local v1, "boundsStr":Ljava/lang/String;
    goto :goto_0

    .line 1056
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

    .line 1057
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

    .line 1060
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

    .line 1063
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1064
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "watermark-bounds"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v7, v8, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const/4 v6, 0x1

    return v6

    .line 1060
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_2
    const-string/jumbo v6, ""

    goto :goto_1

    .line 1064
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_3
    const-string/jumbo v6, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1068
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "size$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 1069
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "applyWatermarkBounds() - Error to apply watermark bounds"

    invoke-static {v6, v7, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1072
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v6, 0x0

    return v6
.end method

.method private applyWatermarkFilePathForRotatedPicture(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1079
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1

    .line 1084
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "watermark-file-path-for-rotated-picture"

    if-eqz p1, :cond_0

    .end local p1    # "filePath":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v2, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const/4 v1, 0x1

    return v1

    .line 1084
    .restart local p1    # "filePath":Ljava/lang/String;
    :cond_0
    const-string/jumbo p1, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1088
    .end local p1    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1089
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "applyWatermarkFilePathForRotatedPicture() - Error to apply watermark file path for rotated picture"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1092
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    return v1
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
    .line 1099
    .local p1, "filePathsMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v6, :cond_4

    .line 1104
    const/4 v2, 0x0

    .line 1105
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

    .line 1107
    .local v3, "size":Landroid/util/Size;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1108
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

    .line 1109
    .local v5, "sizeFilePathStr":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1110
    move-object v2, v5

    .local v2, "filePathsStr":Ljava/lang/String;
    goto :goto_0

    .line 1113
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

    .line 1114
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

    .line 1117
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

    .line 1120
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1121
    .restart local v1    # "filePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v7, "watermark-file-path"

    if-eqz v1, :cond_3

    .end local v1    # "filePath":Ljava/lang/String;
    :goto_2
    invoke-virtual {v6, v7, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const/4 v6, 0x1

    return v6

    .line 1117
    :cond_2
    const-string/jumbo v6, ""

    goto :goto_1

    .line 1121
    .restart local v1    # "filePath":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1125
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v4    # "size$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 1126
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "applyWatermarkFilePaths() - Error to apply watermark file paths"

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1129
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v6, 0x0

    return v6
.end method

.method private applyZoom(F)Z
    .locals 5
    .param p1, "digitalZoom"    # F

    .prologue
    .line 1148
    const/4 v0, 0x0

    .line 1149
    .local v0, "success":Z
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 1151
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->mappingToDriverZoom(Ljava/lang/Float;)I

    move-result v1

    .line 1152
    .local v1, "zoom":I
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1154
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1155
    const/4 v0, 0x1

    .line 1156
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "applyZoom() - Zoom: "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1169
    .end local v1    # "zoom":I
    :cond_0
    :goto_0
    return v0

    .line 1160
    .restart local v1    # "zoom":I
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 1162
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopSmoothZoom()V

    .line 1163
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 1164
    const/4 v0, 0x1

    .line 1165
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
    .line 1220
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v0

    .line 1221
    .local v0, "deviceOrientation":I
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v1, v2, :cond_0

    .line 1222
    neg-int v0, v0

    .line 1223
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

    .line 1347
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v5, v6, :cond_0

    .line 1349
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

    .line 1350
    return v10

    .line 1352
    :cond_0
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v5, v6, :cond_1

    .line 1354
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

    .line 1355
    return v10

    .line 1359
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TakenTime:J

    .line 1362
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

    .line 1363
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1365
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1366
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

    .line 1367
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

    .line 1368
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x1

    .line 1369
    .local v4, "suffix":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1371
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

    .line 1372
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

    .line 1373
    .restart local v2    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1375
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

    .line 1376
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v6, "image-file-path"

    invoke-virtual {v5, v6, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "suffix":I
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->prepareCaptureParameters()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1383
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "captureInternal() - Error when preparing capture parameters"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    return v10

    .line 1388
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1389
    return v10

    .line 1393
    :cond_6
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1466
    :cond_7
    :goto_1
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v6, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1469
    return v11

    .line 1397
    :sswitch_0
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "captureInternal() - Take picture"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    iget-boolean v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsProcessCallbackSupported:Z

    if-nez v5, :cond_8

    iget v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-eq v5, v11, :cond_a

    .line 1401
    :cond_8
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_LONG_PROCESSING_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1420
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->isAutoHdrNeeded()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1435
    :cond_9
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "captureInternal() - clear raw callback"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    invoke-direct {p0, v10}, Lcom/oneplus/camera/LegacyCameraImpl;->applyOneplusCallback(Z)Z

    .line 1439
    :goto_3
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->takePicture()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1441
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "captureInternal() - Take picture failed"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    return v10

    .line 1406
    :cond_a
    iget v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    sparse-switch v5, :sswitch_data_1

    .line 1413
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_LONG_PROCESSING_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 1410
    :sswitch_1
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_LONG_PROCESSING_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 1420
    :cond_b
    iget v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ne v5, v11, :cond_9

    .line 1422
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "captureInternal() - Set raw callback"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyDngImageCallbackBuffer()Z

    .line 1428
    invoke-direct {p0, v11}, Lcom/oneplus/camera/LegacyCameraImpl;->applyOneplusCallback(Z)Z

    .line 1431
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_3

    .line 1448
    :sswitch_2
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v5, v6}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1450
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1452
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

    .line 1453
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    iput-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSizeBackup:Landroid/util/Size;

    .line 1454
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1458
    :cond_c
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "captureInternal() - Invalid preview size and picture size"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    return v10

    .line 1393
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x100 -> :sswitch_0
    .end sparse-switch

    .line 1406
    :sswitch_data_1
    .sparse-switch
        0xb -> :sswitch_1
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method private checkAWBModes()V
    .locals 7

    .prologue
    .line 1531
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v5, :cond_2

    .line 1535
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1536
    .local v0, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v4

    .line 1537
    .local v4, "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_6

    .line 1539
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1540
    .local v1, "awbStr":Ljava/lang/String;
    const-string/jumbo v5, "auto"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1541
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1537
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1542
    :cond_1
    const-string/jumbo v5, "cloudy-daylight"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1543
    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1555
    .end local v0    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "awbStr":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 1556
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkAWBModes() - Error when get awb modes"

    invoke-static {v5, v6, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1529
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    return-void

    .line 1544
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

    .line 1545
    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1546
    :cond_4
    const-string/jumbo v5, "fluorescent"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1547
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1548
    :cond_5
    const-string/jumbo v5, "incandescent"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1549
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1551
    .end local v1    # "awbStr":Ljava/lang/String;
    :cond_6
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1552
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

    .line 1477
    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 1478
    .local v3, "cameraParameters":Landroid/hardware/Camera$Parameters;
    if-eqz v3, :cond_5

    .line 1483
    :try_start_0
    const-string/jumbo v8, "alternative-picture-sizes"

    invoke-virtual {v3, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1484
    .local v1, "alternativePictureSizesStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 1486
    :cond_0
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "checkAlternativePictureSizes() - Reset alternative picture sizes"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v7, :cond_1

    .line 1488
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "alternative-picture-sizes"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    :cond_1
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    .line 1492
    .local v6, "oldValue":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    .line 1495
    sget-object v7, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ALTERNATIVE_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    invoke-virtual {p0, v7, v6, v8}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1496
    return-void

    .line 1500
    .end local v6    # "oldValue":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1501
    .local v5, "newValue":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const-string/jumbo v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1502
    .local v2, "alternativePictureSizesStrArr":[Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v8, v2

    if-lez v8, :cond_3

    .line 1504
    array-length v8, v2

    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v0, v2, v7

    .line 1505
    .local v0, "alternativePictureSizeStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1504
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1507
    .end local v0    # "alternativePictureSizeStr":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "checkAlternativePictureSizes() - Alternative picture sizes : "

    invoke-static {v7, v8, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1510
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v7, :cond_4

    .line 1511
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "alternative-picture-sizes"

    invoke-virtual {v7, v8, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    :cond_4
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    .line 1515
    .restart local v6    # "oldValue":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    .line 1518
    sget-object v7, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ALTERNATIVE_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    invoke-virtual {p0, v7, v6, v8}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1475
    .end local v1    # "alternativePictureSizesStr":Ljava/lang/String;
    .end local v2    # "alternativePictureSizesStrArr":[Ljava/lang/String;
    .end local v5    # "newValue":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v6    # "oldValue":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_5
    :goto_1
    return-void

    .line 1521
    :catch_0
    move-exception v4

    .line 1522
    .local v4, "e":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "checkAlternativePictureSizes() - Error when get alternative picture sizes"

    invoke-static {v7, v8, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private checkDefaultPreviewFPSRange()V
    .locals 11

    .prologue
    const/16 v10, 0x1e

    const/4 v9, 0x0

    .line 1565
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v6, :cond_4

    .line 1567
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    if-nez v6, :cond_0

    .line 1571
    const/4 v6, 0x2

    :try_start_0
    new-array v5, v6, [I

    .line 1572
    .local v5, "range":[I
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v5}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 1573
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

    .line 1574
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkDefaultPreviewFPSRange() - Default photo preview FPS range: "

    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    invoke-static {v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1581
    .end local v5    # "range":[I
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-nez v6, :cond_4

    .line 1583
    sget-object v6, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1584
    .local v3, "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1586
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    .line 1587
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

    .line 1589
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v2, v6, -0x14

    .line 1590
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

    .line 1591
    :cond_1
    iput-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    .line 1584
    .end local v2    # "lowerBoundDiff":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1577
    .end local v1    # "i":I
    .end local v3    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1578
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkDefaultPreviewFPSRange() - Error when get photo preview FPS range"

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1594
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "i":I
    .restart local v3    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_3
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-eqz v6, :cond_5

    .line 1595
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkDefaultPreviewFPSRange() - Default video FPS range : "

    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    invoke-static {v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1563
    .end local v1    # "i":I
    .end local v3    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_4
    :goto_2
    return-void

    .line 1598
    .restart local v1    # "i":I
    .restart local v3    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 1600
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Range;

    iput-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    .line 1601
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

    .line 1604
    :cond_6
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkDefaultPreviewFPSRange() - No suitable FPS range for video"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private checkManualExposureRange()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 1614
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_0

    .line 1618
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v5, "min-exposure-time"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1619
    .local v3, "minExp":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v5, "max-exposure-time"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1620
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

    .line 1621
    .local v1, "expRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1622
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkManualExposureRange() - Exposure range: "

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1612
    .end local v1    # "expRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v2    # "maxExp":Ljava/lang/String;
    .end local v3    # "minExp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1625
    :catch_0
    move-exception v0

    .line 1626
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkManualExposureRange() - Error when get manual exposure range, use [125000,1000000000]"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1627
    new-instance v1, Landroid/util/Range;

    const-wide/32 v4, 0x1e848

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v6, 0x3b9aca00

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1628
    .restart local v1    # "expRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkManualFocusRange()V
    .locals 6

    .prologue
    .line 1637
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_0

    .line 1641
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v5, "min-focus-position"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1642
    .local v3, "minFocus":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v5, "max-focus-position"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1643
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

    .line 1644
    .local v1, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1645
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkManualFocusRange() - Focus range: "

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1635
    .end local v1    # "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .end local v2    # "maxFocus":Ljava/lang/String;
    .end local v3    # "minFocus":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1648
    :catch_0
    move-exception v0

    .line 1649
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkManualFocusRange() - Error when get manual focus range, use [0,499]"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1650
    new-instance v1, Landroid/util/Range;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v5, 0x43f98000    # 499.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1651
    .restart local v1    # "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v4, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkManualISORange()V
    .locals 13

    .prologue
    .line 1660
    iget-object v9, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v9, :cond_3

    .line 1664
    :try_start_0
    iget-object v9, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v10, "iso-values"

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1665
    .local v6, "isoValuesStr":Ljava/lang/String;
    const-string/jumbo v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1666
    .local v5, "isoValuesArr":[Ljava/lang/String;
    const v8, 0x7fffffff

    .line 1667
    .local v8, "minISO":I
    const/high16 v7, -0x80000000

    .line 1668
    .local v7, "maxISO":I
    array-length v9, v5

    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1670
    aget-object v2, v5, v1

    .line 1671
    .local v2, "isoRawValue":Ljava/lang/String;
    const-string/jumbo v9, "^ISO[\\d]+$"

    invoke-virtual {v2, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1673
    const/4 v9, 0x3

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1674
    .local v4, "isoValueStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1675
    .local v3, "isoValue":I
    if-ge v3, v8, :cond_0

    .line 1676
    move v8, v3

    .line 1677
    :cond_0
    if-le v3, v7, :cond_1

    .line 1678
    move v7, v3

    .line 1668
    .end local v3    # "isoValue":I
    .end local v4    # "isoValueStr":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1681
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

    .line 1682
    iget-object v9, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "checkManualISORange() - ISO range: "

    sget-object v11, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v11}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    .end local v1    # "i":I
    .end local v5    # "isoValuesArr":[Ljava/lang/String;
    .end local v6    # "isoValuesStr":Ljava/lang/String;
    .end local v7    # "maxISO":I
    .end local v8    # "minISO":I
    :cond_3
    :goto_1
    return-void

    .line 1685
    :catch_0
    move-exception v0

    .line 1686
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v9, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "checkManualISORange() - Error when get manual ISO range, use [100,1600]"

    invoke-static {v9, v10, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1687
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
    .line 1696
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v5, :cond_0

    .line 1700
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 1701
    .local v3, "fpsRangesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1702
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

    .line 1703
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

    .line 1708
    .end local v1    # "fpsRange":[I
    .end local v2    # "fpsRange$iterator":Ljava/util/Iterator;
    .end local v3    # "fpsRangesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v4    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :catch_0
    move-exception v0

    .line 1709
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkPreviewFPSRanges() - Error when get photo preview FPS range"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1694
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void

    .line 1704
    .restart local v2    # "fpsRange$iterator":Ljava/util/Iterator;
    .restart local v3    # "fpsRangesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v4    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_1
    :try_start_1
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1705
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
    .line 2943
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->getIntListChars(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2940
    return-void
.end method

.method private checkZoomRange()V
    .locals 7

    .prologue
    .line 1718
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 1720
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1722
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    .line 1723
    .local v1, "maxZoom":I
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1724
    .local v0, "maxDigitalZoomm":Ljava/lang/Float;
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    .line 1725
    new-instance v2, Landroid/util/Range;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ZoomRange:Landroid/util/Range;

    .line 1726
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1727
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "checkZoomRange() - Digital zoom range: "

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    const-string/jumbo v5, ", Zoom range: "

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ZoomRange:Landroid/util/Range;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1716
    .end local v0    # "maxDigitalZoomm":Ljava/lang/Float;
    .end local v1    # "maxZoom":I
    :cond_0
    return-void
.end method

.method private closeInternal()V
    .locals 4

    .prologue
    .line 1783
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

    .line 1784
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 1785
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

    .line 1779
    :goto_0
    return-void

    .line 1788
    :catch_0
    move-exception v0

    .line 1789
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "closeInternal() - Cannot release camera, "

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private createCameraArea(Lcom/oneplus/camera/Camera$MeteringRect;)Landroid/hardware/Camera$Area;
    .locals 8
    .param p1, "rect"    # Lcom/oneplus/camera/Camera$MeteringRect;

    .prologue
    const/4 v2, 0x0

    const/high16 v7, 0x44fa0000    # 2000.0f

    const/high16 v6, 0x447a0000    # 1000.0f

    .line 1797
    if-nez p1, :cond_0

    .line 1798
    return-object v2

    .line 1799
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 1800
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getLeft()F

    move-result v2

    mul-float/2addr v2, v7

    sub-float/2addr v2, v6

    float-to-int v2, v2

    .line 1801
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getTop()F

    move-result v3

    mul-float/2addr v3, v7

    sub-float/2addr v3, v6

    float-to-int v3, v3

    .line 1802
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getRight()F

    move-result v4

    mul-float/2addr v4, v7

    sub-float/2addr v4, v6

    float-to-int v4, v4

    .line 1803
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getBottom()F

    move-result v5

    mul-float/2addr v5, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 1799
    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1805
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$MeteringRect;->getWeight()F

    move-result v1

    .line 1806
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
    .line 1813
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    .local p3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-eqz p3, :cond_1

    .line 1815
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 1816
    if-eqz p1, :cond_1

    .line 1818
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1820
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Camera$MeteringRect;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->createCameraArea(Lcom/oneplus/camera/Camera$MeteringRect;)Landroid/hardware/Camera$Area;

    move-result-object v0

    .line 1821
    .local v0, "area":Landroid/hardware/Camera$Area;
    if-eqz v0, :cond_0

    .line 1822
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1818
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1811
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
    .line 1834
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1835
    .local v2, "keyValuePairs":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 1836
    .local v1, "keyValuePair":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "dumpParameters() - "

    invoke-static {v5, v6, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1839
    .end local v1    # "keyValuePair":Ljava/lang/String;
    .end local v2    # "keyValuePairs":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1840
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "dumpParameters() - Error when dump parameters"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1830
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private getCameraCharacteristic()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method private getFocalLength()F
    .locals 4

    .prologue
    .line 1965
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1

    .line 1967
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v0

    .line 1968
    .local v0, "focalLength":F
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1969
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateFocalLength() - Focal length: "

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1970
    :cond_0
    return v0

    .line 1973
    .end local v0    # "focalLength":F
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateFocalLength() - Cannot get focal length"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
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
    .line 2948
    .local p1, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2949
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

    .line 2951
    .local v1, "scene":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->mappingFromLegacyScene(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 2952
    .local v3, "sceneId":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2955
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
    .line 1847
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    .line 1848
    .local v2, "ASPECT_TOLERANCE":D
    if-nez p1, :cond_0

    .line 1849
    const/4 v9, 0x0

    return-object v9

    .line 1851
    :cond_0
    const/4 v4, 0x0

    .line 1852
    .local v4, "optimalSize":Landroid/util/Size;
    move/from16 v0, p2

    int-to-double v12, v0

    move/from16 v0, p3

    int-to-double v14, v0

    div-double v10, v12, v14

    .line 1854
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

    .line 1856
    .local v5, "size":Landroid/hardware/Camera$Size;
    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-double v12, v9

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-double v14, v9

    div-double v6, v12, v14

    .line 1857
    .local v6, "ratio":D
    sub-double v12, v6, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v9, v12, v14

    if-gtz v9, :cond_1

    .line 1859
    if-eqz v4, :cond_2

    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v12

    if-le v9, v12, :cond_1

    .line 1860
    :cond_2
    new-instance v4, Landroid/util/Size;

    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    iget v12, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v9, v12}, Landroid/util/Size;-><init>(II)V

    .local v4, "optimalSize":Landroid/util/Size;
    goto :goto_0

    .line 1862
    .end local v4    # "optimalSize":Landroid/util/Size;
    .end local v5    # "size":Landroid/hardware/Camera$Size;
    .end local v6    # "ratio":D
    :cond_3
    return-object v4
.end method

.method private getPreviewFormat()I
    .locals 3

    .prologue
    .line 1981
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 1983
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    .line 1984
    .local v0, "previewFormat":I
    return v0

    .line 1988
    .end local v0    # "previewFormat":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getPreviewFormat() - Fail to get preview format, use NV21"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    const/16 v1, 0x11

    return v1
.end method

.method private isAutoHdrNeeded()Z
    .locals 5

    .prologue
    const/16 v4, 0x2711

    const/4 v1, 0x0

    .line 1995
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

    .line 1996
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

    .line 1997
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    if-ne v0, v4, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 1996
    goto :goto_0
.end method

.method private isRawCaptureNeeded()Z
    .locals 6

    .prologue
    const/16 v5, 0x2711

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2003
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

    .line 2004
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

    .line 2005
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

    .line 2004
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

    .line 2005
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
    .line 2141
    const/4 v0, 0x0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    const-string/jumbo v1, "action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2145
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2198
    .end local v0    # "outSceneMode":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v0

    .line 2142
    .restart local v0    # "outSceneMode":Ljava/lang/Integer;
    :cond_1
    const-string/jumbo v1, "portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2148
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_2
    const-string/jumbo v1, "landscape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2151
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_3
    const-string/jumbo v1, "night"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2154
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_4
    const-string/jumbo v1, "night-portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2157
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_5
    const-string/jumbo v1, "theatre"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2160
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_6
    const-string/jumbo v1, "beach"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2163
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_7
    const-string/jumbo v1, "snow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2166
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_8
    const-string/jumbo v1, "sunset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2169
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto :goto_0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_9
    const-string/jumbo v1, "steadyphoto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2172
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_a
    const-string/jumbo v1, "fireworks"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2175
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_b
    const-string/jumbo v1, "sports"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2178
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_c
    const-string/jumbo v1, "party"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2181
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_d
    const-string/jumbo v1, "candlelight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2184
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_e
    const-string/jumbo v1, "barcode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2187
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_f
    const-string/jumbo v1, "hdr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2190
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "outSceneMode":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 2142
    .local v0, "outSceneMode":Ljava/lang/Integer;
    :cond_10
    const-string/jumbo v1, "hdr-auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2193
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
    .line 2012
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRangeMap:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 2013
    .local v3, "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    .line 2014
    return-object v3

    .line 2017
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    mul-int/lit16 v12, v0, 0x3e8

    .line 2018
    .local v12, "requestFpsLower":I
    invoke-virtual/range {p1 .. p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    mul-int/lit16 v13, v0, 0x3e8

    .line 2019
    .local v13, "requestFpsUpper":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 2021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v14

    .line 2022
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

    .line 2024
    .local v15, "supportedFpsRange":[I
    const/4 v2, 0x0

    .line 2025
    .local v2, "chooseThis":Z
    const/16 v17, 0x0

    aget v17, v15, v17

    sub-int v17, v17, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-double v8, v0

    .line 2026
    .local v8, "diffLower":D
    const/16 v17, 0x1

    aget v17, v15, v17

    sub-int v17, v17, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-double v10, v0

    .line 2027
    .local v10, "diffUpper":D
    if-nez v3, :cond_3

    .line 2029
    const-wide v18, 0x408f400000000000L    # 1000.0

    cmpg-double v17, v8, v18

    if-gez v17, :cond_2

    const-wide v18, 0x408f400000000000L    # 1000.0

    cmpg-double v17, v10, v18

    if-gez v17, :cond_2

    .line 2030
    const/4 v2, 0x1

    .line 2039
    :cond_2
    :goto_1
    if-eqz v2, :cond_1

    .line 2040
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

    .line 2032
    :cond_3
    const-wide v18, 0x408f400000000000L    # 1000.0

    cmpg-double v17, v8, v18

    if-gez v17, :cond_2

    const-wide v18, 0x408f400000000000L    # 1000.0

    cmpg-double v17, v10, v18

    if-gez v17, :cond_2

    .line 2034
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

    .line 2035
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

    .line 2036
    .local v6, "diffChoosedUpper":D
    cmpg-double v17, v8, v4

    if-gez v17, :cond_2

    cmpg-double v17, v10, v6

    if-gez v17, :cond_2

    .line 2037
    const/4 v2, 0x1

    goto :goto_1

    .line 2042
    .end local v2    # "chooseThis":Z
    .end local v4    # "diffChoosedLower":D
    .end local v6    # "diffChoosedUpper":D
    .end local v8    # "diffLower":D
    .end local v10    # "diffUpper":D
    .end local v15    # "supportedFpsRange":[I
    :cond_4
    if-eqz v3, :cond_5

    .line 2043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "mappingToDriverFPSRange() - Choosed FPS range: "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2049
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRangeMap:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    .end local v14    # "supportedFpsRagnes":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v16    # "supportedFpsRange$iterator":Ljava/util/Iterator;
    :goto_3
    return-object v3

    .line 2046
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

    .line 2047
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

    .line 2053
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

    .line 2054
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
    .locals 4
    .param p1, "digitalZoom"    # Ljava/lang/Float;

    .prologue
    const/4 v2, 0x0

    .line 2063
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ZoomRange:Landroid/util/Range;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    if-nez v1, :cond_1

    .line 2064
    :cond_0
    return v2

    .line 2063
    :cond_1
    if-eqz p1, :cond_0

    .line 2065
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    invoke-virtual {v1, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2066
    return v2

    .line 2067
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v3, v1

    div-float v0, v2, v1

    .line 2068
    .local v0, "digitalZoomFactor":F
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ZoomRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v2, v1

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ZoomRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ZoomRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v3, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private mappingToLegacyScene(I)Ljava/lang/String;
    .locals 1
    .param p1, "inSceneMode"    # I

    .prologue
    .line 2075
    const-string/jumbo v0, "auto"

    .line 2076
    .local v0, "outSceneMode":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 2136
    :goto_0
    :sswitch_0
    return-object v0

    .line 2083
    :sswitch_1
    const-string/jumbo v0, "action"

    goto :goto_0

    .line 2086
    :sswitch_2
    const-string/jumbo v0, "portrait"

    goto :goto_0

    .line 2089
    :sswitch_3
    const-string/jumbo v0, "landscape"

    goto :goto_0

    .line 2092
    :sswitch_4
    const-string/jumbo v0, "night"

    goto :goto_0

    .line 2095
    :sswitch_5
    const-string/jumbo v0, "night-portrait"

    goto :goto_0

    .line 2098
    :sswitch_6
    const-string/jumbo v0, "theatre"

    goto :goto_0

    .line 2101
    :sswitch_7
    const-string/jumbo v0, "beach"

    goto :goto_0

    .line 2104
    :sswitch_8
    const-string/jumbo v0, "snow"

    goto :goto_0

    .line 2107
    :sswitch_9
    const-string/jumbo v0, "sunset"

    goto :goto_0

    .line 2110
    :sswitch_a
    const-string/jumbo v0, "steadyphoto"

    goto :goto_0

    .line 2113
    :sswitch_b
    const-string/jumbo v0, "fireworks"

    goto :goto_0

    .line 2116
    :sswitch_c
    const-string/jumbo v0, "sports"

    goto :goto_0

    .line 2119
    :sswitch_d
    const-string/jumbo v0, "party"

    goto :goto_0

    .line 2122
    :sswitch_e
    const-string/jumbo v0, "candlelight"

    goto :goto_0

    .line 2125
    :sswitch_f
    const-string/jumbo v0, "barcode"

    goto :goto_0

    .line 2128
    :sswitch_10
    const-string/jumbo v0, "hdr"

    goto :goto_0

    .line 2131
    :sswitch_11
    const-string/jumbo v0, "hdr-auto"

    goto :goto_0

    .line 2076
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

.method private onAeStateChanged(I)V
    .locals 5
    .param p1, "aeState"    # I

    .prologue
    .line 2205
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    .line 2206
    .local v1, "oldState":Lcom/oneplus/camera/AutoExposureState;
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    .line 2207
    .local v0, "newState":Lcom/oneplus/camera/AutoExposureState;
    packed-switch p1, :pswitch_data_0

    .line 2219
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

    .line 2224
    :goto_0
    if-eq v0, v1, :cond_0

    .line 2226
    iput-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    .line 2227
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

    .line 2228
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v2, v1, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2202
    :cond_0
    return-void

    .line 2210
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/AutoExposureState;->CONVERGED:Lcom/oneplus/camera/AutoExposureState;

    goto :goto_0

    .line 2213
    :pswitch_1
    sget-object v0, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    goto :goto_0

    .line 2216
    :pswitch_2
    sget-object v0, Lcom/oneplus/camera/AutoExposureState;->SEARCHING:Lcom/oneplus/camera/AutoExposureState;

    goto :goto_0

    .line 2207
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
    .line 2237
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 2238
    .local v0, "oldState":Lcom/oneplus/camera/FocusState;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-FocusStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2245
    return-void

    .line 2249
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2252
    if-eqz p1, :cond_0

    sget-object v1, Lcom/oneplus/camera/FocusState;->FOCUSED:Lcom/oneplus/camera/FocusState;

    :goto_0
    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 2253
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2234
    return-void

    .line 2252
    :cond_0
    sget-object v1, Lcom/oneplus/camera/FocusState;->UNFOCUSED:Lcom/oneplus/camera/FocusState;

    goto :goto_0

    .line 2238
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

    .line 2260
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 2261
    .local v0, "oldState":Lcom/oneplus/camera/FocusState;
    if-eqz p1, :cond_1

    .line 2263
    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-eq v0, v1, :cond_0

    .line 2266
    const/16 v1, 0x2710

    const-wide/16 v2, 0x1388

    invoke-static {p0, v1, v4, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 2269
    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 2270
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2258
    :cond_0
    :goto_0
    return-void

    .line 2273
    :cond_1
    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-ne v0, v1, :cond_0

    .line 2274
    invoke-direct {p0, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->onAutoFocus(Z)V

    goto :goto_0
.end method

.method private onAutoFocusTimeout()V
    .locals 2

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAutoFocusTimeout()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->onAutoFocus(Z)V

    .line 2279
    return-void
.end method

.method private onAutoHdrStateChanged(I)V
    .locals 5
    .param p1, "hdrState"    # I

    .prologue
    .line 2289
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    .line 2290
    .local v1, "oldState":Z
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    .line 2291
    .local v0, "newState":Z
    packed-switch p1, :pswitch_data_0

    .line 2300
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

    .line 2305
    .end local v0    # "newState":Z
    :goto_0
    if-eq v0, v1, :cond_0

    .line 2307
    iput-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    .line 2308
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

    .line 2309
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AUTO_HDR_STATUS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2286
    :cond_0
    return-void

    .line 2294
    .restart local v0    # "newState":Z
    :pswitch_0
    const/4 v0, 0x0

    .line 2295
    .local v0, "newState":Z
    goto :goto_0

    .line 2297
    .local v0, "newState":Z
    :pswitch_1
    const/4 v0, 0x1

    .line 2298
    .local v0, "newState":Z
    goto :goto_0

    .line 2291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onBufferedPreviewCallbackReceived([BLandroid/hardware/Camera;)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/16 v2, 0x11

    const/4 v1, -0x1

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 2317
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v5

    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v3}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_0

    .line 2322
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBufferedPreviewCallbackReceived() - Invalid preview state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    return-void

    .line 2327
    :pswitch_0
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2330
    if-eqz p1, :cond_0

    array-length v3, p1

    iget v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewCallbackByteLength:I

    if-eq v3, v5, :cond_1

    .line 2332
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBufferedPreviewCallbackReceived() - Invalid preview data"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    return-void

    .line 2337
    :cond_1
    const/4 v4, 0x0

    .line 2338
    .local v4, "planes":[Lcom/oneplus/camera/media/ImagePlane;
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2339
    .local v9, "pictureFormat":I
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->hasHandlers(Lcom/oneplus/base/EventKey;)Z

    move-result v8

    .line 2340
    .local v8, "hasHandlers":Z
    const/16 v3, 0x100

    if-eq v9, v3, :cond_6

    const/4 v10, 0x1

    .line 2341
    .local v10, "yuvCapture":Z
    :goto_0
    if-nez v8, :cond_2

    if-eqz v10, :cond_7

    .line 2342
    :cond_2
    new-array v4, v6, [Lcom/oneplus/camera/media/ImagePlane;

    .end local v4    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    new-instance v3, Lcom/oneplus/camera/media/ImagePlane;

    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-direct {v3, p1, v6, v5}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 2347
    :goto_1
    if-eqz v8, :cond_3

    if-eqz v4, :cond_3

    .line 2348
    sget-object v11, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v5, v0

    invoke-static/range {v0 .. v7}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v3

    invoke-virtual {p0, v11, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2351
    :cond_3
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v3, v5, :cond_4

    .line 2353
    packed-switch v9, :pswitch_data_1

    .line 2362
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-eqz v0, :cond_5

    .line 2363
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 2314
    :cond_5
    return-void

    .line 2340
    .end local v10    # "yuvCapture":Z
    .restart local v4    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "yuvCapture":Z
    goto :goto_0

    .line 2344
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->removePreviewCallbacks()V

    goto :goto_1

    .line 2356
    .end local v4    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    :pswitch_1
    sget-object v11, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v5, v0

    invoke-static/range {v0 .. v7}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_2

    .line 2317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 2353
    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
    .end packed-switch
.end method

.method private onCaptureCompleted()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2370
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureCompleted()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    iput v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    .line 2374
    iput v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PostviewReceivedCount:I

    .line 2375
    iput v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedCount:I

    .line 2376
    iput v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    .line 2377
    iput v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    .line 2378
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2379
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2380
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2381
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2382
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2384
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2385
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->applySceneMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2386
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 2390
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSizeBackup:Landroid/util/Size;

    if-eqz v0, :cond_1

    .line 2392
    invoke-virtual {p0, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->stopPreview(I)V

    .line 2393
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSizeBackup:Landroid/util/Size;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2394
    iput-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSizeBackup:Landroid/util/Size;

    .line 2398
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

    .line 2399
    :cond_2
    :goto_0
    invoke-virtual {p0, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->stopPreview(I)V

    .line 2402
    :cond_3
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/oneplus/base/Device;->isOnePlus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2368
    :cond_4
    :goto_1
    return-void

    .line 2398
    :cond_5
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ISOValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 2403
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

    .line 2409
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

    .line 2416
    sget-object v6, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    .line 2417
    .local v1, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2423
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

    .line 2424
    return-void

    .line 2411
    .end local v1    # "captureState":Lcom/oneplus/camera/OperationState;
    :cond_0
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDngImageReceived() - Do not need raw capture"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    return-void

    .line 2426
    .restart local v1    # "captureState":Lcom/oneplus/camera/OperationState;
    :pswitch_1
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v6, :cond_1

    .line 2428
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDngImageReceived() - No capture handle"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    return-void

    .line 2433
    :cond_1
    if-nez p1, :cond_2

    .line 2435
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDngImageReceived() - data is null"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    invoke-direct {p0, v8, v8, v8}, Lcom/oneplus/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 2437
    return-void

    .line 2441
    :cond_2
    new-array v5, v10, [Lcom/oneplus/camera/media/ImagePlane;

    new-instance v6, Lcom/oneplus/camera/media/ImagePlane;

    array-length v7, p1

    invoke-direct {v6, p1, v10, v7}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    aput-object v6, v5, v9

    .line 2444
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    iget v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    .line 2445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2446
    .local v3, "logBuffer":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "{ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2447
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_4

    .line 2449
    if-lez v2, :cond_3

    .line 2450
    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2451
    :cond_3
    aget-object v6, v5, v2

    invoke-virtual {v6}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2447
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2453
    :cond_4
    const-string/jumbo v6, " }"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2454
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDngImageReceived() - Index : "

    iget v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, ", picture data size : "

    invoke-static {v6, v7, v8, v9, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2457
    iget v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v6, :cond_5

    iget v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    iget v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-le v6, v7, :cond_5

    .line 2459
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDngImageReceived() - Unexpected picture, drop"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    return-void

    .line 2464
    :cond_5
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2465
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    if-nez v0, :cond_6

    .line 2467
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2468
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDngImageReceived() - Received picture before capture completed"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    return-void

    .line 2473
    :cond_6
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/oneplus/camera/media/ImagePlane;

    .line 2474
    .local v4, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v4, :cond_7

    .line 2476
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onDngImageReceived() - Wait for picture"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2478
    return-void

    .line 2482
    :cond_7
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2485
    .restart local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    invoke-direct {p0, v0, v4, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 2407
    return-void

    .line 2417
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
    .line 2491
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

    .line 2498
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 2499
    .local v0, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2505
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

    .line 2506
    return-void

    .line 2493
    .end local v0    # "captureState":Lcom/oneplus/camera/OperationState;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDngMetadataReceived() - Do not need raw capture"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    return-void

    .line 2508
    .restart local v0    # "captureState":Lcom/oneplus/camera/OperationState;
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v3, :cond_1

    .line 2510
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDngMetadataReceived() - No capture handle"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    return-void

    .line 2515
    :cond_1
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 2518
    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedCount:I

    .line 2521
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDngMetadataReceived() - Index : "

    iget v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2524
    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedCount:I

    iget v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-le v3, v4, :cond_2

    .line 2526
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDngMetadataReceived() - Unexpected call-back, drop"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    return-void

    .line 2532
    :cond_2
    const/4 v2, 0x0

    .line 2534
    .local v2, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/camera/media/ImagePlane;

    .line 2535
    .local v1, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v1, :cond_3

    .line 2537
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDngMetadataReceived() - Wait for picture"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v3, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2539
    return-void

    .line 2543
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v2, [Lcom/oneplus/camera/media/ImagePlane;

    .line 2544
    .local v2, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v2, :cond_4

    .line 2546
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDngMetadataReceived() - Wait for raw picture"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v3, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2548
    return-void

    .line 2552
    :cond_4
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v1, [Lcom/oneplus/camera/media/ImagePlane;

    .line 2555
    .restart local v1    # "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    invoke-direct {p0, p2, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 2489
    return-void

    .line 2499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onFaceDetection([Landroid/hardware/Camera$Face;)V
    .locals 5
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 2562
    iget-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    if-nez v3, :cond_0

    .line 2563
    return-void

    .line 2566
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceListIndex:I

    aget-object v0, v3, v4

    .line 2567
    .local v0, "currentFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    if-eqz p1, :cond_1

    array-length v3, p1

    if-nez v3, :cond_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2568
    return-void

    .line 2571
    :cond_2
    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceListIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceListIndex:I

    .line 2572
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceListIndex:I

    aget-object v2, v3, v4

    .line 2573
    .local v2, "newFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    if-eqz p1, :cond_3

    array-length v3, p1

    if-lez v3, :cond_3

    .line 2575
    array-length v3, p1

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2576
    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/oneplus/camera/Camera$Face;->obtain(Landroid/hardware/Camera$Face;)Lcom/oneplus/camera/Camera$Face;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2575
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2580
    .end local v1    # "i":I
    :cond_3
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2583
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 2584
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Camera$Face;

    invoke-virtual {v3}, Lcom/oneplus/camera/Camera$Face;->recycle()V

    .line 2583
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2585
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2559
    return-void
.end method

.method private onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V
    .locals 20
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p2, "picturePlanes"    # [Lcom/oneplus/camera/media/ImagePlane;
    .param p3, "rawPicturePlanes"    # [Lcom/oneplus/camera/media/ImagePlane;

    .prologue
    .line 2656
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oneplus/camera/OperationState;

    .line 2657
    .local v18, "captureState":Lcom/oneplus/camera/OperationState;
    sget-object v19, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->FRAME_COUNT_REACHED:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    .line 2660
    .local v19, "takingPictureResult":Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    if-nez v2, :cond_4

    .line 2661
    :cond_0
    sget-object v19, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_JPEG:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    .line 2670
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-LegacyCameraImpl$TakingPictureResultSwitchesValues()[I

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2680
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TakenTime:J

    .line 2681
    .local v8, "takenTime":J
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2682
    .local v4, "pictureFormat":I
    sget-object v10, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    const/4 v7, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v9}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2684
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2686
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Size;

    .line 2687
    .local v13, "sensorSize":Landroid/util/Size;
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v11, v3, -0x1

    const/16 v12, 0x20

    move-object/from16 v14, p3

    move-object/from16 v15, p1

    move-wide/from16 v16, v8

    invoke-static/range {v10 .. v17}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2694
    .end local v4    # "pictureFormat":I
    .end local v8    # "takenTime":J
    .end local v13    # "sensorSize":Landroid/util/Size;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-LegacyCameraImpl$TakingPictureResultSwitchesValues()[I

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 2653
    :cond_3
    :goto_2
    return-void

    .line 2662
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    array-length v2, v0

    if-nez v2, :cond_6

    .line 2663
    :cond_5
    sget-object v19, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_RAW:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    goto/16 :goto_0

    .line 2664
    :cond_6
    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_7

    .line 2665
    sget-object v19, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->CAPTURE_STOPPING:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    goto/16 :goto_0

    .line 2666
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ge v2, v3, :cond_1

    .line 2667
    :cond_8
    sget-object v19, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->TAKE_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    goto/16 :goto_0

    .line 2675
    :pswitch_0
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;I)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_1

    .line 2697
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - Frame count reached, start completing capture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V

    goto :goto_2

    .line 2702
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TakePictureFailedOnShutter:Z

    if-eqz v2, :cond_3

    .line 2704
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TakePictureFailedOnShutter:Z

    .line 2705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - Take next picture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/LegacyCameraImpl;->takePicture()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - Cannot take next picture, stop"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2709
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V

    goto/16 :goto_2

    .line 2716
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - Capture failed, start completing capture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2717
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V

    goto/16 :goto_2

    .line 2721
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - Already stop capture, start completing capture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/LegacyCameraImpl;->onCaptureCompleted()V

    goto/16 :goto_2

    .line 2670
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2694
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
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

    .line 2733
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v6, :cond_0

    .line 2735
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - No capture handle"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    return-void

    .line 2738
    :cond_0
    sget-object v6, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    .line 2739
    .local v1, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2745
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

    .line 2746
    return-void

    .line 2750
    :pswitch_1
    if-nez p1, :cond_1

    .line 2752
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - data is null"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    invoke-direct {p0, v8, v8, v8}, Lcom/oneplus/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 2754
    return-void

    .line 2758
    :cond_1
    new-array v4, v10, [Lcom/oneplus/camera/media/ImagePlane;

    new-instance v6, Lcom/oneplus/camera/media/ImagePlane;

    array-length v7, p1

    invoke-direct {v6, p1, v10, v7}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    aput-object v6, v4, v9

    .line 2761
    .local v4, "picturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    iget v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    .line 2762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2763
    .local v3, "logBuffer":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "{ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2764
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_3

    .line 2766
    if-lez v2, :cond_2

    .line 2767
    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2768
    :cond_2
    aget-object v6, v4, v2

    invoke-virtual {v6}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2764
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2770
    :cond_3
    const-string/jumbo v6, " }"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2771
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Index : "

    iget v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, ", picture data size : "

    invoke-static {v6, v7, v8, v9, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2774
    iget v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    iget v7, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-le v6, v7, :cond_4

    .line 2776
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Unexpected picture, drop"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    return-void

    .line 2781
    :cond_4
    const/4 v0, 0x0

    .line 2782
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    const/4 v5, 0x0

    .line 2785
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    iget v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    const/16 v7, 0x2711

    if-ne v6, v7, :cond_5

    .line 2787
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - auto HDR scene"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2788
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v5, [Lcom/oneplus/camera/media/ImagePlane;

    .line 2789
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2790
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    invoke-direct {p0, v0, v4, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 2791
    return-void

    .line 2794
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2796
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2797
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    if-nez v0, :cond_6

    .line 2799
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2800
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Received picture before capture completed"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    return-void

    .line 2804
    :cond_6
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    check-cast v5, [Lcom/oneplus/camera/media/ImagePlane;

    .line 2805
    .local v5, "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    if-nez v5, :cond_7

    .line 2807
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPictureReceived() - Wait for raw picture"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2809
    return-void

    .line 2812
    :cond_7
    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2816
    .end local v5    # "rawPicturePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_8
    invoke-direct {p0, v0, v4, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/oneplus/camera/media/ImagePlane;[Lcom/oneplus/camera/media/ImagePlane;)V

    .line 2730
    return-void

    .line 2739
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onPostviewReceived([BLandroid/hardware/Camera;)V
    .locals 32
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 2593
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

    .line 2640
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

    .line 2643
    .local v18, "planes":[Lcom/oneplus/camera/media/ImagePlane;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPostviewReceived() - Index : "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PostviewReceivedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2644
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PostviewReceivedCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PostviewReceivedCount:I

    .line 2647
    if-eqz v18, :cond_1

    .line 2648
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PostviewReceivedCount:I

    add-int/lit8 v15, v3, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const/16 v16, 0x11

    const/16 v19, 0x0

    invoke-static/range {v14 .. v21}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2590
    :cond_1
    return-void

    .line 2596
    .end local v18    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    move-object/from16 v25, v0

    .line 2597
    .local v25, "pictureSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/graphics/Rect;

    .line 2598
    .local v27, "watermarkBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 2599
    .local v30, "watermarkFilePath":Ljava/lang/String;
    if-eqz v27, :cond_3

    if-nez v30, :cond_4

    .line 2600
    :cond_3
    return-void

    .line 2603
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    .line 2604
    .local v28, "time":J
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 2605
    .local v24, "nv21BufferSize":I
    move/from16 v0, v24

    new-array v5, v0, [B

    .line 2606
    .local v5, "nv21Buffer":[B
    move/from16 v0, v24

    new-array v6, v0, [B

    .line 2607
    .local v6, "nv21AlphaBuffer":[B
    const/4 v3, 0x0

    const/16 v22, 0x0

    .local v22, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2609
    .end local v22    # "is":Ljava/io/InputStream;
    .local v23, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v5, v2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 2610
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v6, v2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2617
    if-eqz v23, :cond_5

    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2613
    :catch_0
    move-exception v13

    .local v13, "e":Ljava/lang/Throwable;
    move-object/from16 v22, v23

    .line 2614
    .end local v23    # "is":Ljava/io/InputStream;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPostviewReceived() - Error to read watermark"

    invoke-static {v2, v3, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2615
    const/4 v5, 0x0

    .line 2616
    .local v5, "nv21Buffer":[B
    const/4 v6, 0x0

    .line 2620
    .end local v5    # "nv21Buffer":[B
    .end local v6    # "nv21AlphaBuffer":[B
    .end local v13    # "e":Ljava/lang/Throwable;
    :goto_3
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 2623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v25 .. v25}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v26, v2, v3

    .line 2624
    .local v26, "ratio":F
    move-object/from16 v0, v27

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float v2, v2, v26

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v11, v2, 0x2

    .line 2625
    .local v11, "x":I
    move-object/from16 v0, v27

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float v2, v2, v26

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v12, v2, 0x2

    .line 2626
    .local v12, "y":I
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 2627
    .local v7, "srcWidth":I
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 2628
    .local v8, "srcHeight":I
    int-to-float v2, v7

    mul-float v2, v2, v26

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v9, v2, 0x2

    .line 2629
    .local v9, "scaledWidth":I
    int-to-float v2, v8

    mul-float v2, v2, v26

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v10, v2, 0x2

    .line 2632
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

    .line 2634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPostviewReceived() - Add watermark spent : "

    const/16 v4, 0xb

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v14, v14, v28

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v4, v15

    const-string/jumbo v14, " ms, preview size : "

    const/4 v15, 0x1

    aput-object v14, v4, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    const/4 v15, 0x2

    aput-object v14, v4, v15

    const-string/jumbo v14, ", watermark size : "

    const/4 v15, 0x3

    aput-object v14, v4, v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x4

    aput-object v14, v4, v15

    const-string/jumbo v14, "x"

    const/4 v15, 0x5

    aput-object v14, v4, v15

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x6

    aput-object v14, v4, v15

    const-string/jumbo v14, ", x : "

    const/4 v15, 0x7

    aput-object v14, v4, v15

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v4, v15

    const-string/jumbo v14, ", y : "

    const/16 v15, 0x9

    aput-object v14, v4, v15

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0xa

    aput-object v14, v4, v15

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2617
    .end local v7    # "srcWidth":I
    .end local v8    # "srcHeight":I
    .end local v9    # "scaledWidth":I
    .end local v10    # "scaledHeight":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v26    # "ratio":F
    .local v5, "nv21Buffer":[B
    .restart local v6    # "nv21AlphaBuffer":[B
    .restart local v23    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    goto/16 :goto_1

    :cond_6
    move-object/from16 v22, v23

    .end local v23    # "is":Ljava/io/InputStream;
    .local v22, "is":Ljava/io/InputStream;
    goto/16 :goto_3

    .local v22, "is":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .end local v22    # "is":Ljava/io/InputStream;
    :goto_4
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v3

    move-object/from16 v31, v3

    move-object v3, v2

    move-object/from16 v2, v31

    :goto_5
    if-eqz v22, :cond_7

    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_7
    :goto_6
    if-eqz v3, :cond_9

    :try_start_6
    throw v3

    .line 2613
    :catch_3
    move-exception v13

    .restart local v13    # "e":Ljava/lang/Throwable;
    goto/16 :goto_2

    .line 2617
    .end local v13    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v4

    if-nez v3, :cond_8

    move-object v3, v4

    goto :goto_6

    :cond_8
    if-eq v3, v4, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v22    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    goto :goto_5

    .end local v22    # "is":Ljava/io/InputStream;
    .restart local v23    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v2

    move-object/from16 v22, v23

    .end local v23    # "is":Ljava/io/InputStream;
    .local v22, "is":Ljava/io/InputStream;
    goto :goto_5

    .end local v22    # "is":Ljava/io/InputStream;
    .restart local v23    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v2

    move-object/from16 v22, v23

    .end local v23    # "is":Ljava/io/InputStream;
    .restart local v22    # "is":Ljava/io/InputStream;
    goto :goto_4
.end method

.method private onProcessReceived()V
    .locals 2

    .prologue
    .line 2823
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onProcessCallbackReceived()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_LONG_PROCESSING_CAPTURE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2821
    return-void
.end method

.method private onRawReceived([BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 2831
    return-void
.end method

.method private onShutterReceived()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2841
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 2842
    .local v0, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2848
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

    .line 2849
    return-void

    .line 2851
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v1, :cond_0

    .line 2853
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterReceived() - No capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    return-void

    .line 2858
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterReceived() - Index : "

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2859
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    .line 2862
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-le v1, v2, :cond_1

    .line 2864
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterReceived() - Unexpected call-back, drop"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2865
    return-void

    .line 2869
    :cond_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;I)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2874
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ge v1, v2, :cond_3

    .line 2876
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterReceived() - Take next picture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    iput-boolean v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TakePictureFailedOnShutter:Z

    .line 2878
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->takePicture()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2880
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterReceived() - Cannot take next picture on shutter"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2881
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TakePictureFailedOnShutter:Z

    .line 2838
    :cond_3
    return-void

    .line 2842
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
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 2964
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openInternal() - Open camera \'"

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

    .line 2965
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Id:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    .line 2966
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openInternal() - Open camera \'"

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

    .line 2976
    const/4 v1, 0x1

    return v1

    .line 2969
    :catch_0
    move-exception v0

    .line 2970
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openInternal() - Fail to start opening camera \'"

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

    .line 2971
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    const/4 v3, -0x4

    invoke-direct {v2, p0, v3}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;-><init>(Lcom/oneplus/camera/Camera;I)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2972
    const/4 v1, 0x0

    return v1
.end method

.method private prepareCaptureParameters()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2984
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_0

    .line 2986
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareCaptureParameters() - Camera parameters is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2987
    return v9

    .line 2993
    :cond_0
    :try_start_0
    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-eq v2, v8, :cond_1

    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 2994
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "sports"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2997
    :cond_1
    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ne v2, v8, :cond_3

    .line 2999
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareCaptureParameters() - JPEG quality : "

    iget v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3000
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 3009
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->calculateJpegOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 3012
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 3013
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_2

    .line 3015
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 3016
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 3017
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 3018
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 3022
    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsMirrored:Z

    invoke-direct {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->applyMirrorMode(Z)Z

    .line 3030
    return v8

    .line 3004
    .end local v1    # "location":Landroid/location/Location;
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareCaptureParameters() - JPEG quality for burst : "

    const/16 v4, 0x5a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3005
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3025
    :catch_0
    move-exception v0

    .line 3026
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareCaptureParameters() - Error when preparing parameters"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3027
    return v9
.end method

.method private preparePreviewParameters()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3038
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyPreviewFpsRange(Landroid/util/Range;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3040
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "preparePreviewParameters() - Error when apply preview FPS range"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3041
    return v4

    .line 3045
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyPreviewSize(Landroid/util/Size;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3047
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "preparePreviewParameters() - Error when apply preview size"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    return v4

    .line 3052
    :cond_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applySceneMode(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3053
    return v4

    .line 3056
    :cond_2
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureCompensation:F

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyExposureCompensation(F)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3057
    return v4

    .line 3060
    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAeLocked:Z

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAeLock(Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3061
    return v4

    .line 3064
    :cond_4
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAwbLocked:Z

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAwbLock(Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3065
    return v4

    .line 3068
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3069
    return v4

    .line 3072
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFocusMode(Lcom/oneplus/camera/FocusMode;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3073
    return v4

    .line 3076
    :cond_7
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAeRegions(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAfRegions(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3080
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 3081
    .local v0, "pictureSize":Landroid/util/Size;
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v1, :cond_9

    .line 3083
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 3084
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyVideoSize(Landroid/util/Size;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3086
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "preparePreviewParameters() - Error when apply video size"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3087
    return v4

    .line 3077
    .end local v0    # "pictureSize":Landroid/util/Size;
    :cond_8
    return v4

    .line 3090
    .restart local v0    # "pictureSize":Landroid/util/Size;
    :cond_9
    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyPictureSize(Landroid/util/Size;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 3092
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "preparePreviewParameters() - Error when apply picture size"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3093
    return v4

    .line 3097
    :cond_a
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyRecordingMode(Z)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3099
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "preparePreviewParameters() - Error when apply recording mode"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3100
    return v4

    .line 3104
    :cond_b
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyThumbnailSize()Z

    move-result v1

    if-nez v1, :cond_c

    .line 3106
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "preparePreviewParameters() - Error when apply thumbnail size"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    return v4

    .line 3111
    :cond_c
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyZoom(F)Z

    move-result v1

    if-nez v1, :cond_d

    .line 3113
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "preparePreviewParameters() - Error when apply zoom"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    return v4

    .line 3118
    :cond_d
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CONTROL_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3120
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyManualCapture(Z)Z

    .line 3121
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AwbMode:I

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAwbMode(I)Z

    .line 3122
    iget-wide v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureTime:J

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyExposureTime(J)Z

    .line 3123
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusValue:F

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFocusPosition(F)Z

    .line 3124
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ISOValue:I

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyISO(I)Z

    .line 3128
    :cond_e
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3130
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyWatermarkBoundsMap(Ljava/util/Map;)Z

    .line 3131
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyWatermarkFilePathsMap(Ljava/util/Map;)Z

    .line 3132
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsForRotatedPicture:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyWatermarkBoundsForRotatedPicture(Landroid/graphics/Rect;)Z

    .line 3133
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathForRotatedPicture:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyWatermarkFilePathForRotatedPicture(Ljava/lang/String;)Z

    .line 3137
    :cond_f
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_SERVICE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyServiceMode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3144
    :cond_10
    const/4 v1, 0x1

    return v1

    .line 3139
    :cond_11
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "preparePreviewParameters() - Error when apply service mode"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3140
    return v4
.end method

.method private reconnectCamera()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3151
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 3152
    return v3

    .line 3156
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3163
    const/4 v1, 0x1

    return v1

    .line 3159
    :catch_0
    move-exception v0

    .line 3160
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reconnectCamera() - Error when reconnect"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3161
    return v3
.end method

.method private removePreviewCallbacks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3171
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 3173
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removePreviewCallbacks() - Camera is released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    return-void

    .line 3178
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 3181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsPreviewCallbackAdded:Z

    .line 3168
    return-void
.end method

.method private setAWBModeProp(I)Z
    .locals 5
    .param p1, "awbMode"    # I

    .prologue
    .line 3351
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3352
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3353
    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AwbMode:I

    if-ne v2, p1, :cond_0

    .line 3354
    const/4 v2, 0x1

    return v2

    .line 3355
    :cond_0
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3356
    .local v0, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3358
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

    .line 3359
    const/4 v2, 0x0

    return v2

    .line 3362
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setAWBModeProp() - Awb mode : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3365
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AwbMode:I

    .line 3366
    .local v1, "oldAwbMode":I
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AwbMode:I

    .line 3369
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAwbMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3370
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3373
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

    .line 3257
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3258
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3259
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAeLocked:Z

    if-ne v1, p1, :cond_0

    .line 3260
    return v0

    .line 3263
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAeLock(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3264
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3267
    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAeLocked:Z

    .line 3268
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
    .line 3296
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3297
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3298
    if-nez p1, :cond_0

    .line 3299
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 3300
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3301
    const/4 v1, 0x0

    return v1

    .line 3304
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    .line 3305
    .local v0, "oldRegions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3306
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    .line 3311
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAeRegions(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3312
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3315
    :cond_2
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3308
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
    .line 3324
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3325
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3326
    if-nez p1, :cond_0

    .line 3327
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 3328
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3329
    const/4 v1, 0x0

    return v1

    .line 3332
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    .line 3333
    .local v0, "oldRegions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3334
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    .line 3339
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAfRegions(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3340
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3343
    :cond_2
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3336
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    goto :goto_0
.end method

.method private setAwbLockProp(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 3276
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3277
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3278
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAwbLocked:Z

    if-ne v1, p1, :cond_0

    .line 3279
    return v0

    .line 3282
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAwbLock(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3283
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3286
    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAwbLocked:Z

    .line 3287
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

.method private setCameraDisplayOrientation()V
    .locals 8

    .prologue
    .line 3380
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v5, :cond_0

    .line 3382
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setCameraDisplayOrientation() - Camera is released"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3383
    return-void

    .line 3385
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3386
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_2

    instance-of v5, v1, Landroid/app/Activity;

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 3388
    check-cast v0, Landroid/app/Activity;

    .line 3389
    .local v0, "activity":Landroid/app/Activity;
    const/4 v2, 0x0

    .line 3390
    .local v2, "degrees":I
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 3406
    :goto_0
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3407
    .local v3, "orientation":I
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v5, v6, :cond_1

    .line 3409
    add-int v5, v3, v2

    rem-int/lit16 v4, v5, 0x168

    .line 3410
    .local v4, "result":I
    rsub-int v5, v4, 0x168

    rem-int/lit16 v4, v5, 0x168

    .line 3414
    :goto_1
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 3378
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "degrees":I
    .end local v3    # "orientation":I
    .end local v4    # "result":I
    :goto_2
    return-void

    .line 3393
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v2    # "degrees":I
    :sswitch_0
    const/4 v2, 0x0

    .line 3394
    goto :goto_0

    .line 3396
    :sswitch_1
    const/16 v2, 0x5a

    .line 3397
    goto :goto_0

    .line 3399
    :sswitch_2
    const/16 v2, 0xb4

    .line 3400
    goto :goto_0

    .line 3402
    :sswitch_3
    const/16 v2, 0x10e

    .line 3403
    goto :goto_0

    .line 3413
    .restart local v3    # "orientation":I
    :cond_1
    sub-int v5, v3, v2

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v4, v5, 0x168

    .restart local v4    # "result":I
    goto :goto_1

    .line 3417
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

    .line 3390
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method private setDigitalZoomProp(F)Z
    .locals 3
    .param p1, "zoom"    # F

    .prologue
    const/4 v2, 0x0

    .line 3424
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3425
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3426
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoom:Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3427
    return v2

    .line 3428
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3430
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoom:Ljava/lang/Float;

    .line 3431
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoom:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyZoom(F)Z

    .line 3432
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3433
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DigitalZoom:Ljava/lang/Float;

    invoke-super {p0, v0, v1}, Lcom/oneplus/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3429
    :cond_2
    return v2
.end method

.method private setExposureCompensationProp(F)Z
    .locals 8
    .param p1, "ev"    # F

    .prologue
    .line 3441
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3442
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3445
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 3446
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 3447
    .local v2, "step":F
    div-float v3, p1, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    mul-float p1, v3, v2

    .line 3448
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

    .line 3449
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureCompensation:F

    .line 3450
    .local v0, "oldEv":F
    sub-float v3, v0, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    .line 3451
    const/4 v3, 0x0

    return v3

    .line 3454
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyExposureCompensation(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3455
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3458
    :cond_1
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureCompensation:F

    .line 3459
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
    .locals 7
    .param p1, "exposureTime"    # J

    .prologue
    .line 3467
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3468
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3469
    iget-wide v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureTime:J

    cmp-long v1, v4, p1

    if-nez v1, :cond_0

    .line 3470
    const/4 v1, 0x1

    return v1

    .line 3471
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 3472
    .local v0, "exposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const-wide/16 v4, -0x1

    cmp-long v1, p1, v4

    if-eqz v1, :cond_1

    .line 3474
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, p1, v4

    if-lez v1, :cond_3

    .line 3476
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setExposureTimeProp() - Exposure time is too large, trim to upper"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 3486
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setExposureTimeProp() - Exposure time : "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3489
    iget-wide v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureTime:J

    .line 3490
    .local v2, "oldExposureTime":J
    iput-wide p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureTime:J

    .line 3493
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->applyExposureTime(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3494
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3497
    :cond_2
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3479
    .end local v2    # "oldExposureTime":J
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, p1, v4

    if-gez v1, :cond_1

    .line 3481
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setExposureTimeProp() - Exposure time is too small, trim to lower"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3482
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
    .line 3522
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3523
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceBeautyValue:I

    .line 3527
    .local v0, "oldFaceBeautyValue":I
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFaceBeautyValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3528
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3530
    :cond_0
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceBeautyValue:I

    .line 3532
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

    .line 3505
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3506
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3507
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    if-ne v1, p1, :cond_0

    .line 3508
    return v0

    .line 3511
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFaceDetection(Z)Z

    .line 3514
    iput-boolean p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    .line 3515
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

    .line 3539
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3540
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    .line 3541
    .local v0, "oldFlashMode":Lcom/oneplus/camera/FlashMode;
    if-ne v0, p1, :cond_0

    .line 3542
    return v4

    .line 3544
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

    .line 3546
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " setFlashModeProp() - No flash on camera \'"

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

    .line 3547
    return v4

    .line 3550
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3551
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3553
    :cond_2
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    .line 3555
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

    .line 3563
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3564
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3565
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 3566
    .local v0, "oldFocusMode":Lcom/oneplus/camera/FocusMode;
    if-ne v0, p1, :cond_0

    .line 3567
    return v5

    .line 3568
    :cond_0
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3570
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

    .line 3571
    return v5

    .line 3575
    :cond_1
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    .line 3576
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFocusMode(Lcom/oneplus/camera/FocusMode;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3578
    sget-object v2, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    if-ne p1, v2, :cond_2

    .line 3580
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 3581
    .local v1, "oldFocusState":Lcom/oneplus/camera/FocusState;
    sget-object v2, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    iput-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 3582
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v2, v1, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3584
    .end local v1    # "oldFocusState":Lcom/oneplus/camera/FocusState;
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3588
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
    .line 3596
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3597
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3598
    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusValue:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 3599
    const/4 v2, 0x1

    return v2

    .line 3600
    :cond_0
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 3601
    .local v0, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    .line 3603
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    .line 3605
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFocusProp() - Focus value is too large, trim to upper"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3606
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 3615
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFocusProp() - Focus : "

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3618
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusValue:F

    .line 3619
    .local v1, "oldFocus":F
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusValue:F

    .line 3622
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFocusPosition(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3623
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3626
    :cond_2
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 3608
    .end local v1    # "oldFocus":F
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 3610
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFocusProp() - Focus value is too small, trim to lower"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3611
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
    .line 3634
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3635
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3636
    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ISOValue:I

    if-ne v2, p1, :cond_0

    .line 3637
    const/4 v2, 0x1

    return v2

    .line 3638
    :cond_0
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 3639
    .local v0, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 3641
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le p1, v2, :cond_3

    .line 3643
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setISOProp() - ISO value is too large, trim to upper"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3653
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setISOProp() - ISO value : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3656
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ISOValue:I

    .line 3657
    .local v1, "oldIsoValue":I
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ISOValue:I

    .line 3660
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyISO(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3661
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3664
    :cond_2
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 3646
    .end local v1    # "oldIsoValue":I
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 3648
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setISOProp() - ISO value is too small, trim to lower"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3649
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

    .line 3671
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3672
    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 3673
    :cond_0
    return v1

    .line 3674
    :cond_1
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    .line 3675
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
    .line 3683
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3684
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3685
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3686
    .local v0, "oldIsManual":Z
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3687
    const/4 v1, 0x0

    return v1

    .line 3690
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyManualCapture(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3691
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3694
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
    .line 3702
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3703
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3704
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3705
    .local v0, "oldIsMirrored":Z
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3706
    const/4 v1, 0x0

    return v1

    .line 3709
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsMirrored:Z

    .line 3712
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyMirrorMode(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3713
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3716
    :cond_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setPictureSizeProp(Landroid/util/Size;)Z
    .locals 4
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 3724
    if-nez p1, :cond_0

    .line 3725
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No picture size specified."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3726
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3728
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

    .line 3729
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid picture size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3731
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3732
    const/4 v1, 0x0

    return v1

    .line 3735
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

    .line 3736
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 3737
    .local v0, "prevSize":Landroid/util/Size;
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 3740
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
    .line 3748
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3749
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3752
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    invoke-virtual {v1, p1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3753
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 3756
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

    .line 3757
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    .line 3758
    .local v0, "oldRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    .line 3759
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyPreviewFpsRange(Landroid/util/Range;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3760
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3763
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
    .line 3771
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3772
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    .line 3773
    .local v0, "prevReceiver":Ljava/lang/Object;
    if-ne v0, p1, :cond_0

    .line 3774
    const/4 v1, 0x0

    return v1

    .line 3775
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_1

    .line 3777
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

    .line 3778
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot change preview receiver when preview state is not STOPPED."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3781
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

    .line 3789
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3790
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3793
    if-nez p1, :cond_0

    .line 3794
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No preview size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3795
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 3796
    .local v1, "oldSize":Landroid/util/Size;
    invoke-virtual {p1, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3797
    return v5

    .line 3798
    :cond_1
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3800
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

    .line 3801
    return v5

    .line 3806
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

    .line 3815
    const/4 v0, 0x0

    .line 3820
    .local v0, "needRestartPreview":Z
    :goto_0
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 3823
    if-eqz v0, :cond_3

    .line 3825
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setPreviewSizeProp() - Restart preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3826
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->startPreviewInternal()Z

    .line 3830
    :cond_3
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 3810
    .end local v0    # "needRestartPreview":Z
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setPreviewSizeProp() - Stop preview to change preview size"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3811
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->stopPreviewInternal()V

    .line 3812
    const/4 v0, 0x1

    .line 3813
    .restart local v0    # "needRestartPreview":Z
    goto :goto_0

    .line 3806
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

    .line 4286
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

    .line 4287
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4288
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRawCaptureEnabled:Z

    if-ne v1, p1, :cond_0

    .line 4289
    return v0

    .line 4290
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRawCaptureEnabled:Z

    .line 4292
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

    .line 3838
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3839
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-ne v1, p1, :cond_0

    .line 3840
    return v2

    .line 3841
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v3, :cond_1

    .line 3843
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

    .line 3844
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot change recording mode due to current capture state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3847
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

    .line 3851
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

    .line 3860
    const/4 v0, 0x0

    .line 3865
    .local v0, "needRestartPreview":Z
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    .line 3868
    if-eqz v0, :cond_2

    .line 3870
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setRecordingModeProp() - Restart preview"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3871
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->startPreview(I)Z

    .line 3875
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

    .line 3855
    .end local v0    # "needRestartPreview":Z
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setRecordingModeProp() - Stop preview to change recording mode"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3856
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->stopPreview(I)V

    .line 3857
    const/4 v0, 0x1

    .line 3858
    .restart local v0    # "needRestartPreview":Z
    goto :goto_0

    .line 3875
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 3851
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

    .line 3883
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3884
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3885
    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    if-ne v2, p1, :cond_0

    .line 3886
    return v5

    .line 3889
    :cond_0
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3890
    .local v1, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 3892
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

    .line 3893
    return v5

    .line 3896
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSceneModeProp() - Scene mode : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3898
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->applySceneMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3899
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3901
    :cond_2
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    .line 3902
    .local v0, "oldSceneMode":I
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    .line 3903
    sget-object v2, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private setVideoSizeProp(Landroid/util/Size;)Z
    .locals 5
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    const/4 v4, 0x0

    .line 3911
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3912
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3913
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

    .line 3925
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 3926
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No video size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3917
    :pswitch_0
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v1, :cond_0

    .line 3918
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setVideoSizeProp() - Apply video size when starting preview next time"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3927
    :cond_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3929
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

    .line 3930
    return v4

    .line 3932
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3933
    return v4

    .line 3935
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setVideoSizeProp() - Video size : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3938
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 3939
    .local v0, "oldSize":Landroid/util/Size;
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 3940
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3913
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setWatermarkBoundsForRotatedPictureProp(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3948
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3949
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3952
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsForRotatedPicture:Landroid/graphics/Rect;

    .line 3953
    .local v0, "oldValue":Landroid/graphics/Rect;
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsForRotatedPicture:Landroid/graphics/Rect;

    .line 3956
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsForRotatedPicture:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyWatermarkBoundsForRotatedPicture(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3957
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3960
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_BOUNDS_FOR_ROTATED_PICTURE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsForRotatedPicture:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
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

    .line 3968
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3969
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3970
    if-nez p1, :cond_0

    .line 3971
    return v7

    .line 3974
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 3976
    const/4 v0, 0x0

    .line 3977
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

    .line 3979
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

    .line 3981
    const/4 v0, 0x1

    .line 3985
    .end local v3    # "size":Landroid/util/Size;
    :cond_2
    if-nez v0, :cond_3

    .line 3986
    return v7

    .line 3990
    .end local v0    # "hasDiff":Z
    .end local v4    # "size$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    .line 3991
    .local v2, "oldValue":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Landroid/graphics/Rect;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3992
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

    .line 3993
    .restart local v3    # "size":Landroid/util/Size;
    new-instance v6, Landroid/graphics/Rect;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-direct {v6, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3994
    .end local v3    # "size":Landroid/util/Size;
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    .line 3997
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->applyWatermarkBoundsMap(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3998
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4001
    :cond_5
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_BOUNDS_MAP:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    invoke-virtual {p0, v5, v2, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method private setWatermarkFilePathForRotatedPictureProp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 4009
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4010
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4013
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathForRotatedPicture:Ljava/lang/String;

    .line 4014
    .local v0, "oldValue":Ljava/lang/String;
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathForRotatedPicture:Ljava/lang/String;

    .line 4017
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathForRotatedPicture:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->applyWatermarkFilePathForRotatedPicture(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4018
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4021
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_FILE_PATH_FOR_ROTATED_PICTURE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathForRotatedPicture:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
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

    .line 4029
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4030
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4031
    if-nez p1, :cond_0

    .line 4032
    return v7

    .line 4035
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 4037
    const/4 v0, 0x0

    .line 4038
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

    .line 4040
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

    .line 4042
    const/4 v0, 0x1

    .line 4046
    .end local v3    # "size":Landroid/util/Size;
    :cond_2
    if-nez v0, :cond_3

    .line 4047
    return v7

    .line 4051
    .end local v0    # "hasDiff":Z
    .end local v4    # "size$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    .line 4052
    .local v2, "oldValue":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4053
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

    .line 4054
    .restart local v3    # "size":Landroid/util/Size;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4055
    .end local v3    # "size":Landroid/util/Size;
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    .line 4058
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->applyWatermarkFilePathsMap(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4059
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4062
    :cond_5
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_FILE_PATHS_MAP:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    invoke-virtual {p0, v5, v2, v6}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method private startPreviewDirectlyInternal()Z
    .locals 4

    .prologue
    .line 4187
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

    .line 4188
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 4189
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

    .line 4198
    const/4 v1, 0x1

    return v1

    .line 4192
    :catch_0
    move-exception v0

    .line 4193
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

    .line 4194
    const/4 v1, 0x0

    return v1
.end method

.method private startPreviewInternal()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 4206
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    .line 4207
    .local v3, "receiver":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 4208
    return v12

    .line 4211
    :cond_0
    instance-of v5, v3, Landroid/view/SurfaceHolder;

    if-eqz v5, :cond_1

    move-object v2, v3

    .line 4213
    check-cast v2, Landroid/view/SurfaceHolder;

    .line 4214
    .local v2, "holder":Landroid/view/SurfaceHolder;
    const/4 v4, 0x0

    .line 4215
    .local v4, "retryCount":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 4220
    .local v6, "startTimeMillis":J
    :goto_0
    if-nez v4, :cond_2

    .line 4221
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startPreviewInternal() - Set preview display"

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4224
    :goto_1
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4250
    .end local v2    # "holder":Landroid/view/SurfaceHolder;
    .end local v4    # "retryCount":I
    .end local v6    # "startTimeMillis":J
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->preparePreviewParameters()Z

    move-result v5

    if-nez v5, :cond_4

    .line 4252
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startPreviewInternal() - Error when preparing preview parameters"

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4253
    return v12

    .line 4223
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

    .line 4228
    :catch_0
    move-exception v0

    .line 4229
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v10, 0x3e8

    cmp-long v5, v8, v10

    if-gez v5, :cond_3

    .line 4233
    const-wide/16 v8, 0xa

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 4237
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4236
    :catch_1
    move-exception v1

    .local v1, "e2":Ljava/lang/Throwable;
    goto :goto_2

    .line 4241
    .end local v1    # "e2":Ljava/lang/Throwable;
    :cond_3
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startPreviewInternal() - Error when set preview display, stop retry"

    invoke-static {v5, v8, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4242
    return v12

    .line 4256
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "holder":Landroid/view/SurfaceHolder;
    .end local v4    # "retryCount":I
    .end local v6    # "startTimeMillis":J
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z

    .line 4259
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->checkAlternativePictureSizes()V

    .line 4262
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->addPreviewCallbacks()V

    .line 4265
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->startPreviewDirectlyInternal()Z

    move-result v5

    if-nez v5, :cond_5

    .line 4266
    return v12

    .line 4269
    :cond_5
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ErrorCallbackCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v5, v8}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 4270
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v5, v8}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 4271
    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {v5, v8}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 4274
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyAeCallback()Z

    .line 4277
    iget-boolean v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    invoke-direct {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->applyFaceDetection(Z)Z

    .line 4280
    const/4 v5, 0x1

    return v5
.end method

.method private stopCaptureInternal(Z)V
    .locals 3
    .param p1, "abortCaptures"    # Z

    .prologue
    .line 4330
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v1, :cond_0

    .line 4332
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopCaptureInternal() - No capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4333
    return-void

    .line 4335
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    .line 4336
    .local v0, "captureState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 4348
    :pswitch_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4351
    if-eqz p1, :cond_1

    .line 4352
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->onCaptureCompleted()V

    .line 4327
    :cond_1
    return-void

    .line 4339
    :pswitch_1
    return-void

    .line 4344
    :pswitch_2
    return-void

    .line 4336
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
    .line 4405
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

    .line 4406
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 4407
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

    .line 4401
    return-void

    .line 4410
    :catch_0
    move-exception v0

    .line 4411
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

    .line 4412
    return-void
.end method

.method private stopPreviewInternal()V
    .locals 3

    .prologue
    .line 4421
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->removePreviewCallbacks()V

    .line 4422
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4425
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->stopPreviewDirectlyInternal()V

    .line 4428
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 4429
    .local v0, "handler":Landroid/os/Handler;
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4418
    return-void
.end method

.method private takePicture()Z
    .locals 6

    .prologue
    .line 4468
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_RawCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PostviewCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4476
    const/4 v1, 0x1

    return v1

    .line 4471
    :catch_0
    move-exception v0

    .line 4472
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "takePicture() - Error when taking picture"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4473
    const/4 v1, 0x0

    return v1
.end method

.method private updateParameters()V
    .locals 3

    .prologue
    .line 4509
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 4511
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateParameters() - Camera is released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4512
    return-void

    .line 4516
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    .line 4519
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->checkPreviewFPSRanges()V

    .line 4520
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->checkDefaultPreviewFPSRange()V

    .line 4523
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->checkZoomRange()V

    .line 4526
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    if-gez v0, :cond_1

    .line 4528
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    .line 4529
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateParameters() - Default JPEG quality : "

    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4530
    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 4531
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget v2, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4507
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
    .line 310
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsPreviewCallbackAdded:Z

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/BaseCamera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 308
    return-void

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->addPreviewCallbacks()V

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

    .line 1178
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 1179
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 1180
    if-nez p1, :cond_0

    .line 1182
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "bindMediaRecorder() - Recorder is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    return v4

    .line 1185
    :cond_0
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_1

    .line 1187
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

    .line 1188
    return v4

    .line 1192
    :cond_1
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 1197
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V

    .line 1200
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1203
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    return v3

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "bindMediaRecorder() - Cannot bind media recorder"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1208
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->reconnectCamera()Z

    .line 1209
    iput-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 1210
    return v4
.end method

.method public calculateViewAngles(Landroid/graphics/Rect;I)Landroid/util/SizeF;
    .locals 10
    .param p1, "cropRegion"    # Landroid/graphics/Rect;
    .param p2, "flags"    # I

    .prologue
    .line 1232
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1233
    .local v2, "focalLength":F
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SizeF;

    .line 1234
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

    .line 1235
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

    .line 1238
    .local v1, "anglesY":F
    if-nez p1, :cond_0

    .line 1239
    new-instance v5, Landroid/util/SizeF;

    invoke-direct {v5, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v5

    .line 1242
    :cond_0
    sget-object v5, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SENSOR_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 1243
    .local v4, "sensorSizeFull":Landroid/util/Size;
    new-instance v5, Landroid/util/SizeF;

    .line 1244
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v0

    .line 1245
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v7, v1

    .line 1243
    invoke-direct {v5, v6, v7}, Landroid/util/SizeF;-><init>(FF)V

    return-object v5
.end method

.method public cancelAutoFocus(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .line 1255
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 1256
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    .line 1257
    .local v2, "previewState":Lcom/oneplus/camera/OperationState;
    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v2, v3, :cond_0

    .line 1259
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ForceCancelAutoFocus:Z

    .line 1260
    return-void

    .line 1264
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "cancelAutoFocus() - Cancel current auto-focus"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 1276
    .local v1, "oldState":Lcom/oneplus/camera/FocusState;
    sget-object v3, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    iput-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 1277
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v1, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1252
    return-void

    .line 1270
    .end local v1    # "oldState":Lcom/oneplus/camera/FocusState;
    :catch_0
    move-exception v0

    .line 1271
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

    .line 1286
    if-nez p1, :cond_0

    .line 1288
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

    .line 1289
    return-object v4

    .line 1293
    :cond_0
    const/4 v0, 0x0

    .line 1294
    .local v0, "captureLater":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 1295
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v1, v2, :cond_1

    .line 1297
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

    .line 1298
    return-object v4

    .line 1300
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

    .line 1305
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

    .line 1306
    return-object v4

    .line 1308
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

    .line 1313
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

    .line 1314
    return-object v4

    .line 1318
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1321
    new-instance v1, Lcom/oneplus/camera/LegacyCameraImpl$13;

    const-string/jumbo v2, "Capture"

    invoke-direct {v1, p0, v2}, Lcom/oneplus/camera/LegacyCameraImpl$13;-><init>(Lcom/oneplus/camera/LegacyCameraImpl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    .line 1331
    iput p1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    .line 1332
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->captureInternal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1339
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    return-object v1

    .line 1334
    :cond_3
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1335
    return-object v4

    .line 1300
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 1308
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public close(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    const/4 v5, 0x0

    .line 1738
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 1739
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 1740
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera$State;

    .line 1741
    .local v2, "state":Lcom/oneplus/camera/Camera$State;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-Camera$StateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1749
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "close() - Invalid state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    return-void

    .line 1745
    :pswitch_0
    return-void

    .line 1754
    :pswitch_1
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1757
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 1758
    .local v1, "oldFocusState":Lcom/oneplus/camera/FocusState;
    sget-object v3, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    iput-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 1759
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v1, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1762
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    .line 1763
    .local v0, "oldAeState":Lcom/oneplus/camera/AutoExposureState;
    sget-object v3, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    iput-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    .line 1764
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {p0, v3, v0, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1767
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->closeInternal()V

    .line 1770
    iput-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    .line 1771
    iput-object v5, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    .line 1774
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1735
    return-void

    .line 1741
    nop

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
    .line 1870
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    return-object v0

    .line 1872
    :cond_0
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 1873
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AeState:Lcom/oneplus/camera/AutoExposureState;

    return-object v0

    .line 1874
    :cond_1
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 1875
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    return-object v0

    .line 1876
    :cond_2
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ALTERNATIVE_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 1877
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AlternativePictureSizes:Ljava/util/List;

    return-object v0

    .line 1878
    :cond_3
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AUTO_HDR_STATUS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 1879
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoHdr:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1880
    :cond_4
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 1881
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AwbMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1882
    :cond_5
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 1883
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->getCameraCharacteristic()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0

    .line 1884
    :cond_6
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 1885
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureCompensation:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1886
    :cond_7
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    .line 1887
    iget-wide v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ExposureTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1888
    :cond_8
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    .line 1889
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceListIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 1890
    :cond_9
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_a

    .line 1891
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FaceBeautyValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1892
    :cond_a
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_b

    .line 1893
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FlashMode:Lcom/oneplus/camera/FlashMode;

    return-object v0

    .line 1894
    :cond_b
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_c

    .line 1895
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->getFocalLength()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1896
    :cond_c
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_d

    .line 1897
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1898
    :cond_d
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_e

    .line 1899
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusMode:Lcom/oneplus/camera/FocusMode;

    return-object v0

    .line 1900
    :cond_e
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_f

    .line 1901
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    return-object v0

    .line 1902
    :cond_f
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_10

    .line 1903
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAeLocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1904
    :cond_10
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_11

    .line 1905
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsAwbLocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1906
    :cond_11
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_12

    .line 1907
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1908
    :cond_12
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_13

    .line 1909
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsMirrored:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1910
    :cond_13
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_14

    .line 1911
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRawCaptureEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1912
    :cond_14
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_15

    .line 1913
    iget-boolean v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1914
    :cond_15
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_16

    .line 1915
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ISOValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1916
    :cond_16
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_18

    .line 1917
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    if-ltz v0, :cond_17

    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_JpegQuality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_17
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    goto :goto_0

    .line 1918
    :cond_18
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_19

    .line 1919
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    return-object v0

    .line 1920
    :cond_19
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1a

    .line 1921
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    return-object v0

    .line 1922
    :cond_1a
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1b

    .line 1923
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    return-object v0

    .line 1924
    :cond_1b
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1c

    .line 1925
    iget v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_SceneMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1926
    :cond_1c
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1d

    .line 1927
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    return-object v0

    .line 1928
    :cond_1d
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_BOUNDS_FOR_ROTATED_PICTURE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1e

    .line 1929
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsForRotatedPicture:Landroid/graphics/Rect;

    return-object v0

    .line 1930
    :cond_1e
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_BOUNDS_MAP:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1f

    .line 1931
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkBoundsMap:Ljava/util/Map;

    return-object v0

    .line 1932
    :cond_1f
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_FILE_PATH_FOR_ROTATED_PICTURE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_20

    .line 1933
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathForRotatedPicture:Ljava/lang/String;

    return-object v0

    .line 1934
    :cond_20
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_FILE_PATHS_MAP:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_21

    .line 1935
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_WatermarkFilePathsMap:Ljava/util/Map;

    return-object v0

    .line 1936
    :cond_21
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCamera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1949
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1956
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCamera;->handleMessage(Landroid/os/Message;)V

    .line 1947
    :goto_0
    return-void

    .line 1952
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->onAutoFocusTimeout()V

    goto :goto_0

    .line 1949
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public open(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2893
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2894
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 2895
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$State;

    .line 2896
    .local v0, "state":Lcom/oneplus/camera/Camera$State;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-Camera$StateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2904
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

    .line 2905
    return v4

    .line 2900
    :pswitch_1
    return v3

    .line 2909
    :pswitch_2
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2912
    invoke-direct {p0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->openInternal(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2913
    return v4

    .line 2916
    :cond_0
    invoke-direct {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->applyProcessCallback(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2917
    iput-boolean v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsProcessCallbackSupported:Z

    .line 2922
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->setCameraDisplayOrientation()V

    .line 2925
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 2928
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->updateParameters()V

    .line 2931
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->checkSceneModes()V

    .line 2934
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2936
    return v3

    .line 2919
    :cond_1
    iput-boolean v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_IsProcessCallbackSupported:Z

    goto :goto_0

    .line 2896
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
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
    .line 3191
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 3192
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setAeRegionsProp(Ljava/util/List;)Z

    move-result v0

    return v0

    .line 3193
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 3194
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setAfRegionsProp(Ljava/util/List;)Z

    move-result v0

    return v0

    .line 3195
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 3196
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setAWBModeProp(I)Z

    move-result v0

    return v0

    .line 3197
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_2
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 3198
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setDigitalZoomProp(F)Z

    move-result v0

    return v0

    .line 3199
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_3
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 3200
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setExposureCompensationProp(F)Z

    move-result v0

    return v0

    .line 3201
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_4
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 3202
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setExposureTimeProp(J)Z

    move-result v0

    return v0

    .line 3203
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_5
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 3204
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setFaceBeautyValueProp(I)Z

    move-result v0

    return v0

    .line 3205
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_6
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 3206
    check-cast p2, Lcom/oneplus/camera/FlashMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setFlashModeProp(Lcom/oneplus/camera/FlashMode;)Z

    move-result v0

    return v0

    .line 3207
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_7
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    .line 3208
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setFocusProp(F)Z

    move-result v0

    return v0

    .line 3209
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_8
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    .line 3210
    check-cast p2, Lcom/oneplus/camera/FocusMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setFocusModeProp(Lcom/oneplus/camera/FocusMode;)Z

    move-result v0

    return v0

    .line 3211
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_9
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_a

    .line 3212
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setAeLockProp(Z)Z

    move-result v0

    return v0

    .line 3213
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_a
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_b

    .line 3214
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setAwbLockProp(Z)Z

    move-result v0

    return v0

    .line 3215
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_b
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_c

    .line 3216
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setFaceDetectionProp(Z)Z

    move-result v0

    return v0

    .line 3217
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_c
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_d

    .line 3218
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setMirrorModeProp(Ljava/lang/Boolean;)Z

    move-result v0

    return v0

    .line 3219
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_d
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_e

    .line 3220
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setJpegQualityProp(I)Z

    move-result v0

    return v0

    .line 3221
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_e
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_f

    .line 3222
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setPictureSizeProp(Landroid/util/Size;)Z

    move-result v0

    return v0

    .line 3223
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_f
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_10

    .line 3224
    check-cast p2, Landroid/util/Range;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setPreviewFpsRangeProp(Landroid/util/Range;)Z

    move-result v0

    return v0

    .line 3225
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_10
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_11

    .line 3226
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setPreviewReceiverProp(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3227
    :cond_11
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_12

    .line 3228
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setPreviewSizeProp(Landroid/util/Size;)Z

    move-result v0

    return v0

    .line 3229
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_12
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_13

    .line 3230
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setManualCaptureProp(Ljava/lang/Boolean;)Z

    move-result v0

    return v0

    .line 3231
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_13
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_14

    .line 3232
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setRawCaptureProp(Z)Z

    move-result v0

    return v0

    .line 3233
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_14
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_15

    .line 3234
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setRecordingModeProp(Z)Z

    move-result v0

    return v0

    .line 3235
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_15
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_16

    .line 3236
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setISOProp(I)Z

    move-result v0

    return v0

    .line 3237
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_16
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_17

    .line 3238
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->setSceneModeProp(I)Z

    move-result v0

    return v0

    .line 3239
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_17
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_18

    .line 3240
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setVideoSizeProp(Landroid/util/Size;)Z

    move-result v0

    return v0

    .line 3241
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_18
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_BOUNDS_FOR_ROTATED_PICTURE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_19

    .line 3242
    check-cast p2, Landroid/graphics/Rect;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setWatermarkBoundsForRotatedPictureProp(Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 3243
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_19
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_BOUNDS_MAP:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1a

    .line 3244
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setWatermarkBoundsMapProp(Ljava/util/Map;)Z

    move-result v0

    return v0

    .line 3245
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1a
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_FILE_PATH_FOR_ROTATED_PICTURE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1b

    .line 3246
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setWatermarkFilePathForRotatedPictureProp(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 3247
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1b
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_WATERMARK_FILE_PATHS_MAP:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1c

    .line 3248
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->setWatermarkFilePathsMapProp(Ljava/util/Map;)Z

    move-result v0

    return v0

    .line 3249
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1c
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

    .line 4072
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4073
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    .line 4074
    .local v2, "previewState":Lcom/oneplus/camera/OperationState;
    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v2, v3, :cond_0

    .line 4076
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

    .line 4077
    return v8

    .line 4080
    :cond_0
    iput-boolean v8, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ForceCancelAutoFocus:Z

    .line 4083
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 4084
    .local v1, "oldState":Lcom/oneplus/camera/FocusState;
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl;->-getcom-oneplus-camera-FocusStateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 4107
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startAutoFocus() - Start auto-focus"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4108
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_AutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 4111
    const/16 v3, 0x2710

    const/4 v4, 0x1

    const-wide/16 v6, 0x1388

    invoke-static {p0, v3, v4, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 4114
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    if-eq v3, v4, :cond_1

    .line 4115
    sget-object v3, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    iput-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 4119
    :goto_1
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v1, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 4128
    return v5

    .line 4088
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startAutoFocus() - Cancel current auto-focus"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4091
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 4097
    :goto_2
    sget-object v3, Lcom/oneplus/camera/FocusState;->INACTIVE:Lcom/oneplus/camera/FocusState;

    iput-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    .line 4098
    sget-object v3, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    invoke-virtual {p0, v3, v1, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4099
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;

    goto :goto_0

    .line 4094
    :catch_0
    move-exception v0

    .line 4095
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startAutoFocus() - Fail to cancel auto-focus"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 4117
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    :try_start_2
    sget-object v3, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    iput-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_FocusState:Lcom/oneplus/camera/FocusState;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 4122
    :catch_1
    move-exception v0

    .line 4123
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startAutoFocus() - Fail to start auto-focus"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4124
    return v8

    .line 4084
    nop

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

    .line 4137
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4138
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4139
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$State;

    .line 4140
    .local v0, "state":Lcom/oneplus/camera/Camera$State;
    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    if-eq v0, v1, :cond_0

    .line 4142
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

    .line 4143
    return v4

    .line 4145
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

    .line 4153
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

    .line 4154
    return v4

    .line 4151
    :pswitch_0
    return v3

    .line 4158
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4161
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->startPreviewInternal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4164
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4166
    return v4

    .line 4170
    :cond_1
    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4172
    iget-boolean v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ForceCancelAutoFocus:Z

    if-eqz v1, :cond_2

    .line 4174
    iput-boolean v4, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_ForceCancelAutoFocus:Z

    .line 4175
    invoke-virtual {p0, v4}, Lcom/oneplus/camera/LegacyCameraImpl;->cancelAutoFocus(I)V

    .line 4177
    :cond_2
    return v3

    .line 4145
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

    .line 4300
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4301
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4302
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 4304
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startVideoRecording() - No media recorder"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4305
    return v3

    .line 4311
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 4313
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->preparePreviewParameters()Z

    .line 4314
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->applyParameters()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4322
    const/4 v1, 0x1

    return v1

    .line 4317
    :catch_0
    move-exception v0

    .line 4318
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startVideoRecording() - Fail to start video recording"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4319
    return v3
.end method

.method public stopPreview(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 4361
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4362
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

    .line 4375
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4378
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

    .line 4393
    :goto_1
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->stopPreviewInternal()V

    .line 4396
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4358
    return-void

    .line 4366
    :pswitch_2
    return-void

    .line 4370
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Stop while starting"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4383
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Wait for capture stop"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4384
    return-void

    .line 4387
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview() - Cancel capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4388
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V

    goto :goto_1

    .line 4362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 4378
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

    .line 4438
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4439
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4440
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 4442
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - No media recorder"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4443
    return v3

    .line 4449
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - MediaRecorder.stop [start]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4450
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 4451
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - MediaRecorder.stop [end]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4459
    const/4 v1, 0x1

    return v1

    .line 4454
    :catch_0
    move-exception v0

    .line 4455
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopVideoRecording() - Fail to stop recorder"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4456
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4484
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
    .line 4493
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyAccess()V

    .line 4494
    invoke-virtual {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 4497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 4500
    invoke-direct {p0}, Lcom/oneplus/camera/LegacyCameraImpl;->reconnectCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4501
    const/4 v0, 0x0

    return v0

    .line 4502
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
