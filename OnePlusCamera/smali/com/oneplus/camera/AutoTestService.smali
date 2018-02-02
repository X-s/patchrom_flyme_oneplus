.class public final Lcom/oneplus/camera/AutoTestService;
.super Landroid/app/Service;
.source "AutoTestService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/AutoTestService$1;,
        Lcom/oneplus/camera/AutoTestService$2;,
        Lcom/oneplus/camera/AutoTestService$3;,
        Lcom/oneplus/camera/AutoTestService$4;,
        Lcom/oneplus/camera/AutoTestService$5;,
        Lcom/oneplus/camera/AutoTestService$6;,
        Lcom/oneplus/camera/AutoTestService$7;,
        Lcom/oneplus/camera/AutoTestService$BurstInfo;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-BaseActivity$StateSwitchesValues:[I = null

.field public static final ACTION_LOCK_FOCUS:Ljava/lang/String; = "LockFocus"

.field public static final ACTION_SLIDE_DOWN:Ljava/lang/String; = "SlideDown"

.field public static final ACTION_SLIDE_LEFT:Ljava/lang/String; = "SlideLeft"

.field public static final ACTION_SLIDE_RIGHT:Ljava/lang/String; = "SlideRight"

.field public static final ACTION_SLIDE_UP:Ljava/lang/String; = "SlideUp"

.field public static final ACTION_START_PHOTO_CAPTURE:Ljava/lang/String; = "StartPhotoCapture"

.field public static final ACTION_START_VIDEO_CAPTURE:Ljava/lang/String; = "StartVideoCapture"

.field public static final ACTION_STOP_PHOTO_CAPTURE:Ljava/lang/String; = "StopPhotoCapture"

.field public static final ACTION_STOP_VIDEO_CAPTURE:Ljava/lang/String; = "StopVideoCapture"

.field public static final ACTION_UNLOCK_FOCUS:Ljava/lang/String; = "UnLockFocus"

.field public static final FLAG_BURST:I = 0x1

.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/camera/AutoTestService;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final MSG_UPDATE_BURST_CAPTURE_HANDLE_LIST:I = 0x2711

.field private static volatile NEXT_ID:I = 0x0

.field public static final START_MODE_NORMAL:Ljava/lang/String; = "Normal"

.field public static final START_MODE_PHOTO:Ljava/lang/String; = "Photo"

.field public static final START_MODE_VIDEO:Ljava/lang/String; = "Video"

.field public static final STATE_KEY_AVAILABLE_AWB_VALUES:Ljava/lang/String; = "AvailableWb"

.field public static final STATE_KEY_AVAILABLE_CAMERA_LENS_FACING:Ljava/lang/String; = "AvailableCameraLensFacings"

.field public static final STATE_KEY_AVAILABLE_CAPTURE_MODES:Ljava/lang/String; = "AvailableCaptureModes"

.field public static final STATE_KEY_AVAILABLE_EXPOSURE_TIMES:Ljava/lang/String; = "AvailableExposureTimes"

.field public static final STATE_KEY_AVAILABLE_FACE_BEAUTY_VALUES:Ljava/lang/String; = "AvailableFaceBeautyValues"

.field public static final STATE_KEY_AVAILABLE_FLASH_MODES:Ljava/lang/String; = "AvailableFlashModes"

.field public static final STATE_KEY_AVAILABLE_FOCUS_VALUES:Ljava/lang/String; = "AvailableFocusValues"

.field public static final STATE_KEY_AVAILABLE_ISO_VALUES:Ljava/lang/String; = "AvailableIsoValues"

.field public static final STATE_KEY_AVAILABLE_PHOTO_SIZES:Ljava/lang/String; = "AvailablePhotoSizes"

.field public static final STATE_KEY_AVAILABLE_SCENES:Ljava/lang/String; = "AvailableScenes"

.field public static final STATE_KEY_AVAILABLE_VIDEO_SIZES:Ljava/lang/String; = "AvailableVideoSizes"

.field public static final STATE_KEY_AWB:Ljava/lang/String; = "Awb"

.field public static final STATE_KEY_CAMERA_LENS_FACING:Ljava/lang/String; = "CameraLensFacing"

.field public static final STATE_KEY_CAMERA_PREVIEW_STATE:Ljava/lang/String; = "CameraPreviewState"

.field public static final STATE_KEY_CAPTURE_MODE:Ljava/lang/String; = "CaptureMode"

.field public static final STATE_KEY_DIGITAL_ZOOM:Ljava/lang/String; = "DigitalZoom"

.field public static final STATE_KEY_EXPOSURE:Ljava/lang/String; = "Exposure"

.field public static final STATE_KEY_EXPOSURE_COMPENSATION:Ljava/lang/String; = "ExposureCompensataion"

.field public static final STATE_KEY_FACE_BEAUTY_VALUE:Ljava/lang/String; = "FaceBeautyValue"

.field public static final STATE_KEY_FLASH_MODES:Ljava/lang/String; = "FlashMode"

.field public static final STATE_KEY_FOCUS:Ljava/lang/String; = "Focus"

.field public static final STATE_KEY_FOCUS_STATE:Ljava/lang/String; = "FocusState"

.field public static final STATE_KEY_ISO:Ljava/lang/String; = "Iso"

.field public static final STATE_KEY_IS_FACE_BEAUTY_ENABLED:Ljava/lang/String; = "IsFaceBeautyEnabled"

.field public static final STATE_KEY_IS_GRID_VISIBLE:Ljava/lang/String; = "IsGridVisible"

.field public static final STATE_KEY_IS_MIRRORED:Ljava/lang/String; = "IsMirrored"

.field public static final STATE_KEY_IS_RAW_ENABLED:Ljava/lang/String; = "IsRawEnabled"

.field public static final STATE_KEY_IS_READY:Ljava/lang/String; = "IsReady"

.field public static final STATE_KEY_IS_SAVING_LOCATION:Ljava/lang/String; = "IsSavingLocation"

.field public static final STATE_KEY_IS_SAVING_MEDIA:Ljava/lang/String; = "IsSavingMedia"

.field public static final STATE_KEY_IS_SHUTTER_SOUND_NEEDED:Ljava/lang/String; = "IsShutterSoundNeeded"

.field public static final STATE_KEY_IS_SMILE_CAPTURE_ENABLED:Ljava/lang/String; = "IsSmileCaptureEnabled"

.field public static final STATE_KEY_LAST_SAVED_MEDIA:Ljava/lang/String; = "LastSavedMedia"

.field public static final STATE_KEY_MAX_DIGITAL_ZOOM:Ljava/lang/String; = "MaxDigitalZoom"

.field public static final STATE_KEY_PHOTO_CAPTURE_STATE:Ljava/lang/String; = "PhotoCaptureState"

.field public static final STATE_KEY_PHOTO_SIZE:Ljava/lang/String; = "PhotoSize"

.field public static final STATE_KEY_SCENE:Ljava/lang/String; = "Scene"

.field public static final STATE_KEY_SELF_TIMER_INTERVAL:Ljava/lang/String; = "SelfTimerInterval"

.field public static final STATE_KEY_VIDEO_CAPTURE_STATE:Ljava/lang/String; = "VideoCaptureState"

.field public static final STATE_KEY_VIDEO_SIZE:Ljava/lang/String; = "VideoSize"

.field private static final TAG:Ljava/lang/String; = "CameraAutoTestService"


# instance fields
.field private final m_ActivityStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Binder:Lcom/oneplus/camera/IAutoTestService$Stub;

.field private m_BurstCaptureHandleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/CaptureHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_BurstCaptureInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/camera/CaptureHandle;",
            "Lcom/oneplus/camera/AutoTestService$BurstInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_BurstPhotoReceivedCB:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

.field private m_CameraPreviewGrid:Lcom/oneplus/camera/ui/CameraPreviewGrid;

.field private m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

.field private m_CaptureHandleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/CaptureHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_ExposureController:Lcom/oneplus/camera/ExposureController;

.field private m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

.field private m_FlashController:Lcom/oneplus/camera/FlashController;

.field private m_FocusController:Lcom/oneplus/camera/FocusController;

.field private m_FocusLockHandle:Lcom/oneplus/base/Handle;

.field private m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

.field private m_Handler:Landroid/os/Handler;

.field private final m_Id:I

.field private volatile m_IsActivityAttached:Z

.field private volatile m_IsStartingActivity:Z

.field private m_LastSavedMedia:Lcom/oneplus/camera/media/MediaEventArgs;

.field private m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

.field private final m_Lock:Ljava/lang/Object;

.field private final m_MediaSavedCB:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSavedCancelledCB:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSavedFailedCB:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private m_Settings:Lcom/oneplus/base/Settings;

.field private m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

.field private m_TargetResolution:Lcom/oneplus/camera/media/Resolution;

.field private m_VideoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private m_ZoomController:Lcom/oneplus/camera/ZoomController;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/AutoTestService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstCaptureHandleList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/AutoTestService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstCaptureInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get10(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/FocusController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_FocusController:Lcom/oneplus/camera/FocusController;

    return-object v0
.end method

.method static synthetic -get11(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get12(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ui/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    return-object v0
.end method

.method static synthetic -get13(Lcom/oneplus/camera/AutoTestService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/AutoTestService;->m_IsActivityAttached:Z

    return v0
.end method

.method static synthetic -get14(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic -get15(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/media/ResolutionManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    return-object v0
.end method

.method static synthetic -get16(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/scene/SceneManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    return-object v0
.end method

.method static synthetic -get17(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/SmileCaptureController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    return-object v0
.end method

.method static synthetic -get18(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/media/Resolution;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_TargetResolution:Lcom/oneplus/camera/media/Resolution;

    return-object v0
.end method

.method static synthetic -get19(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_VideoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/OPCameraActivity;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    return-object v0
.end method

.method static synthetic -get20(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ZoomController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ui/CameraPreviewGrid;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraPreviewGrid:Lcom/oneplus/camera/ui/CameraPreviewGrid;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ui/CameraPreviewOverlay;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/AutoTestService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureHandleList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/capturemode/CaptureModeManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ExposureController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/FaceBeautyController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    return-object v0
.end method

.method static synthetic -get9(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/FlashController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_FlashController:Lcom/oneplus/camera/FlashController;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/AutoTestService;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/AutoTestService;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseActivity$State;->values()[Lcom/oneplus/base/BaseActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->CREATING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STARTING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/oneplus/camera/AutoTestService;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/CaptureHandle;)Lcom/oneplus/camera/CaptureHandle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object p1
.end method

.method static synthetic -set2(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/CaptureHandle;)Lcom/oneplus/camera/CaptureHandle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService;->m_VideoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->getBooleanState(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->performAction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->getFloatState(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->getIntState(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->getStringState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/AutoTestService;->getLongState(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap14(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/AutoTestService;->attachToActivity(Lcom/oneplus/camera/CameraActivity;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/AutoTestService;->detachFromActivity(Lcom/oneplus/camera/CameraActivity;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/base/BaseActivity$State;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/AutoTestService;->onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/AutoTestService;->onBurstPhotoReceived(Lcom/oneplus/camera/CaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/AutoTestService;->onMediaSaveCancelled(Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/AutoTestService;->onMediaSaveFailed(Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->setBooleanState(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/AutoTestService;->onMediaSaved(Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/oneplus/camera/AutoTestService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/AutoTestService;->stop()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;F)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->setFloatState(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->setIntState(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;J)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/AutoTestService;->setLongState(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->setStringState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/AutoTestService;FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->startAutoFocus(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->startCameraActivityInternal(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->start(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    sput v0, Lcom/oneplus/camera/AutoTestService;->NEXT_ID:I

    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oneplus/camera/AutoTestService;->INSTANCES:Ljava/util/Map;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 363
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstCaptureHandleList:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstCaptureInfoMap:Ljava/util/HashMap;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureHandleList:Ljava/util/List;

    .line 172
    new-instance v0, Lcom/oneplus/camera/AutoTestService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/AutoTestService$1;-><init>(Lcom/oneplus/camera/AutoTestService;)V

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_Handler:Landroid/os/Handler;

    .line 206
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_Lock:Ljava/lang/Object;

    .line 218
    new-instance v0, Lcom/oneplus/camera/AutoTestService$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/AutoTestService$2;-><init>(Lcom/oneplus/camera/AutoTestService;)V

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_ActivityStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 226
    new-instance v0, Lcom/oneplus/camera/AutoTestService$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/AutoTestService$3;-><init>(Lcom/oneplus/camera/AutoTestService;)V

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstPhotoReceivedCB:Lcom/oneplus/base/EventHandler;

    .line 234
    new-instance v0, Lcom/oneplus/camera/AutoTestService$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/AutoTestService$4;-><init>(Lcom/oneplus/camera/AutoTestService;)V

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_MediaSavedCB:Lcom/oneplus/base/EventHandler;

    .line 242
    new-instance v0, Lcom/oneplus/camera/AutoTestService$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/AutoTestService$5;-><init>(Lcom/oneplus/camera/AutoTestService;)V

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_MediaSavedCancelledCB:Lcom/oneplus/base/EventHandler;

    .line 250
    new-instance v0, Lcom/oneplus/camera/AutoTestService$6;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/AutoTestService$6;-><init>(Lcom/oneplus/camera/AutoTestService;)V

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_MediaSavedFailedCB:Lcom/oneplus/base/EventHandler;

    .line 261
    new-instance v0, Lcom/oneplus/camera/AutoTestService$7;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/AutoTestService$7;-><init>(Lcom/oneplus/camera/AutoTestService;)V

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_Binder:Lcom/oneplus/camera/IAutoTestService$Stub;

    .line 366
    const-class v1, Lcom/oneplus/camera/AutoTestService;

    monitor-enter v1

    .line 368
    :try_start_0
    sget v0, Lcom/oneplus/camera/AutoTestService;->NEXT_ID:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/oneplus/camera/AutoTestService;->NEXT_ID:I

    iput v0, p0, Lcom/oneplus/camera/AutoTestService;->m_Id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 372
    sget-object v0, Lcom/oneplus/camera/AutoTestService;->INSTANCES:Ljava/util/Map;

    iget v1, p0, Lcom/oneplus/camera/AutoTestService;->m_Id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private attachToActivity(Lcom/oneplus/camera/CameraActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 380
    if-nez p1, :cond_0

    .line 381
    return-void

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    new-instance v0, Lcom/oneplus/camera/AutoTestService$8;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/AutoTestService$8;-><init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/CameraActivity;)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 392
    return-void

    .line 395
    :cond_1
    const-string/jumbo v0, "CameraAutoTestService"

    const-string/jumbo v1, "attachToActivity()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_ActivityStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 401
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstPhotoReceivedCB:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 402
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_MediaSavedCB:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 403
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_MediaSavedCancelledCB:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 404
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_MediaSavedFailedCB:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 408
    new-instance v0, Lcom/oneplus/base/Settings;

    invoke-direct {v0, p1, v3, v2}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_Settings:Lcom/oneplus/base/Settings;

    .line 409
    const-class v0, Lcom/oneplus/camera/ui/CameraPreviewGrid;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraPreviewGrid;

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraPreviewGrid:Lcom/oneplus/camera/ui/CameraPreviewGrid;

    .line 410
    const-class v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    .line 411
    const-class v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 412
    const-class v0, Lcom/oneplus/camera/ExposureController;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ExposureController;

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    .line 413
    const-class v0, Lcom/oneplus/camera/FaceBeautyController;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FaceBeautyController;

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    .line 414
    const-class v0, Lcom/oneplus/camera/FlashController;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FlashController;

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_FlashController:Lcom/oneplus/camera/FlashController;

    .line 415
    const-class v0, Lcom/oneplus/camera/FocusController;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FocusController;

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_FocusController:Lcom/oneplus/camera/FocusController;

    .line 416
    const-class v0, Lcom/oneplus/camera/ui/GestureDetector;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/GestureDetector;

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    .line 417
    const-class v0, Lcom/oneplus/camera/location/LocationManager;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/location/LocationManager;

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    .line 418
    const-class v0, Lcom/oneplus/camera/media/ResolutionManager;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/ResolutionManager;

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    .line 419
    const-class v0, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 420
    const-class v0, Lcom/oneplus/camera/SmileCaptureController;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/SmileCaptureController;

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    .line 421
    const-class v0, Lcom/oneplus/camera/ZoomController;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ZoomController;

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    .line 424
    iput-boolean v2, p0, Lcom/oneplus/camera/AutoTestService;->m_IsActivityAttached:Z

    .line 377
    return-void
.end method

.method private detachFromActivity(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v2, 0x0

    .line 432
    if-nez p1, :cond_0

    .line 433
    return-void

    .line 434
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    new-instance v0, Lcom/oneplus/camera/AutoTestService$9;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/AutoTestService$9;-><init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/CameraActivity;)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 444
    return-void

    .line 447
    :cond_1
    const-string/jumbo v0, "CameraAutoTestService"

    const-string/jumbo v1, "detachFromActivity()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_ActivityStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 453
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstPhotoReceivedCB:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 454
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_MediaSavedCB:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 455
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_MediaSavedCancelledCB:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 456
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_MediaSavedFailedCB:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 459
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstCaptureHandleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 460
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureHandleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 461
    iput-object v2, p0, Lcom/oneplus/camera/AutoTestService;->m_LastSavedMedia:Lcom/oneplus/camera/media/MediaEventArgs;

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/AutoTestService;->m_IsActivityAttached:Z

    .line 429
    return-void
.end method

.method static fromId(I)Lcom/oneplus/camera/AutoTestService;
    .locals 5
    .param p0, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 484
    sget-object v2, Lcom/oneplus/camera/AutoTestService;->INSTANCES:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 485
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/camera/AutoTestService;>;"
    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/AutoTestService;

    .line 488
    .local v1, "service":Lcom/oneplus/camera/AutoTestService;
    if-eqz v1, :cond_0

    .line 489
    return-object v1

    .line 490
    :cond_0
    sget-object v2, Lcom/oneplus/camera/AutoTestService;->INSTANCES:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .end local v1    # "service":Lcom/oneplus/camera/AutoTestService;
    :cond_1
    return-object v4
.end method

.method private getBooleanState(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 499
    if-nez p1, :cond_0

    .line 500
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "No state key"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    :cond_0
    const-string/jumbo v3, "IsFaceBeautyEnabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 504
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v3, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v2, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .line 501
    :cond_1
    const-string/jumbo v3, "IsGridVisible"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 507
    iget-object v3, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraPreviewGrid:Lcom/oneplus/camera/ui/CameraPreviewGrid;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraPreviewGrid:Lcom/oneplus/camera/ui/CameraPreviewGrid;

    sget-object v4, Lcom/oneplus/camera/ui/CameraPreviewGrid;->PROP_GRID_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/ui/CameraPreviewGrid;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->NONE:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    if-eq v3, v4, :cond_2

    move v2, v1

    :cond_2
    return v2

    .line 501
    :cond_3
    const-string/jumbo v3, "IsMirrored"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 510
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "IsMirrored"

    invoke-virtual {v1, v2}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_4
    return v2

    .line 501
    :cond_5
    const-string/jumbo v3, "IsRawEnabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 514
    iget-object v3, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v3, :cond_11

    .line 515
    :cond_6
    return v2

    .line 501
    :cond_7
    const-string/jumbo v3, "IsReady"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 522
    iget-object v3, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-eqz v3, :cond_16

    :goto_1
    return v1

    .line 501
    :cond_8
    const-string/jumbo v3, "IsSavingLocation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 525
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    sget-object v2, Lcom/oneplus/camera/location/LocationManager;->PROP_IS_LOCATION_LISTENER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/location/LocationManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_9
    return v2

    .line 501
    :cond_a
    const-string/jumbo v3, "IsSavingMedia"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 528
    iget-object v3, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureHandleList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstCaptureHandleList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    move v1, v2

    :cond_b
    return v1

    .line 501
    :cond_c
    const-string/jumbo v1, "IsShutterSoundNeeded"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 531
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "ShutterSound"

    invoke-virtual {v1, v2}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_d
    return v2

    .line 501
    :cond_e
    const-string/jumbo v1, "IsSmileCaptureEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 534
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    sget-object v2, Lcom/oneplus/camera/SmileCaptureController;->PROP_IS_SMILE_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/SmileCaptureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_f
    return v2

    :cond_10
    move v1, v2

    .line 504
    goto/16 :goto_0

    .line 516
    :cond_11
    iget-object v3, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 517
    .local v0, "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v3, v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    if-nez v3, :cond_12

    instance-of v3, v0, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v3, :cond_15

    .line 518
    :cond_12
    iget-object v3, p0, Lcom/oneplus/camera/AutoTestService;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/oneplus/camera/AutoTestService;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "RawCapture"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v3}, Lcom/oneplus/camera/OPCameraActivity;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    :goto_2
    return v2

    :cond_14
    move v2, v1

    goto :goto_2

    .line 520
    :cond_15
    return v2

    .end local v0    # "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_16
    move v1, v2

    .line 522
    goto/16 :goto_1

    .line 536
    :cond_17
    return v2
.end method

.method private getFloatState(Ljava/lang/String;F)F
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 540
    const-string/jumbo v4, "DigitalZoom"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 543
    iget-object v4, p0, Lcom/oneplus/camera/AutoTestService;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    if-nez v4, :cond_3

    .line 544
    return p2

    .line 540
    :cond_0
    const-string/jumbo v4, "ExposureCompensataion"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 549
    iget-object v4, p0, Lcom/oneplus/camera/AutoTestService;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-nez v4, :cond_4

    .line 550
    return p2

    .line 540
    :cond_1
    const-string/jumbo v4, "Focus"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 559
    iget-object v4, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v4, :cond_6

    .line 560
    return p2

    .line 540
    :cond_2
    const-string/jumbo v4, "MaxDigitalZoom"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 573
    iget-object v4, p0, Lcom/oneplus/camera/AutoTestService;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    if-nez v4, :cond_8

    .line 574
    return p2

    .line 546
    :cond_3
    iget-object v4, p0, Lcom/oneplus/camera/AutoTestService;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    sget-object v5, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    return v4

    .line 552
    :cond_4
    iget-object v4, p0, Lcom/oneplus/camera/AutoTestService;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v5, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 553
    .local v0, "ev":F
    iget-object v4, p0, Lcom/oneplus/camera/AutoTestService;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v5, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 555
    .local v1, "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_5

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float v3, v0, v4

    .line 556
    .local v3, "relativeExposureComp":F
    :goto_0
    return v3

    .line 555
    .end local v3    # "relativeExposureComp":F
    :cond_5
    neg-float v5, v0

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float v3, v5, v4

    goto :goto_0

    .line 562
    .end local v0    # "ev":F
    .end local v1    # "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_6
    iget-object v4, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    const-class v5, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/manual/ManualModeUI;

    .line 564
    .local v2, "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    if-nez v2, :cond_7

    .line 566
    const-string/jumbo v4, "CameraAutoTestService"

    const-string/jumbo v5, "getIntState() - manualModeUi is null"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    return p2

    .line 570
    :cond_7
    invoke-virtual {v2}, Lcom/oneplus/camera/manual/ManualModeUI;->getFocus()F

    move-result v4

    return v4

    .line 576
    .end local v2    # "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    :cond_8
    iget-object v4, p0, Lcom/oneplus/camera/AutoTestService;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    sget-object v5, Lcom/oneplus/camera/ZoomController;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    return v4

    .line 579
    :cond_9
    return p2
.end method

.method private getIntState(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 586
    const-string/jumbo v2, "Awb"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    iget-object v2, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v2, :cond_2

    .line 590
    return p2

    .line 586
    :cond_0
    const-string/jumbo v2, "Iso"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    iget-object v2, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v2, :cond_4

    .line 603
    return p2

    .line 586
    :cond_1
    const-string/jumbo v2, "FaceBeautyValue"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 614
    iget-object v2, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v2, :cond_6

    .line 615
    return p2

    .line 591
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    const-class v3, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/manual/ManualModeUI;

    .line 593
    .local v1, "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    if-nez v1, :cond_3

    .line 595
    const-string/jumbo v2, "CameraAutoTestService"

    const-string/jumbo v3, "getIntState() - manualModeUi is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return p2

    .line 599
    :cond_3
    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI;->getAwb()I

    move-result v2

    return v2

    .line 604
    .end local v1    # "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    const-class v3, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/manual/ManualModeUI;

    .line 606
    .restart local v1    # "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    if-nez v1, :cond_5

    .line 608
    const-string/jumbo v2, "CameraAutoTestService"

    const-string/jumbo v3, "getIntState() - manualModeUi is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return p2

    .line 612
    :cond_5
    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI;->getIso()I

    move-result v2

    return v2

    .line 617
    .end local v1    # "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    :cond_6
    iget-object v2, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 619
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_7

    .line 620
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 622
    :cond_7
    return p2

    .line 626
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_8
    return p2
.end method

.method private getLongState(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 630
    const-string/jumbo v1, "Exposure"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v1, :cond_1

    .line 634
    return-wide p2

    .line 630
    :cond_0
    const-string/jumbo v1, "SelfTimerInterval"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 647
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v1, :cond_3

    .line 648
    return-wide p2

    .line 636
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    const-class v2, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ManualModeUI;

    .line 638
    .local v0, "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    if-nez v0, :cond_2

    .line 640
    const-string/jumbo v1, "CameraAutoTestService"

    const-string/jumbo v2, "getLongState() - manualModeUi is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    return-wide p2

    .line 644
    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->getExposure()J

    move-result-wide v2

    return-wide v2

    .line 650
    .end local v0    # "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 655
    :cond_4
    return-wide p2
.end method

.method private getStringState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 56
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 661
    const-string/jumbo v51, "AvailableCameraLensFacings"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_0

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    if-nez v51, :cond_16

    .line 665
    return-object p2

    .line 661
    :cond_0
    const-string/jumbo v51, "AvailableCaptureModes"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_1

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    move-object/from16 v51, v0

    if-nez v51, :cond_18

    .line 674
    return-object p2

    .line 661
    :cond_1
    const-string/jumbo v51, "AvailableExposureTimes"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_2

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    if-nez v51, :cond_1a

    .line 684
    return-object p2

    .line 661
    :cond_2
    const-string/jumbo v51, "AvailableFaceBeautyValues"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_3

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    if-nez v51, :cond_22

    .line 718
    return-object p2

    .line 661
    :cond_3
    const-string/jumbo v51, "AvailableFlashModes"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_5

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_FlashController:Lcom/oneplus/camera/FlashController;

    move-object/from16 v51, v0

    if-eqz v51, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    if-nez v51, :cond_26

    .line 737
    :cond_4
    sget-object v51, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual/range {v51 .. v51}, Lcom/oneplus/camera/FlashMode;->name()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 661
    :cond_5
    const-string/jumbo v51, "AvailableFocusValues"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_6

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    if-nez v51, :cond_29

    .line 758
    return-object p2

    .line 661
    :cond_6
    const-string/jumbo v51, "AvailableIsoValues"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_7

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    if-nez v51, :cond_30

    .line 791
    return-object p2

    .line 661
    :cond_7
    const-string/jumbo v51, "AvailablePhotoSizes"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_8

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    move-object/from16 v51, v0

    if-nez v51, :cond_37

    .line 824
    return-object p2

    .line 661
    :cond_8
    const-string/jumbo v51, "AvailableScenes"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_9

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    move-object/from16 v51, v0

    if-nez v51, :cond_39

    .line 834
    return-object p2

    .line 661
    :cond_9
    const-string/jumbo v51, "AvailableVideoSizes"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_a

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    move-object/from16 v51, v0

    if-nez v51, :cond_3b

    .line 845
    return-object p2

    .line 661
    :cond_a
    const-string/jumbo v51, "AvailableWb"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_b

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    if-nez v51, :cond_3d

    .line 855
    return-object p2

    .line 661
    :cond_b
    const-string/jumbo v51, "CameraLensFacing"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_c

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    if-nez v51, :cond_42

    .line 878
    return-object p2

    .line 661
    :cond_c
    const-string/jumbo v51, "CaptureMode"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_d

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    move-object/from16 v51, v0

    if-nez v51, :cond_44

    .line 887
    return-object p2

    .line 661
    :cond_d
    const-string/jumbo v51, "PhotoSize"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_e

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    move-object/from16 v51, v0

    if-nez v51, :cond_46

    .line 897
    return-object p2

    .line 661
    :cond_e
    const-string/jumbo v51, "VideoSize"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_f

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    move-object/from16 v51, v0

    if-nez v51, :cond_48

    .line 907
    return-object p2

    .line 661
    :cond_f
    const-string/jumbo v51, "Scene"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_10

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    move-object/from16 v51, v0

    if-nez v51, :cond_4a

    .line 917
    return-object p2

    .line 661
    :cond_10
    const-string/jumbo v51, "PhotoCaptureState"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_11

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    if-nez v51, :cond_4c

    .line 927
    return-object p2

    .line 661
    :cond_11
    const-string/jumbo v51, "VideoCaptureState"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_12

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    if-nez v51, :cond_4e

    .line 936
    return-object p2

    .line 661
    :cond_12
    const-string/jumbo v51, "LastSavedMedia"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_13

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_LastSavedMedia:Lcom/oneplus/camera/media/MediaEventArgs;

    move-object/from16 v51, v0

    if-nez v51, :cond_50

    .line 945
    return-object p2

    .line 661
    :cond_13
    const-string/jumbo v51, "FlashMode"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_14

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_FlashController:Lcom/oneplus/camera/FlashController;

    move-object/from16 v51, v0

    if-nez v51, :cond_51

    .line 951
    return-object p2

    .line 661
    :cond_14
    const-string/jumbo v51, "FocusState"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_15

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_FocusController:Lcom/oneplus/camera/FocusController;

    move-object/from16 v51, v0

    if-nez v51, :cond_52

    .line 957
    return-object p2

    .line 661
    :cond_15
    const-string/jumbo v51, "CameraPreviewState"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_54

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    if-nez v51, :cond_53

    .line 962
    return-object p2

    .line 667
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v51 .. v52}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 668
    .local v10, "cameraList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    .line 669
    .local v26, "lensListStr":Ljava/lang/StringBuffer;
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "cam$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/Camera;

    .line 670
    .local v7, "cam":Lcom/oneplus/camera/Camera;
    sget-object v51, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v51

    invoke-interface {v7, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v51

    move-object/from16 v0, v26

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v51

    const-string/jumbo v52, ";"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 671
    .end local v7    # "cam":Lcom/oneplus/camera/Camera;
    :cond_17
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 676
    .end local v8    # "cam$iterator":Ljava/util/Iterator;
    .end local v10    # "cameraList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    .end local v26    # "lensListStr":Ljava/lang/StringBuffer;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v51 .. v52}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    .line 677
    .local v29, "modeList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    new-instance v30, Ljava/lang/StringBuffer;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuffer;-><init>()V

    .line 678
    .local v30, "modeListStr":Ljava/lang/StringBuffer;
    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "mode$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_19

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 679
    .local v27, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    sget-object v51, Lcom/oneplus/camera/capturemode/CaptureMode;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Lcom/oneplus/camera/capturemode/CaptureMode;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v51

    const-string/jumbo v52, ";"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 680
    .end local v27    # "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_19
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 686
    .end local v28    # "mode$iterator":Ljava/util/Iterator;
    .end local v29    # "modeList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    .end local v30    # "modeListStr":Ljava/lang/StringBuffer;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v51 .. v52}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/Camera;

    .line 688
    .local v9, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v9, :cond_21

    .line 690
    sget-object v51, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v51

    invoke-interface {v9, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/util/Range;

    .line 691
    .local v37, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-eqz v37, :cond_1b

    invoke-virtual/range {v37 .. v37}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v51

    check-cast v51, Ljava/lang/Long;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    const-wide/16 v54, 0x0

    cmp-long v51, v52, v54

    if-nez v51, :cond_1c

    invoke-virtual/range {v37 .. v37}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v51

    check-cast v51, Ljava/lang/Long;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    const-wide/16 v54, 0x0

    cmp-long v51, v52, v54

    if-nez v51, :cond_1c

    .line 692
    :cond_1b
    return-object p2

    .line 694
    :cond_1c
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 695
    .local v14, "exposureTimes":Ljava/lang/StringBuffer;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    sget-object v51, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->EXPOSURE_TIME_CANDIDATES:[Ljava/lang/String;

    move-object/from16 v0, v51

    array-length v0, v0

    move/from16 v51, v0

    move/from16 v0, v22

    move/from16 v1, v51

    if-ge v0, v1, :cond_20

    .line 698
    sget-object v51, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->EXPOSURE_TIME_CANDIDATES:[Ljava/lang/String;

    aget-object v12, v51, v22

    .line 700
    .local v12, "exposureTimeCandidate":Ljava/lang/String;
    const-string/jumbo v51, "/"

    move-object/from16 v0, v51

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v51

    if-eqz v51, :cond_1e

    .line 701
    invoke-static {v12}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v52

    const-wide v54, 0x408f400000000000L    # 1000.0

    mul-double v52, v52, v54

    const-wide v54, 0x408f400000000000L    # 1000.0

    mul-double v52, v52, v54

    const-wide v54, 0x408f400000000000L    # 1000.0

    mul-double v52, v52, v54

    move-wide/from16 v0, v52

    double-to-long v0, v0

    move-wide/from16 v52, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 706
    .local v13, "exposureTimeValue":Ljava/lang/Long;
    :goto_3
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    invoke-virtual/range {v37 .. v37}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v51

    check-cast v51, Ljava/lang/Long;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Long;->longValue()J

    move-result-wide v54

    cmp-long v51, v52, v54

    if-ltz v51, :cond_1d

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    invoke-virtual/range {v37 .. v37}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v51

    check-cast v51, Ljava/lang/Long;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Long;->longValue()J

    move-result-wide v54

    cmp-long v51, v52, v54

    if-lez v51, :cond_1f

    .line 695
    :cond_1d
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 703
    .end local v13    # "exposureTimeValue":Ljava/lang/Long;
    :cond_1e
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v52

    const-wide v54, 0x408f400000000000L    # 1000.0

    mul-double v52, v52, v54

    const-wide v54, 0x408f400000000000L    # 1000.0

    mul-double v52, v52, v54

    const-wide v54, 0x408f400000000000L    # 1000.0

    mul-double v52, v52, v54

    move-wide/from16 v0, v52

    double-to-long v0, v0

    move-wide/from16 v52, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .restart local v13    # "exposureTimeValue":Ljava/lang/Long;
    goto :goto_3

    .line 710
    :cond_1f
    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v51

    const-string/jumbo v52, ";"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 712
    .end local v12    # "exposureTimeCandidate":Ljava/lang/String;
    .end local v13    # "exposureTimeValue":Ljava/lang/Long;
    :cond_20
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 715
    .end local v14    # "exposureTimes":Ljava/lang/StringBuffer;
    .end local v22    # "i":I
    .end local v37    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :cond_21
    return-object p2

    .line 720
    .end local v9    # "camera":Lcom/oneplus/camera/Camera;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v51 .. v52}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/Camera;

    .line 722
    .restart local v9    # "camera":Lcom/oneplus/camera/Camera;
    if-eqz v9, :cond_25

    .line 724
    sget-object v51, Lcom/oneplus/camera/Camera;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v51

    invoke-interface {v9, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 725
    .local v16, "fbValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v16, :cond_23

    .line 726
    return-object p2

    .line 728
    :cond_23
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 729
    .local v17, "fbValueListStr":Ljava/lang/StringBuffer;
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .local v45, "value$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_24

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/Integer;

    .line 730
    .local v44, "value":Ljava/lang/Integer;
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v51

    const-string/jumbo v52, ";"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 731
    .end local v44    # "value":Ljava/lang/Integer;
    :cond_24
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 734
    .end local v16    # "fbValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "fbValueListStr":Ljava/lang/StringBuffer;
    .end local v45    # "value$iterator":Ljava/util/Iterator;
    :cond_25
    return-object p2

    .line 739
    .end local v9    # "camera":Lcom/oneplus/camera/Camera;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_FlashController:Lcom/oneplus/camera/FlashController;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/FlashController;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v51 .. v52}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Boolean;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v51

    if-eqz v51, :cond_28

    .line 741
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 742
    .local v18, "flashList":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v51 .. v52}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v51

    sget-object v52, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_27

    .line 744
    sget-object v51, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-virtual/range {v51 .. v51}, Lcom/oneplus/camera/FlashMode;->name()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v51

    const-string/jumbo v52, ";"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v51

    sget-object v52, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    invoke-virtual/range {v52 .. v52}, Lcom/oneplus/camera/FlashMode;->name()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v51

    const-string/jumbo v52, ";"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v51

    sget-object v52, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual/range {v52 .. v52}, Lcom/oneplus/camera/FlashMode;->name()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 745
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 749
    :cond_27
    sget-object v51, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    invoke-virtual/range {v51 .. v51}, Lcom/oneplus/camera/FlashMode;->name()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v51

    const-string/jumbo v52, ";"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v51

    sget-object v52, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual/range {v52 .. v52}, Lcom/oneplus/camera/FlashMode;->name()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 754
    .end local v18    # "flashList":Ljava/lang/StringBuffer;
    :cond_28
    sget-object v51, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual/range {v51 .. v51}, Lcom/oneplus/camera/FlashMode;->name()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 760
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v51 .. v52}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/Camera;

    .line 762
    .restart local v9    # "camera":Lcom/oneplus/camera/Camera;
    if-eqz v9, :cond_2f

    .line 764
    sget-object v51, Lcom/oneplus/camera/Camera;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v51

    invoke-interface {v9, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/util/Range;

    .line 765
    .local v35, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    if-eqz v35, :cond_2a

    invoke-virtual/range {v35 .. v35}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v51

    invoke-virtual/range {v35 .. v35}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v52

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_2b

    .line 766
    :cond_2a
    return-object p2

    .line 768
    :cond_2b
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 770
    .local v20, "focusListStr":Ljava/lang/StringBuffer;
    sget-object v51, Lcom/oneplus/camera/Camera;->PROP_FOCUS_STEP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v51

    invoke-interface {v9, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Float;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .line 771
    .local v21, "focusStep":F
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .local v19, "focusCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual/range {v35 .. v35}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v51

    check-cast v51, Ljava/lang/Float;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .local v15, "fValue":F
    :goto_6
    invoke-virtual/range {v35 .. v35}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v51

    check-cast v51, Ljava/lang/Float;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Float;->floatValue()F

    move-result v51

    cmpl-float v51, v15, v51

    if-ltz v51, :cond_2c

    .line 773
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v51

    move-object/from16 v0, v19

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    sub-float v15, v15, v21

    goto :goto_6

    .line 775
    :cond_2c
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v51

    if-lez v51, :cond_2d

    .line 776
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v51

    add-int/lit8 v52, v51, -0x1

    invoke-virtual/range {v35 .. v35}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v51

    check-cast v51, Ljava/lang/Float;

    move-object/from16 v0, v19

    move/from16 v1, v52

    move-object/from16 v2, v51

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 779
    :cond_2d
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v51

    move/from16 v0, v22

    move/from16 v1, v51

    if-ge v0, v1, :cond_2e

    .line 781
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v51

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v51

    const-string/jumbo v52, ";"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 779
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 784
    :cond_2e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 787
    .end local v15    # "fValue":F
    .end local v19    # "focusCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v20    # "focusListStr":Ljava/lang/StringBuffer;
    .end local v21    # "focusStep":F
    .end local v22    # "i":I
    .end local v35    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_2f
    return-object p2

    .line 793
    .end local v9    # "camera":Lcom/oneplus/camera/Camera;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v51 .. v52}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/Camera;

    .line 795
    .restart local v9    # "camera":Lcom/oneplus/camera/Camera;
    if-eqz v9, :cond_36

    .line 797
    sget-object v51, Lcom/oneplus/camera/Camera;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v51

    invoke-interface {v9, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/util/Range;

    .line 798
    .local v36, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v36, :cond_31

    invoke-virtual/range {v36 .. v36}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v51

    invoke-virtual/range {v36 .. v36}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v52

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_32

    .line 799
    :cond_31
    return-object p2

    .line 801
    :cond_32
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 802
    .local v24, "isoListStr":Ljava/lang/StringBuffer;
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_8
    sget-object v51, Lcom/oneplus/camera/manual/ISOKnobView;->ISO_CANDIDATES:[Ljava/lang/String;

    move-object/from16 v0, v51

    array-length v0, v0

    move/from16 v51, v0

    move/from16 v0, v22

    move/from16 v1, v51

    if-ge v0, v1, :cond_35

    .line 805
    sget-object v51, Lcom/oneplus/camera/manual/ISOKnobView;->ISO_CANDIDATES:[Ljava/lang/String;

    aget-object v23, v51, v22

    .line 808
    .local v23, "isoCandidate":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 811
    .local v25, "isoValue":I
    invoke-virtual/range {v36 .. v36}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v51

    check-cast v51, Ljava/lang/Integer;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v51

    move/from16 v0, v25

    move/from16 v1, v51

    if-lt v0, v1, :cond_33

    add-int/lit8 v52, v25, -0x32

    invoke-virtual/range {v36 .. v36}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v51

    check-cast v51, Ljava/lang/Integer;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v51

    move/from16 v0, v52

    move/from16 v1, v51

    if-le v0, v1, :cond_34

    .line 802
    :cond_33
    :goto_9
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 815
    :cond_34
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v51

    const-string/jumbo v52, ";"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 817
    .end local v23    # "isoCandidate":Ljava/lang/String;
    .end local v25    # "isoValue":I
    :cond_35
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 820
    .end local v22    # "i":I
    .end local v24    # "isoListStr":Ljava/lang/StringBuffer;
    .end local v36    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_36
    return-object p2

    .line 826
    .end local v9    # "camera":Lcom/oneplus/camera/Camera;
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v51 .. v52}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/List;

    .line 827
    .local v32, "photoResList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    .line 828
    .local v33, "photoResListStr":Ljava/lang/StringBuffer;
    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, "resolution$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_38

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/oneplus/camera/media/Resolution;

    .line 829
    .local v38, "resolution":Lcom/oneplus/camera/media/Resolution;
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v51

    const-string/jumbo v52, ";"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 830
    .end local v38    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_38
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 836
    .end local v32    # "photoResList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    .end local v33    # "photoResListStr":Ljava/lang/StringBuffer;
    .end local v39    # "resolution$iterator":Ljava/util/Iterator;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v51 .. v52}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/List;

    .line 837
    .local v42, "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    new-instance v43, Ljava/lang/StringBuffer;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuffer;-><init>()V

    .line 838
    .local v43, "sceneListStr":Ljava/lang/StringBuffer;
    invoke-interface/range {v42 .. v42}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .local v41, "scene$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_3a

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/oneplus/camera/scene/Scene;

    .line 839
    .local v40, "scene":Lcom/oneplus/camera/scene/Scene;
    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v51

    const-string/jumbo v52, ";"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 840
    .end local v40    # "scene":Lcom/oneplus/camera/scene/Scene;
    :cond_3a
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 847
    .end local v41    # "scene$iterator":Ljava/util/Iterator;
    .end local v42    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    .end local v43    # "sceneListStr":Ljava/lang/StringBuffer;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v51 .. v52}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/List;

    .line 848
    .local v47, "videoResList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    new-instance v48, Ljava/lang/StringBuffer;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuffer;-><init>()V

    .line 849
    .local v48, "videoResListStr":Ljava/lang/StringBuffer;
    invoke-interface/range {v47 .. v47}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .restart local v39    # "resolution$iterator":Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_3c

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/oneplus/camera/media/Resolution;

    .line 850
    .restart local v38    # "resolution":Lcom/oneplus/camera/media/Resolution;
    move-object/from16 v0, v48

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v51

    const-string/jumbo v52, ";"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 851
    .end local v38    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_3c
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 857
    .end local v39    # "resolution$iterator":Ljava/util/Iterator;
    .end local v47    # "videoResList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    .end local v48    # "videoResListStr":Ljava/lang/StringBuffer;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v51 .. v52}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/Camera;

    .line 859
    .restart local v9    # "camera":Lcom/oneplus/camera/Camera;
    if-eqz v9, :cond_41

    .line 861
    sget-object v51, Lcom/oneplus/camera/Camera;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v51

    invoke-interface {v9, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 862
    .local v4, "availabeAwbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_3e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v51

    const/16 v52, 0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-ge v0, v1, :cond_3f

    .line 863
    :cond_3e
    return-object p2

    .line 865
    :cond_3f
    new-instance v50, Ljava/lang/StringBuffer;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuffer;-><init>()V

    .line 867
    .local v50, "wbListStr":Ljava/lang/StringBuffer;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "awb$iterator":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 869
    .local v5, "awb":Ljava/lang/Integer;
    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v51

    const-string/jumbo v52, ";"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 872
    .end local v5    # "awb":Ljava/lang/Integer;
    :cond_40
    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 875
    .end local v4    # "availabeAwbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "awb$iterator":Ljava/util/Iterator;
    .end local v50    # "wbListStr":Ljava/lang/StringBuffer;
    :cond_41
    return-object p2

    .line 879
    .end local v9    # "camera":Lcom/oneplus/camera/Camera;
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v51 .. v52}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/Camera;

    .line 880
    .restart local v9    # "camera":Lcom/oneplus/camera/Camera;
    if-eqz v9, :cond_43

    .line 881
    sget-object v51, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v51

    invoke-interface {v9, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual/range {v51 .. v51}, Lcom/oneplus/camera/Camera$LensFacing;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 883
    :cond_43
    return-object p2

    .line 889
    .end local v9    # "camera":Lcom/oneplus/camera/Camera;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v51 .. v52}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 890
    .local v11, "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v11, :cond_45

    .line 891
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 893
    :cond_45
    return-object p2

    .line 899
    .end local v11    # "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v51 .. v52}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/oneplus/camera/media/Resolution;

    .line 900
    .local v34, "photoSize":Lcom/oneplus/camera/media/Resolution;
    if-eqz v34, :cond_47

    .line 901
    invoke-virtual/range {v34 .. v34}, Lcom/oneplus/camera/media/Resolution;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 903
    :cond_47
    return-object p2

    .line 909
    .end local v34    # "photoSize":Lcom/oneplus/camera/media/Resolution;
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v51 .. v52}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/oneplus/camera/media/Resolution;

    .line 910
    .local v49, "videoSize":Lcom/oneplus/camera/media/Resolution;
    if-eqz v49, :cond_49

    .line 911
    invoke-virtual/range {v49 .. v49}, Lcom/oneplus/camera/media/Resolution;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 913
    :cond_49
    return-object p2

    .line 919
    .end local v49    # "videoSize":Lcom/oneplus/camera/media/Resolution;
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v51 .. v52}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/oneplus/camera/scene/Scene;

    .line 920
    .restart local v40    # "scene":Lcom/oneplus/camera/scene/Scene;
    if-eqz v40, :cond_4b

    .line 921
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 923
    :cond_4b
    return-object p2

    .line 928
    .end local v40    # "scene":Lcom/oneplus/camera/scene/Scene;
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v51 .. v52}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/oneplus/camera/PhotoCaptureState;

    .line 929
    .local v31, "photoCaptureState":Lcom/oneplus/camera/PhotoCaptureState;
    if-eqz v31, :cond_4d

    .line 930
    invoke-virtual/range {v31 .. v31}, Lcom/oneplus/camera/PhotoCaptureState;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 932
    :cond_4d
    return-object p2

    .line 937
    .end local v31    # "photoCaptureState":Lcom/oneplus/camera/PhotoCaptureState;
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v51 .. v52}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/oneplus/camera/VideoCaptureState;

    .line 938
    .local v46, "videoCaptureState":Lcom/oneplus/camera/VideoCaptureState;
    if-eqz v46, :cond_4f

    .line 939
    invoke-virtual/range {v46 .. v46}, Lcom/oneplus/camera/VideoCaptureState;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 941
    :cond_4f
    return-object p2

    .line 947
    .end local v46    # "videoCaptureState":Lcom/oneplus/camera/VideoCaptureState;
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_LastSavedMedia:Lcom/oneplus/camera/media/MediaEventArgs;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 953
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_FlashController:Lcom/oneplus/camera/FlashController;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v51 .. v52}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/oneplus/camera/FlashMode;

    invoke-virtual/range {v51 .. v51}, Lcom/oneplus/camera/FlashMode;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 959
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_FocusController:Lcom/oneplus/camera/FocusController;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v51 .. v52}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/oneplus/camera/FocusState;

    invoke-virtual/range {v51 .. v51}, Lcom/oneplus/camera/FocusState;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 963
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    move-object/from16 v51, v0

    sget-object v52, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v51 .. v52}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/oneplus/camera/OperationState;

    invoke-virtual/range {v51 .. v51}, Lcom/oneplus/camera/OperationState;->toString()Ljava/lang/String;

    move-result-object v51

    return-object v51

    .line 966
    :cond_54
    return-object p2
.end method

.method private onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V
    .locals 3
    .param p1, "state"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    .line 995
    invoke-static {}, Lcom/oneplus/camera/AutoTestService;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 993
    :goto_0
    return-void

    .line 998
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1000
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/AutoTestService;->m_IsStartingActivity:Z

    if-nez v0, :cond_0

    .line 1002
    const-string/jumbo v0, "CameraAutoTestService"

    const-string/jumbo v2, "onActivityStateChanged() - Activity restarted, unbind"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/AutoTestService;->detachFromActivity(Lcom/oneplus/camera/CameraActivity;)V

    .line 1004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 998
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1009
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1011
    :try_start_1
    const-string/jumbo v0, "CameraAutoTestService"

    const-string/jumbo v2, "onActivityStateChanged() - Activity destroying, unbind"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/AutoTestService;->detachFromActivity(Lcom/oneplus/camera/CameraActivity;)V

    .line 1013
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1009
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 995
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onBurstPhotoReceived(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 3
    .param p1, "args"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstCaptureInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/AutoTestService$BurstInfo;

    .line 1050
    .local v0, "info":Lcom/oneplus/camera/AutoTestService$BurstInfo;
    if-nez v0, :cond_0

    .line 1051
    new-instance v0, Lcom/oneplus/camera/AutoTestService$BurstInfo;

    .end local v0    # "info":Lcom/oneplus/camera/AutoTestService$BurstInfo;
    invoke-direct {v0}, Lcom/oneplus/camera/AutoTestService$BurstInfo;-><init>()V

    .line 1053
    .restart local v0    # "info":Lcom/oneplus/camera/AutoTestService$BurstInfo;
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/camera/AutoTestService$BurstInfo;->increaseReceivedCount()V

    .line 1054
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstCaptureInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    return-void
.end method

.method private onBurstPhotoSaveFailed(Lcom/oneplus/camera/CaptureHandle;)V
    .locals 8
    .param p1, "burstCaptureHandle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    const/16 v7, 0x2711

    const/4 v6, 0x0

    .line 1021
    const/4 v3, 0x0

    .line 1022
    .local v3, "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    iget-object v5, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstCaptureHandleList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    .local v1, "handle$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CaptureHandle;

    .line 1024
    .local v0, "handle":Lcom/oneplus/camera/CaptureHandle;
    invoke-virtual {v0}, Lcom/oneplus/camera/CaptureHandle;->getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    .line 1025
    .local v3, "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    invoke-virtual {p1, v3}, Lcom/oneplus/camera/CaptureHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1027
    iget-object v5, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstCaptureInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/AutoTestService$BurstInfo;

    .line 1028
    .local v2, "info":Lcom/oneplus/camera/AutoTestService$BurstInfo;
    if-eqz v2, :cond_1

    .line 1030
    invoke-virtual {v2}, Lcom/oneplus/camera/AutoTestService$BurstInfo;->decreaseReceivedCount()V

    .line 1031
    iget-object v5, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstCaptureInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    :cond_1
    iget-object v5, p0, Lcom/oneplus/camera/AutoTestService;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1036
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/oneplus/camera/AutoTestService$BurstInfo;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1038
    iget-object v5, p0, Lcom/oneplus/camera/AutoTestService;->m_Handler:Landroid/os/Handler;

    invoke-static {v5, v7, v6, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1039
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/oneplus/camera/AutoTestService;->m_Handler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1019
    .end local v0    # "handle":Lcom/oneplus/camera/CaptureHandle;
    .end local v2    # "info":Lcom/oneplus/camera/AutoTestService$BurstInfo;
    .end local v3    # "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private onMediaSaveCancelled(Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 4
    .param p1, "args"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    .line 1112
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CaptureHandle;->isBurstPhotoCapture()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1114
    const/4 v2, 0x0

    .line 1115
    .local v2, "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    iget-object v3, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureHandleList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    .local v1, "handle$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CaptureHandle;

    .line 1117
    .local v0, "handle":Lcom/oneplus/camera/CaptureHandle;
    invoke-virtual {v0}, Lcom/oneplus/camera/CaptureHandle;->getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    .line 1118
    .local v2, "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/camera/CaptureHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1120
    iget-object v3, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureHandleList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1110
    .end local v0    # "handle":Lcom/oneplus/camera/CaptureHandle;
    .end local v1    # "handle$iterator":Ljava/util/Iterator;
    .end local v2    # "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    :cond_1
    :goto_0
    return-void

    .line 1126
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oneplus/camera/AutoTestService;->onBurstPhotoSaveFailed(Lcom/oneplus/camera/CaptureHandle;)V

    goto :goto_0
.end method

.method private onMediaSaveFailed(Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 4
    .param p1, "args"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    .line 1131
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CaptureHandle;->isBurstPhotoCapture()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1133
    const/4 v2, 0x0

    .line 1134
    .local v2, "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    iget-object v3, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureHandleList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    .local v1, "handle$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CaptureHandle;

    .line 1136
    .local v0, "handle":Lcom/oneplus/camera/CaptureHandle;
    invoke-virtual {v0}, Lcom/oneplus/camera/CaptureHandle;->getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    .line 1137
    .local v2, "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/camera/CaptureHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1139
    iget-object v3, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureHandleList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1129
    .end local v0    # "handle":Lcom/oneplus/camera/CaptureHandle;
    .end local v1    # "handle$iterator":Ljava/util/Iterator;
    .end local v2    # "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    :cond_1
    :goto_0
    return-void

    .line 1145
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oneplus/camera/AutoTestService;->onBurstPhotoSaveFailed(Lcom/oneplus/camera/CaptureHandle;)V

    goto :goto_0
.end method

.method private onMediaSaved(Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 8
    .param p1, "args"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    const/16 v7, 0x2711

    const/4 v6, 0x0

    .line 1059
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/camera/CaptureHandle;->isBurstPhotoCapture()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1061
    const/4 v3, 0x0

    .line 1062
    .local v3, "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    iget-object v5, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureHandleList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    .local v1, "handle$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CaptureHandle;

    .line 1064
    .local v0, "handle":Lcom/oneplus/camera/CaptureHandle;
    invoke-virtual {v0}, Lcom/oneplus/camera/CaptureHandle;->getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    .line 1065
    .local v3, "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/oneplus/camera/CaptureHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1067
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService;->m_LastSavedMedia:Lcom/oneplus/camera/media/MediaEventArgs;

    .line 1068
    iget-object v5, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureHandleList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1057
    .end local v0    # "handle":Lcom/oneplus/camera/CaptureHandle;
    .end local v3    # "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    :cond_1
    :goto_0
    return-void

    .line 1075
    .end local v1    # "handle$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x0

    .line 1076
    .local v3, "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    iget-object v5, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstCaptureHandleList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    .restart local v1    # "handle$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CaptureHandle;

    .line 1078
    .restart local v0    # "handle":Lcom/oneplus/camera/CaptureHandle;
    invoke-virtual {v0}, Lcom/oneplus/camera/CaptureHandle;->getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    .line 1079
    .local v3, "internalHandle":Lcom/oneplus/camera/CaptureHandle;
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/oneplus/camera/CaptureHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1081
    iget-object v5, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstCaptureInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/AutoTestService$BurstInfo;

    .line 1082
    .local v2, "info":Lcom/oneplus/camera/AutoTestService$BurstInfo;
    if-eqz v2, :cond_1

    .line 1089
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService;->m_LastSavedMedia:Lcom/oneplus/camera/media/MediaEventArgs;

    .line 1092
    invoke-virtual {v2}, Lcom/oneplus/camera/AutoTestService$BurstInfo;->increaseSaveDCount()V

    .line 1093
    iget-object v5, p0, Lcom/oneplus/camera/AutoTestService;->m_BurstCaptureInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    iget-object v5, p0, Lcom/oneplus/camera/AutoTestService;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1097
    invoke-virtual {v2}, Lcom/oneplus/camera/AutoTestService$BurstInfo;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1099
    iget-object v5, p0, Lcom/oneplus/camera/AutoTestService;->m_Handler:Landroid/os/Handler;

    invoke-static {v5, v7, v6, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1100
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/oneplus/camera/AutoTestService;->m_Handler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private performAction(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1184
    const-string/jumbo v0, "LockFocus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v0, :cond_7

    .line 1189
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/AutoTestService$10;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AutoTestService$10;-><init>(Lcom/oneplus/camera/AutoTestService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1196
    return v2

    .line 1184
    :cond_0
    const-string/jumbo v0, "SlideUp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1205
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/camera/AutoTestService;->simulateSlide(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1184
    :cond_2
    const-string/jumbo v0, "SlideDown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SlideLeft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SlideRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "StartPhotoCapture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1208
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v0, :cond_8

    .line 1209
    return v1

    .line 1184
    :cond_3
    const-string/jumbo v0, "StopPhotoCapture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1240
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1241
    return v1

    .line 1184
    :cond_4
    const-string/jumbo v0, "StartVideoCapture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1255
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v0, :cond_a

    .line 1256
    return v1

    .line 1184
    :cond_5
    const-string/jumbo v0, "StopVideoCapture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1274
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_VideoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1275
    return v1

    .line 1184
    :cond_6
    const-string/jumbo v0, "UnLockFocus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1289
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_FocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1290
    return v1

    .line 1199
    :cond_7
    return v1

    .line 1212
    :cond_8
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/AutoTestService$11;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/camera/AutoTestService$11;-><init>(Lcom/oneplus/camera/AutoTestService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1237
    return v2

    .line 1244
    :cond_9
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/AutoTestService$12;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AutoTestService$12;-><init>(Lcom/oneplus/camera/AutoTestService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1252
    return v2

    .line 1258
    :cond_a
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/AutoTestService$13;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AutoTestService$13;-><init>(Lcom/oneplus/camera/AutoTestService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1272
    return v2

    .line 1278
    :cond_b
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/AutoTestService$14;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AutoTestService$14;-><init>(Lcom/oneplus/camera/AutoTestService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1286
    return v2

    .line 1293
    :cond_c
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/AutoTestService$15;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AutoTestService$15;-><init>(Lcom/oneplus/camera/AutoTestService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1301
    return v2

    .line 1304
    :cond_d
    return v1
.end method

.method private sendTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/AutoTestService$36;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/AutoTestService$36;-><init>(Lcom/oneplus/camera/AutoTestService;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1840
    return-void
.end method

.method private setBooleanPreference(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_Settings:Lcom/oneplus/base/Settings;

    if-nez v0, :cond_0

    .line 1823
    const/4 v0, 0x0

    return v0

    .line 1826
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_Settings:Lcom/oneplus/base/Settings;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1827
    const/4 v0, 0x1

    return v0
.end method

.method private setBooleanState(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1311
    if-nez p1, :cond_0

    .line 1312
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "No state key"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1314
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 1316
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    const-string/jumbo v1, "IsFaceBeautyEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1320
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    if-nez v1, :cond_7

    .line 1321
    return v3

    .line 1316
    :cond_1
    const-string/jumbo v1, "IsGridVisible"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1345
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraPreviewGrid:Lcom/oneplus/camera/ui/CameraPreviewGrid;

    if-nez v1, :cond_a

    .line 1346
    return v3

    .line 1316
    :cond_2
    const-string/jumbo v1, "IsMirrored"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1366
    const-string/jumbo v1, "IsMirrored"

    invoke-direct {p0, v1, p2}, Lcom/oneplus/camera/AutoTestService;->setBooleanPreference(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 1316
    :cond_3
    const-string/jumbo v1, "IsRawEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1369
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_Settings:Lcom/oneplus/base/Settings;

    if-nez v1, :cond_d

    .line 1370
    return v3

    .line 1316
    :cond_4
    const-string/jumbo v1, "IsSavingLocation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1390
    const-string/jumbo v1, "Location.Save"

    invoke-direct {p0, v1, p2}, Lcom/oneplus/camera/AutoTestService;->setBooleanPreference(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 1316
    :cond_5
    const-string/jumbo v1, "IsShutterSoundNeeded"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1393
    const-string/jumbo v1, "ShutterSound"

    invoke-direct {p0, v1, p2}, Lcom/oneplus/camera/AutoTestService;->setBooleanPreference(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 1316
    :cond_6
    const-string/jumbo v1, "IsSmileCaptureEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1395
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    if-nez v1, :cond_f

    .line 1396
    return v3

    .line 1323
    :cond_7
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v2, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1324
    return v3

    .line 1326
    :cond_8
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-eqz v1, :cond_9

    .line 1328
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/AutoTestService$16;

    invoke-direct {v2, p0, p2}, Lcom/oneplus/camera/AutoTestService$16;-><init>(Lcom/oneplus/camera/AutoTestService;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1338
    return v4

    .line 1340
    :cond_9
    return v3

    .line 1347
    :cond_a
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-eqz v1, :cond_c

    .line 1349
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/AutoTestService$17;

    invoke-direct {v2, p0, p2}, Lcom/oneplus/camera/AutoTestService$17;-><init>(Lcom/oneplus/camera/AutoTestService;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1359
    iget-object v2, p0, Lcom/oneplus/camera/AutoTestService;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "Grid.Type"

    if-eqz p2, :cond_b

    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->UNIFORM_3x3:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1360
    return v4

    .line 1359
    :cond_b
    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->NONE:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    goto :goto_0

    .line 1362
    :cond_c
    return v3

    .line 1373
    :cond_d
    if-eqz v0, :cond_e

    .line 1375
    invoke-interface {v0}, Lcom/oneplus/camera/Camera;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/AutoTestService$18;

    invoke-direct {v2, p0, v0, p2}, Lcom/oneplus/camera/AutoTestService$18;-><init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/Camera;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1383
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "RawCapture"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1384
    return v4

    .line 1386
    :cond_e
    return v3

    .line 1397
    :cond_f
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-eqz v1, :cond_10

    .line 1399
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/AutoTestService$19;

    invoke-direct {v2, p0, p2}, Lcom/oneplus/camera/AutoTestService$19;-><init>(Lcom/oneplus/camera/AutoTestService;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1407
    return v4

    .line 1409
    :cond_10
    return v3

    .line 1412
    :cond_11
    return v3
.end method

.method private setFloatState(Ljava/lang/String;F)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1416
    if-nez p1, :cond_0

    .line 1417
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "No state key"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1419
    :cond_0
    const-string/jumbo v1, "DigitalZoom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1422
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    if-nez v1, :cond_4

    .line 1423
    return v3

    .line 1419
    :cond_1
    const-string/jumbo v1, "ExposureCompensataion"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1435
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v1, :cond_5

    .line 1436
    :cond_2
    return v3

    .line 1419
    :cond_3
    const-string/jumbo v1, "Focus"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1450
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v1, :cond_6

    .line 1451
    return v3

    .line 1425
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/AutoTestService$20;

    invoke-direct {v2, p0, p2}, Lcom/oneplus/camera/AutoTestService$20;-><init>(Lcom/oneplus/camera/AutoTestService;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1432
    return v4

    .line 1438
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/AutoTestService$21;

    invoke-direct {v2, p0, p2}, Lcom/oneplus/camera/AutoTestService$21;-><init>(Lcom/oneplus/camera/AutoTestService;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1447
    return v4

    .line 1452
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    const-class v2, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ManualModeUI;

    .line 1454
    .local v0, "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    if-nez v0, :cond_7

    .line 1455
    return v3

    .line 1458
    :cond_7
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/AutoTestService$22;

    invoke-direct {v2, p0, v0, p2}, Lcom/oneplus/camera/AutoTestService$22;-><init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/manual/ManualModeUI;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1465
    return v4

    .line 1469
    .end local v0    # "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    :cond_8
    return v3
.end method

.method private setIntState(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1475
    const-string/jumbo v1, "Awb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1478
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v1, :cond_3

    .line 1479
    return v3

    .line 1475
    :cond_0
    const-string/jumbo v1, "FaceBeautyValue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1496
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v1, :cond_5

    .line 1497
    :cond_1
    return v3

    .line 1475
    :cond_2
    const-string/jumbo v1, "Iso"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1516
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v1, :cond_7

    .line 1518
    const-string/jumbo v1, "CameraAutoTestService"

    const-string/jumbo v2, "setIntState() - m_CameraActivity is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    return v3

    .line 1480
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    const-class v2, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ManualModeUI;

    .line 1482
    .local v0, "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    if-nez v0, :cond_4

    .line 1483
    return v3

    .line 1486
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/AutoTestService$23;

    invoke-direct {v2, p0, v0, p2}, Lcom/oneplus/camera/AutoTestService$23;-><init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/manual/ManualModeUI;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1493
    return v4

    .line 1498
    .end local v0    # "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_FaceBeautyController:Lcom/oneplus/camera/FaceBeautyController;

    sget-object v2, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1500
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/AutoTestService$24;

    invoke-direct {v2, p0, p2}, Lcom/oneplus/camera/AutoTestService$24;-><init>(Lcom/oneplus/camera/AutoTestService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1508
    return v4

    .line 1512
    :cond_6
    const-string/jumbo v1, "CameraAutoTestService"

    const-string/jumbo v2, "setIntState() - STATE_KEY_FACE_BEAUTY_VALUE, not enable face beauty."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    return v3

    .line 1521
    :cond_7
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    const-class v2, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ManualModeUI;

    .line 1523
    .restart local v0    # "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    if-nez v0, :cond_8

    .line 1525
    const-string/jumbo v1, "CameraAutoTestService"

    const-string/jumbo v2, "setIntState() - manualModeUi is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    return v3

    .line 1530
    :cond_8
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/AutoTestService$25;

    invoke-direct {v2, p0, v0, p2}, Lcom/oneplus/camera/AutoTestService$25;-><init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/manual/ManualModeUI;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1537
    return v4

    .line 1541
    .end local v0    # "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    :cond_9
    return v3
.end method

.method private setLongState(Ljava/lang/String;J)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1545
    const-string/jumbo v1, "Exposure"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1549
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v1, :cond_1

    .line 1550
    return v3

    .line 1545
    :cond_0
    const-string/jumbo v1, "SelfTimerInterval"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1567
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v1, :cond_3

    .line 1568
    return v3

    .line 1551
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    const-class v2, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ManualModeUI;

    .line 1553
    .local v0, "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    if-nez v0, :cond_2

    .line 1554
    return v3

    .line 1557
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/AutoTestService$26;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/oneplus/camera/AutoTestService$26;-><init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/manual/ManualModeUI;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1564
    return v4

    .line 1571
    .end local v0    # "manualModeUi":Lcom/oneplus/camera/manual/ManualModeUI;
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/AutoTestService$27;

    invoke-direct {v2, p0, p2, p3}, Lcom/oneplus/camera/AutoTestService$27;-><init>(Lcom/oneplus/camera/AutoTestService;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1578
    return v4

    .line 1582
    :cond_4
    return v3
.end method

.method private setStringState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1586
    if-nez p1, :cond_0

    .line 1587
    new-instance v13, Landroid/os/RemoteException;

    const-string/jumbo v14, "No state key"

    invoke-direct {v13, v14}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1589
    :cond_0
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v13, :cond_1

    .line 1590
    const/4 v13, 0x0

    return v13

    .line 1592
    :cond_1
    const-string/jumbo v13, "PhotoSize"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1596
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-nez v13, :cond_7

    .line 1597
    const/4 v13, 0x0

    return v13

    .line 1592
    :cond_2
    const-string/jumbo v13, "CameraLensFacing"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1624
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v13, :cond_b

    .line 1625
    const/4 v13, 0x0

    return v13

    .line 1592
    :cond_3
    const-string/jumbo v13, "CaptureMode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1649
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v13, :cond_f

    .line 1650
    const/4 v13, 0x0

    return v13

    .line 1592
    :cond_4
    const-string/jumbo v13, "FlashMode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1670
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-nez v13, :cond_12

    .line 1671
    const/4 v13, 0x0

    return v13

    .line 1592
    :cond_5
    const-string/jumbo v13, "Scene"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1754
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-nez v13, :cond_1b

    .line 1755
    const/4 v13, 0x0

    return v13

    .line 1592
    :cond_6
    const-string/jumbo v13, "VideoSize"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 1788
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-nez v13, :cond_1f

    .line 1789
    const/4 v13, 0x0

    return v13

    .line 1599
    :cond_7
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v14, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v13, v14}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1600
    .local v6, "photoResolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_TargetResolution:Lcom/oneplus/camera/media/Resolution;

    .line 1601
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "resolution$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/media/Resolution;

    .line 1603
    .local v7, "resolution":Lcom/oneplus/camera/media/Resolution;
    invoke-virtual {v7}, Lcom/oneplus/camera/media/Resolution;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1605
    iput-object v7, p0, Lcom/oneplus/camera/AutoTestService;->m_TargetResolution:Lcom/oneplus/camera/media/Resolution;

    .line 1609
    .end local v7    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_9
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_TargetResolution:Lcom/oneplus/camera/media/Resolution;

    if-eqz v13, :cond_a

    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-eqz v13, :cond_a

    .line 1611
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v13}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/oneplus/camera/AutoTestService$28;

    invoke-direct {v14, p0}, Lcom/oneplus/camera/AutoTestService$28;-><init>(Lcom/oneplus/camera/AutoTestService;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1618
    const/4 v13, 0x1

    return v13

    .line 1621
    :cond_a
    const/4 v13, 0x0

    return v13

    .line 1628
    .end local v6    # "photoResolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    .end local v8    # "resolution$iterator":Ljava/util/Iterator;
    :cond_b
    sget-object v13, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v13}, Lcom/oneplus/camera/Camera$LensFacing;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1629
    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    .line 1635
    :goto_0
    if-eqz v2, :cond_e

    .line 1637
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v13}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/oneplus/camera/AutoTestService$29;

    invoke-direct {v14, p0, v2}, Lcom/oneplus/camera/AutoTestService$29;-><init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/Camera$LensFacing;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1644
    const/4 v13, 0x1

    return v13

    .line 1630
    :cond_c
    sget-object v13, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v13}, Lcom/oneplus/camera/Camera$LensFacing;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1631
    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    .local v2, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    goto :goto_0

    .line 1633
    .end local v2    # "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    :cond_d
    const/4 v2, 0x0

    .local v2, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    goto :goto_0

    .line 1647
    .end local v2    # "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    :cond_e
    const/4 v13, 0x0

    return v13

    .line 1652
    :cond_f
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v14, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v13, v14}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1653
    .local v5, "modeList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "mode$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 1655
    .local v3, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    sget-object v13, Lcom/oneplus/camera/capturemode/CaptureMode;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v13}, Lcom/oneplus/camera/capturemode/CaptureMode;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1657
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v13}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/oneplus/camera/AutoTestService$30;

    invoke-direct {v14, p0, v3}, Lcom/oneplus/camera/AutoTestService$30;-><init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/capturemode/CaptureMode;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1664
    const/4 v13, 0x1

    return v13

    .line 1667
    .end local v3    # "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_11
    const/4 v13, 0x0

    return v13

    .line 1672
    .end local v4    # "mode$iterator":Ljava/util/Iterator;
    .end local v5    # "modeList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    :cond_12
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-nez v13, :cond_13

    .line 1673
    const/4 v13, 0x0

    return v13

    .line 1675
    :cond_13
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v14, Lcom/oneplus/camera/FlashController;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v13, v14}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1678
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    sget-object v14, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v13, v14}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v13, v14, :cond_17

    .line 1680
    sget-object v13, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v13}, Lcom/oneplus/camera/FlashMode;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 1681
    sget-object v1, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    .line 1689
    .local v1, "flashMode":Lcom/oneplus/camera/FlashMode;
    :goto_1
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v13}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/oneplus/camera/AutoTestService$31;

    invoke-direct {v14, p0, v1}, Lcom/oneplus/camera/AutoTestService$31;-><init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/FlashMode;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1730
    const/4 v13, 0x1

    return v13

    .line 1682
    .end local v1    # "flashMode":Lcom/oneplus/camera/FlashMode;
    :cond_14
    sget-object v13, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v13}, Lcom/oneplus/camera/FlashMode;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 1683
    sget-object v1, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    .restart local v1    # "flashMode":Lcom/oneplus/camera/FlashMode;
    goto :goto_1

    .line 1684
    .end local v1    # "flashMode":Lcom/oneplus/camera/FlashMode;
    :cond_15
    sget-object v13, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v13}, Lcom/oneplus/camera/FlashMode;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 1685
    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    .restart local v1    # "flashMode":Lcom/oneplus/camera/FlashMode;
    goto :goto_1

    .line 1687
    .end local v1    # "flashMode":Lcom/oneplus/camera/FlashMode;
    :cond_16
    const/4 v13, 0x0

    return v13

    .line 1734
    :cond_17
    sget-object v13, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v13}, Lcom/oneplus/camera/FlashMode;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 1735
    sget-object v1, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    .line 1741
    .restart local v1    # "flashMode":Lcom/oneplus/camera/FlashMode;
    :goto_2
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v13}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/oneplus/camera/AutoTestService$32;

    invoke-direct {v14, p0, v1}, Lcom/oneplus/camera/AutoTestService$32;-><init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/FlashMode;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1748
    const/4 v13, 0x1

    return v13

    .line 1736
    .end local v1    # "flashMode":Lcom/oneplus/camera/FlashMode;
    :cond_18
    sget-object v13, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v13}, Lcom/oneplus/camera/FlashMode;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 1737
    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    .restart local v1    # "flashMode":Lcom/oneplus/camera/FlashMode;
    goto :goto_2

    .line 1739
    .end local v1    # "flashMode":Lcom/oneplus/camera/FlashMode;
    :cond_19
    const/4 v13, 0x0

    return v13

    .line 1752
    :cond_1a
    const/4 v13, 0x0

    return v13

    .line 1758
    :cond_1b
    const-string/jumbo v13, "(No scene)"

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 1760
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v13}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/oneplus/camera/AutoTestService$33;

    invoke-direct {v14, p0}, Lcom/oneplus/camera/AutoTestService$33;-><init>(Lcom/oneplus/camera/AutoTestService;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1767
    const/4 v13, 0x1

    return v13

    .line 1770
    :cond_1c
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v14, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v13, v14}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 1771
    .local v11, "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "scene$iterator":Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/scene/Scene;

    .line 1773
    .local v9, "scene":Lcom/oneplus/camera/scene/Scene;
    sget-object v13, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v13}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 1775
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v13}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/oneplus/camera/AutoTestService$34;

    invoke-direct {v14, p0, v9}, Lcom/oneplus/camera/AutoTestService$34;-><init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/scene/Scene;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1782
    const/4 v13, 0x1

    return v13

    .line 1786
    .end local v9    # "scene":Lcom/oneplus/camera/scene/Scene;
    :cond_1e
    const/4 v13, 0x0

    return v13

    .line 1791
    .end local v10    # "scene$iterator":Ljava/util/Iterator;
    .end local v11    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :cond_1f
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v14, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v13, v14}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 1792
    .local v12, "videoResolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_TargetResolution:Lcom/oneplus/camera/media/Resolution;

    .line 1793
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "resolution$iterator":Ljava/util/Iterator;
    :cond_20
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/media/Resolution;

    .line 1795
    .restart local v7    # "resolution":Lcom/oneplus/camera/media/Resolution;
    invoke-virtual {v7}, Lcom/oneplus/camera/media/Resolution;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 1797
    iput-object v7, p0, Lcom/oneplus/camera/AutoTestService;->m_TargetResolution:Lcom/oneplus/camera/media/Resolution;

    .line 1801
    .end local v7    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_21
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_TargetResolution:Lcom/oneplus/camera/media/Resolution;

    if-eqz v13, :cond_22

    .line 1803
    iget-object v13, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v13}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/oneplus/camera/AutoTestService$35;

    invoke-direct {v14, p0}, Lcom/oneplus/camera/AutoTestService$35;-><init>(Lcom/oneplus/camera/AutoTestService;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1810
    const/4 v13, 0x1

    return v13

    .line 1813
    :cond_22
    const/4 v13, 0x0

    return v13

    .line 1816
    .end local v8    # "resolution$iterator":Ljava/util/Iterator;
    .end local v12    # "videoResolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    :cond_23
    const/4 v13, 0x0

    return v13
.end method

.method private simulateSlide(Ljava/lang/String;)Z
    .locals 21
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/AutoTestService;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    if-nez v2, :cond_0

    .line 1857
    const-string/jumbo v2, "CameraAutoTestService"

    const-string/jumbo v3, "simulateSlide() - There is no gesture detector"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    const/4 v2, 0x0

    return v2

    .line 1863
    :cond_0
    const/high16 v7, 0x44070000    # 540.0f

    .line 1864
    .local v7, "x":F
    const/high16 v8, 0x44700000    # 960.0f

    .line 1865
    .local v8, "y":F
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    .line 1866
    .local v18, "e":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/oneplus/camera/AutoTestService;->sendTouchEvent(Landroid/view/MotionEvent;)V

    .line 1867
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1868
    const/16 v19, 0x1

    .local v19, "i":I
    :goto_0
    const/16 v2, 0xa

    move/from16 v0, v19

    if-gt v0, v2, :cond_5

    .line 1870
    const-string/jumbo v2, "SlideUp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1873
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    mul-int/lit8 v2, v19, 0x19

    int-to-float v2, v2

    .line 1864
    const/high16 v3, 0x44700000    # 960.0f

    .line 1873
    sub-float v16, v3, v2

    const/4 v14, 0x2

    const/16 v17, 0x0

    move v15, v7

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    .line 1885
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/oneplus/camera/AutoTestService;->sendTouchEvent(Landroid/view/MotionEvent;)V

    .line 1886
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1868
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 1870
    :cond_2
    const-string/jumbo v2, "SlideDown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1876
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    mul-int/lit8 v2, v19, 0x19

    int-to-float v2, v2

    .line 1864
    const/high16 v3, 0x44700000    # 960.0f

    .line 1876
    add-float v16, v3, v2

    const/4 v14, 0x2

    const/16 v17, 0x0

    move v15, v7

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    goto :goto_1

    .line 1870
    :cond_3
    const-string/jumbo v2, "SlideLeft"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1879
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    mul-int/lit8 v2, v19, 0x19

    int-to-float v2, v2

    .line 1863
    const/high16 v3, 0x44070000    # 540.0f

    .line 1879
    sub-float v15, v3, v2

    const/4 v14, 0x2

    const/16 v17, 0x0

    move/from16 v16, v8

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    goto :goto_1

    .line 1870
    :cond_4
    const-string/jumbo v2, "SlideRight"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1882
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    mul-int/lit8 v2, v19, 0x19

    int-to-float v2, v2

    .line 1863
    const/high16 v3, 0x44070000    # 540.0f

    .line 1882
    add-float v15, v3, v2

    const/4 v14, 0x2

    const/16 v17, 0x0

    move/from16 v16, v8

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    goto :goto_1

    .line 1891
    .end local v18    # "e":Landroid/view/MotionEvent;
    .end local v19    # "i":I
    :catch_0
    move-exception v20

    .line 1892
    .local v20, "tr":Ljava/lang/Throwable;
    const-string/jumbo v2, "CameraAutoTestService"

    const-string/jumbo v3, "simulateSlide() - Error occrued."

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1895
    .end local v20    # "tr":Ljava/lang/Throwable;
    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method private start(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 1901
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1904
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/AutoTestService;->m_IsStartingActivity:Z

    if-eqz v0, :cond_0

    .line 1906
    const-string/jumbo v0, "CameraAutoTestService"

    const-string/jumbo v2, "start() - Already starting"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1907
    return v3

    .line 1909
    :cond_0
    if-nez p1, :cond_1

    .line 1911
    :try_start_1
    const-string/jumbo v0, "CameraAutoTestService"

    const-string/jumbo v2, "start() - No start mode"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1912
    return v3

    .line 1916
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    .line 1917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/AutoTestService;->m_IsStartingActivity:Z

    .line 1918
    const-string/jumbo v0, "CameraAutoTestService"

    const-string/jumbo v2, "start() - Mode : "

    invoke-static {v0, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1920
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/AutoTestService;->startCameraActivityInternal(Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1901
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startAutoFocus(FF)Z
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v8, 0x0

    .line 1926
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v0, :cond_0

    .line 1927
    return v8

    .line 1929
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    const-class v1, Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    .line 1930
    .local v3, "touchAUtoFocusUi":Lcom/oneplus/camera/ui/TouchAutoFocusUI;
    if-nez v3, :cond_1

    .line 1931
    return v8

    .line 1933
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v8

    .line 1935
    .local v2, "result":[Ljava/lang/Boolean;
    monitor-enter v2

    .line 1937
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/oneplus/camera/AutoTestService$37;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/AutoTestService$37;-><init>(Lcom/oneplus/camera/AutoTestService;[Ljava/lang/Boolean;Lcom/oneplus/camera/ui/TouchAutoFocusUI;FF)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1956
    :try_start_1
    const-string/jumbo v0, "CameraAutoTestService"

    const-string/jumbo v1, "startAutoFocus() - Wait for touchAutoFocus [start]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    const-wide/16 v0, 0x1388

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 1958
    const-string/jumbo v0, "CameraAutoTestService"

    const-string/jumbo v1, "startAutoFocus() - Wait for touchAutoFocus [end]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v2

    return v0

    .line 1962
    :catch_0
    move-exception v6

    .line 1963
    .local v6, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v0, "CameraAutoTestService"

    const-string/jumbo v1, "startAutoFocus() - Interrupted"

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 1964
    return v8

    .line 1935
    .end local v6    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private startCameraActivityInternal(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 1971
    const-string/jumbo v2, "CameraAutoTestService"

    const-string/jumbo v3, "startCameraActivityInternal()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1975
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "Normal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1978
    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1990
    :goto_0
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1991
    invoke-virtual {p0}, Lcom/oneplus/camera/AutoTestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1992
    const-string/jumbo v2, "com.oneplus.camera.OPCameraActivity.AutoTestServiceId"

    iget v3, p0, Lcom/oneplus/camera/AutoTestService;->m_Id:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1995
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/AutoTestService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1996
    const/4 v2, 0x1

    return v2

    .line 1975
    :cond_0
    const-string/jumbo v2, "Photo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1981
    const-string/jumbo v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1975
    :cond_1
    const-string/jumbo v2, "Video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1984
    const-string/jumbo v2, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1987
    :cond_2
    const-string/jumbo v2, "CameraAutoTestService"

    const-string/jumbo v3, "startCameraActivityInternal() - Unknown mode"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    return v4

    .line 1999
    :catch_0
    move-exception v0

    .line 2000
    .local v0, "ex":Ljava/lang/Throwable;
    const-string/jumbo v2, "CameraAutoTestService"

    const-string/jumbo v3, "startCameraActivityInternal() - Fail to start activity"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2001
    return v4
.end method

.method private stop()V
    .locals 4

    .prologue
    .line 2008
    iget-object v2, p0, Lcom/oneplus/camera/AutoTestService;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 2011
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    if-nez v1, :cond_1

    .line 2013
    iget-boolean v1, p0, Lcom/oneplus/camera/AutoTestService;->m_IsStartingActivity:Z

    if-eqz v1, :cond_0

    .line 2015
    const-string/jumbo v1, "CameraAutoTestService"

    const-string/jumbo v3, "stop() - Stop while starting"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/camera/AutoTestService;->m_IsStartingActivity:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 2018
    return-void

    .line 2022
    :cond_1
    :try_start_1
    const-string/jumbo v1, "CameraAutoTestService"

    const-string/jumbo v3, "stop()"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    .line 2024
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/AutoTestService;->detachFromActivity(Lcom/oneplus/camera/CameraActivity;)V

    .line 2025
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;

    new-instance v3, Lcom/oneplus/camera/AutoTestService$38;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/camera/AutoTestService$38;-><init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/CameraActivity;)V

    invoke-static {v1, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 2034
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 2006
    return-void

    .line 2008
    .end local v0    # "activity":Lcom/oneplus/camera/CameraActivity;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 472
    sget-object v0, Lcom/oneplus/camera/AutoTestService;->INSTANCES:Ljava/util/Map;

    iget v1, p0, Lcom/oneplus/camera/AutoTestService;->m_Id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-super {p0}, Landroid/app/Service;->finalize()V

    .line 470
    return-void
.end method

.method final notifyActivityReady(Lcom/oneplus/camera/OPCameraActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/oneplus/camera/OPCameraActivity;

    .prologue
    .line 973
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 976
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/AutoTestService;->m_IsStartingActivity:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 977
    return-void

    .line 979
    :cond_0
    :try_start_1
    const-string/jumbo v0, "CameraAutoTestService"

    const-string/jumbo v2, "notifyActivityReady()"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-direct {p0, p1}, Lcom/oneplus/camera/AutoTestService;->attachToActivity(Lcom/oneplus/camera/CameraActivity;)V

    .line 985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/AutoTestService;->m_IsStartingActivity:Z

    .line 986
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService;->m_CameraActivity:Lcom/oneplus/camera/OPCameraActivity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 971
    return-void

    .line 973
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1153
    const-string/jumbo v0, "CameraAutoTestService"

    const-string/jumbo v1, "onBind()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService;->m_Binder:Lcom/oneplus/camera/IAutoTestService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 1163
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1160
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1171
    const-string/jumbo v0, "CameraAutoTestService"

    const-string/jumbo v1, "onUnbind()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    sget-object v0, Lcom/oneplus/camera/AutoTestService;->INSTANCES:Ljava/util/Map;

    iget v1, p0, Lcom/oneplus/camera/AutoTestService;->m_Id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
