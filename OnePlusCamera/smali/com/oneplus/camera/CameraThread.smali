.class public Lcom/oneplus/camera/CameraThread;
.super Lcom/oneplus/base/BaseThread;
.source "CameraThread.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/CameraThread$10;,
        Lcom/oneplus/camera/CameraThread$11;,
        Lcom/oneplus/camera/CameraThread$12;,
        Lcom/oneplus/camera/CameraThread$13;,
        Lcom/oneplus/camera/CameraThread$1;,
        Lcom/oneplus/camera/CameraThread$2;,
        Lcom/oneplus/camera/CameraThread$3;,
        Lcom/oneplus/camera/CameraThread$4;,
        Lcom/oneplus/camera/CameraThread$5;,
        Lcom/oneplus/camera/CameraThread$6;,
        Lcom/oneplus/camera/CameraThread$7;,
        Lcom/oneplus/camera/CameraThread$8;,
        Lcom/oneplus/camera/CameraThread$9;,
        Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;,
        Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;,
        Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;,
        Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;,
        Lcom/oneplus/camera/CameraThread$PhotoParams;,
        Lcom/oneplus/camera/CameraThread$ResourceIdTable;,
        Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;,
        Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;,
        Lcom/oneplus/camera/CameraThread$VideoParams;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-Camera$StateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-OperationStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-media-MediaTypeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-media-IfdSwitchesValues:[I = null

.field private static final DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

.field private static final DURATION_FAKE_SHUTTER_DELAY:J = 0x1eL

.field private static final DURATION_VIDEO_CAPTURE_DELAY:J = 0x12cL

.field private static final DURATION_VIDEO_REC_LIMIT_CHECK_FAST:J = 0x1f4L

.field private static final DURATION_VIDEO_REC_LIMIT_CHECK_FASTEST:J = 0x64L

.field public static final EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CameraEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CameraOpenFailedEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_SHUTTER:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_UNPROCESSED_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/UnprocessedPictureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_IGNORE_STORAGE_CHECK:I = 0x8

.field public static final FLAG_LOCK_FOCUS_BEFORE_CAPTURE:I = 0x10

.field public static final FLAG_NEED_REVIEW:I = 0x4

.field public static final FLAG_NO_SHUTTER_SOUND:I = 0x2

.field public static final FLAG_SYNCHRONOUS:I = 0x1

.field private static final KERNEL_FILE_IO_BUFFER_SIZE:J = 0x1400000L

.field private static final MSG_CAPTURE_VIDEO:I = 0x271a

.field private static final MSG_CHECK_REMAINING_MEDIA_COUNT:I = 0x2724

.field private static final MSG_CHECK_VIDEO_REC_LIMIT:I = 0x272e

.field private static final MSG_FAKE_SHUTTER:I = 0x2738

.field private static final MSG_GET_STORAGE_MANAGER:I = 0x2760

.field private static final MSG_NOTIFY_REQUIRED_PERMS_STATE:I = 0x2742

.field private static final MSG_SCREEN_SIZE_CHANGED:I = 0x2710

.field private static final MSG_STOP_CAMERA_PREVIEW:I = 0x2756

.field private static final MSG_STOP_DEFAULT_CAPTURE:I = 0x274c

.field private static final OFFLINE_JPEG_EXIF_TAG_ID:I = 0x1

.field public static final PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_CAMERA:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/OperationState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/Rotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/MediaResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/media/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/CaptureCompleteReason;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/PhotoCaptureState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/ScreenSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/CaptureCompleteReason;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/VideoCaptureState;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_KEY_IS_MIRRORED:Ljava/lang/String; = "IsMirrored"

.field public static final SETTINGS_KEY_RAW_CAPTURE:Ljava/lang/String; = "RawCapture"

.field public static final SETTINGS_KEY_SHUTTER_SOUND:Ljava/lang/String; = "ShutterSound"

.field private static final STORAGE_RESERVED_SPACE_PHOTO:J = 0x6400000L

.field private static final STORAGE_RESERVED_SPACE_VIDEO:J = 0x6400000L

.field private static final THRESHOLD_INVALID_VIDEO_DURATION:J = 0x3e8L

.field private static final THRESHOLD_VIDEO_REC_LIMIT_CHECK_FAST:J = 0xfL

.field private static final THRESHOLD_VIDEO_REC_LIMIT_CHECK_FASTEST:J = 0xaL

.field private static final THRESHOLD_WAIT_CAPTURE_COMPLETE:I = 0x7d0


# instance fields
.field private final m_AECallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/AutoExposureState;",
            ">;"
        }
    .end annotation
.end field

.field private m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

.field private m_BurstCaptureSoundStreamHandle:Lcom/oneplus/base/Handle;

.field private m_BurstShutterPlaySoundHandle:Lcom/oneplus/base/Handle;

.field private m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

.field private m_CameraDeviceManager:Lcom/oneplus/camera/CameraDeviceManager;

.field private final m_CameraErrorHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraOpenFailedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/CameraOpenFailedEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraPreviewReceivedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_CameraPreviewStartFlags:I

.field private final m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/OperationState;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_CameraTimer2SecSoundHandle:Lcom/oneplus/base/Handle;

.field private m_CameraTimerSoundHandle:Lcom/oneplus/base/Handle;

.field private final m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/OperationState;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CloseCamerasRunnable:Ljava/lang/Runnable;

.field private volatile m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

.field private final m_Context:Landroid/content/Context;

.field private m_CurrentResolution:Lcom/oneplus/camera/media/Resolution;

.field private m_DefaultBurstShutterSoundEndHandle:Lcom/oneplus/base/Handle;

.field private m_DefaultBurstShutterSoundHandle:Lcom/oneplus/base/Handle;

.field private final m_DefaultPhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

.field private m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

.field private final m_DefaultVideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

.field private m_FileManager:Lcom/oneplus/camera/io/FileManager;

.field private m_FocusController:Lcom/oneplus/camera/FocusController;

.field private final m_InitialComponentBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/component/ComponentBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;

.field private volatile m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

.field private m_IsDefaultShutterReceived:Z

.field private m_IsHighComponentsCreated:Z

.field private m_IsMaxFileSizeDesignated:Z

.field private m_IsMediaStoreUpdatePaused:Z

.field private m_IsNormalComponentsCreated:Z

.field private m_IsPictureReceived:Z

.field private m_LastBurstPhotoTime:J

.field private m_LastCapturedJpeg:[B

.field private m_LastVideoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

.field private m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

.field private m_MediaRecorder:Landroid/media/MediaRecorder;

.field private m_MediaRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private m_MediaRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private m_MediaRecorderStartTime:J

.field private final m_PendingCameraPreviewStartRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PendingCameraPreviewStopRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;",
            ">;"
        }
    .end annotation
.end field

.field private m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

.field private m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

.field private m_PhotoCaptureHandlerHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;",
            ">;"
        }
    .end annotation
.end field

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

.field private final m_PostviewReceivedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field protected m_PreAEState:Lcom/oneplus/camera/AutoExposureState;

.field private m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

.field private m_PreparedPhotoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

.field private m_RawPhotoCaptureHandleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/CaptureHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_RemainingMediaCountStateFs:Landroid/os/StatFs;

.field private volatile m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

.field private m_Settings:Lcom/oneplus/base/Settings;

.field private final m_ShutterHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_StorageManager:Lcom/oneplus/io/StorageManager;

.field private m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

.field private m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

.field private m_VideoCaptureHandlerHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private m_VideoFilePath:Ljava/lang/String;

.field private m_VideoLocation:Landroid/location/Location;

.field private m_VideoSnapshotDisableHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_VideoStartSoundHandle:Lcom/oneplus/base/Handle;

.field private m_VideoStopSoundHandle:Lcom/oneplus/base/Handle;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/CameraThread;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/CameraThread;)Lcom/oneplus/base/component/ComponentManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-base-RotationSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-Camera$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-camera-Camera$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-camera-Camera$StateSwitchesValues:[I

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

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/Camera$State;->UNAVAILABLE:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-camera-Camera$StateSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/PhotoCaptureState;->values()[Lcom/oneplus/camera/PhotoCaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/VideoCaptureState;->values()[Lcom/oneplus/camera/VideoCaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/media/MediaType;->values()[Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-media-IfdSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-media-IfdSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-media-IfdSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/media/Ifd;->values()[Lcom/oneplus/media/Ifd;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/media/Ifd;->EXIF:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/oneplus/camera/CameraThread;->-com-oneplus-media-IfdSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Z)Z
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;
    .param p2, "isFocusFinished"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Z)Z
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "isShutterSoundPlayed"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->captureVideoInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onCameraOpenFailed(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Z)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "isReceived"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->onCameraPreviewReceivedStateChanged(Lcom/oneplus/camera/Camera;Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/OperationState;Lcom/oneplus/camera/OperationState;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "prevState"    # Lcom/oneplus/camera/OperationState;
    .param p3, "state"    # Lcom/oneplus/camera/OperationState;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->onCameraPreviewStateChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/OperationState;Lcom/oneplus/camera/OperationState;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onCaptureCompleted(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onCaptureFailed(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/FocusState;)V
    .locals 0
    .param p1, "focusState"    # Lcom/oneplus/camera/FocusState;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onFocusStateChanged(Lcom/oneplus/camera/FocusState;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/oneplus/camera/CameraThread;Landroid/media/MediaRecorder;II)V
    .locals 0
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->onMediaRecorderErrorReceived(Landroid/media/MediaRecorder;II)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/oneplus/camera/CameraThread;Landroid/media/MediaRecorder;II)V
    .locals 0
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->onMediaRecorderInfoReceived(Landroid/media/MediaRecorder;II)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onPictureReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onPostviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;I)Z
    .locals 1
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->openCameraInternal(Lcom/oneplus/camera/Camera;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onRawPictureReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/oneplus/camera/CameraThread;Z)V
    .locals 0
    .param p1, "isFull"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onSavingQueueStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onShutter(Lcom/oneplus/camera/CaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/oneplus/camera/CameraThread;I)V
    .locals 0
    .param p1, "frameIndex"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onShutter(I)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "key"    # Lcom/oneplus/base/EventKey;
    .param p2, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->removePhotoCaptureHandler(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->removeVideoCaptureHandler(Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->resetCapturingRawPhotoProperty(Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->stopPhotoCapture(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/media/MediaType;)Z
    .locals 1
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->setMediaTypeInternal(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;
    .param p3, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;
    .param p3, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->stopVideoCapture(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "previewSize"    # Landroid/util/Size;
    .param p3, "resolution"    # Lcom/oneplus/camera/media/Resolution;
    .param p4, "receiver"    # Ljava/lang/Object;
    .param p5, "flags"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/camera/CameraThread;->startCameraPreviewInternal(Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->closeCameraInternal(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeCamerasInternal()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->enableVideoSnapshot(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/CameraThread;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "oldCameras"    # Ljava/util/List;
    .param p2, "cameras"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->onAvailableCamerasChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onCameraError(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 16

    .prologue
    const-wide/16 v14, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 87
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    .line 88
    new-instance v1, Lcom/oneplus/camera/CameraDeviceManagerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/CameraDeviceManagerBuilder;-><init>()V

    aput-object v1, v0, v12

    .line 89
    new-instance v1, Lcom/oneplus/camera/ExposureControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ExposureControllerBuilder;-><init>()V

    aput-object v1, v0, v4

    .line 90
    new-instance v1, Lcom/oneplus/camera/WhiteBalanceControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/WhiteBalanceControllerBuilder;-><init>()V

    aput-object v1, v0, v10

    .line 91
    new-instance v1, Lcom/oneplus/camera/io/FileManagerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/io/FileManagerBuilder;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 92
    new-instance v1, Lcom/oneplus/camera/FocusControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/FocusControllerBuilder;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 87
    sput-object v0, Lcom/oneplus/camera/CameraThread;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    .line 159
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AllRequiredPermissionsGranted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    .line 164
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AvailableCameras"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    .line 168
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Camera"

    const-class v2, Lcom/oneplus/camera/Camera;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    .line 172
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CameraPreviewState"

    const-class v2, Lcom/oneplus/camera/OperationState;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v6, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    .line 176
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "CaptureRotation"

    const-class v8, Lcom/oneplus/base/Rotation;

    const-class v9, Lcom/oneplus/camera/CameraThread;

    sget-object v11, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    .line 180
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCameraPreviewReceived"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    .line 184
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCapturingRawPhoto"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    .line 188
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsVideoSnapshotEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 192
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "MediaResultInfo"

    const-class v8, Lcom/oneplus/camera/MediaResultInfo;

    const-class v9, Lcom/oneplus/camera/CameraThread;

    move v10, v12

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    .line 196
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MediaType"

    const-class v2, Lcom/oneplus/camera/media/MediaType;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 200
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PhotoCaptureCompleteReason"

    const-class v2, Lcom/oneplus/camera/CaptureCompleteReason;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    .line 204
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PhotoCaptureState"

    const-class v2, Lcom/oneplus/camera/PhotoCaptureState;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 208
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "RemainingPhotoCount"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 212
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "RemainingVideoDurationSeconds"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    .line 216
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ScreenSize"

    const-class v2, Lcom/oneplus/base/ScreenSize;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/base/ScreenSize;->EMPTY:Lcom/oneplus/base/ScreenSize;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 220
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "VideoCaptureCompleteReason"

    const-class v2, Lcom/oneplus/camera/CaptureCompleteReason;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    .line 224
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "VideoCaptureState"

    const-class v2, Lcom/oneplus/camera/VideoCaptureState;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 230
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "BurstPhotoReceived"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 234
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CameraError"

    const-class v2, Lcom/oneplus/camera/CameraEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;

    .line 238
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CaptureStarted"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    .line 242
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CameraOpenFailed"

    const-class v2, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    .line 246
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "DefaultPhotoCaptureCompleted"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    .line 250
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "DefaultVideoCaptureCompleted"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    .line 254
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaFileSaved"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    .line 258
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSaveCancelled"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    .line 262
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSaveFailed"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    .line 266
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSaved"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    .line 270
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "PostviewReceived"

    const-class v2, Lcom/oneplus/camera/CameraCaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 274
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "Shutter"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    .line 278
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "UnprocessedPhotoReceived"

    const-class v2, Lcom/oneplus/camera/UnprocessedPictureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_UNPROCESSED_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 739
    const-string/jumbo v0, "ShutterSound"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 740
    const-string/jumbo v0, "RawCapture"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 741
    const-string/jumbo v0, "IsMirrored"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/oneplus/base/BaseThread$ThreadStartCallback;
    .param p3, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 753
    const-string/jumbo v0, "Camera Thread"

    invoke-direct {p0, v0, p2, p3}, Lcom/oneplus/base/BaseThread;-><init>(Ljava/lang/String;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V

    .line 295
    new-instance v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/PhotoCaptureHandler;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultPhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    .line 297
    new-instance v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/VideoCaptureHandler;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultVideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    .line 332
    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 338
    sget-object v0, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PreAEState:Lcom/oneplus/camera/AutoExposureState;

    .line 342
    new-instance v0, Lcom/oneplus/camera/CameraThread$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$1;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CloseCamerasRunnable:Ljava/lang/Runnable;

    .line 353
    new-instance v0, Lcom/oneplus/camera/CameraThread$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$2;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewReceivedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 361
    new-instance v0, Lcom/oneplus/camera/CameraThread$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$3;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 369
    new-instance v0, Lcom/oneplus/camera/CameraThread$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$4;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 378
    new-instance v0, Lcom/oneplus/camera/CameraThread$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$5;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AECallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 389
    new-instance v0, Lcom/oneplus/camera/CameraThread$6;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$6;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraErrorHandler:Lcom/oneplus/base/EventHandler;

    .line 397
    new-instance v0, Lcom/oneplus/camera/CameraThread$7;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$7;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraOpenFailedHandler:Lcom/oneplus/base/EventHandler;

    .line 406
    new-instance v0, Lcom/oneplus/camera/CameraThread$8;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$8;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    .line 414
    new-instance v0, Lcom/oneplus/camera/CameraThread$9;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$9;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    .line 422
    new-instance v0, Lcom/oneplus/camera/CameraThread$10;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$10;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 430
    new-instance v0, Lcom/oneplus/camera/CameraThread$11;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$11;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PostviewReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 438
    new-instance v0, Lcom/oneplus/camera/CameraThread$12;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$12;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 446
    new-instance v0, Lcom/oneplus/camera/CameraThread$13;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$13;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    .line 754
    if-nez p1, :cond_0

    .line 755
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    .line 751
    return-void
.end method

.method private bindToHighComponents()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 821
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/io/FileManager;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/io/FileManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    .line 822
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    if-eqz v0, :cond_6

    .line 824
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->PROP_IS_SAVING_QUEUE_FULL:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$16;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$16;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 832
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$17;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$17;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 840
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$18;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$18;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 849
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$19;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$19;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 858
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$20;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$20;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 872
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/media/AudioManager;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    .line 873
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    if-eqz v0, :cond_8

    .line 875
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    if-eqz v0, :cond_5

    .line 877
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->photoShutterSound:I

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->photoShutterSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->cameraTimerSound:I

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->cameraTimerSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraTimerSoundHandle:Lcom/oneplus/base/Handle;

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSound:I

    if-eqz v0, :cond_7

    .line 882
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultBurstShutterSoundHandle:Lcom/oneplus/base/Handle;

    .line 885
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->cameraTimer2SecSound:I

    if-eqz v0, :cond_2

    .line 886
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->cameraTimer2SecSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraTimer2SecSoundHandle:Lcom/oneplus/base/Handle;

    .line 887
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSoundEnd:I

    if-eqz v0, :cond_3

    .line 888
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSoundEnd:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultBurstShutterSoundEndHandle:Lcom/oneplus/base/Handle;

    .line 889
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStartSound:I

    if-eqz v0, :cond_4

    .line 890
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStartSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoStartSoundHandle:Lcom/oneplus/base/Handle;

    .line 891
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStopSound:I

    if-eqz v0, :cond_5

    .line 892
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStopSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoStopSoundHandle:Lcom/oneplus/base/Handle;

    .line 818
    :cond_5
    :goto_2
    return-void

    .line 869
    :cond_6
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToInitialComponents() - No FileManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 884
    :cond_7
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultBurstShutterSoundHandle:Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 897
    :cond_8
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToInitialComponents() - No AudioManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private bindToInitialComponents()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 795
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/CameraDeviceManager;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraDeviceManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraDeviceManager:Lcom/oneplus/camera/CameraDeviceManager;

    .line 796
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraDeviceManager:Lcom/oneplus/camera/CameraDeviceManager;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraDeviceManager:Lcom/oneplus/camera/CameraDeviceManager;

    sget-object v1, Lcom/oneplus/camera/CameraDeviceManager;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$15;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$15;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/CameraDeviceManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 806
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraDeviceManager:Lcom/oneplus/camera/CameraDeviceManager;

    sget-object v2, Lcom/oneplus/camera/CameraDeviceManager;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/CameraDeviceManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/camera/CameraThread;->onAvailableCamerasChanged(Ljava/util/List;Ljava/util/List;)V

    .line 814
    const/4 v0, 0x1

    return v0

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToInitialComponents() - No CameraDeviceManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    return v3
.end method

.method private bindToNormalComponents()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 905
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/io/StorageManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    .line 906
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-nez v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToNormalComponents - No StorageManager, try later."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x32

    const/16 v1, 0x2760

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/FocusController;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FocusController;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    .line 913
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v0, :cond_2

    .line 915
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v1, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$21;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$21;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 928
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/location/LocationManager;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/location/LocationManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    .line 929
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    if-nez v0, :cond_1

    .line 930
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToNormalComponents() - No LocationManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :cond_1
    return-void

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToNormalComponents() - No FocusController"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)Z
    .locals 5
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1167
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 1168
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1169
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1170
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1171
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1174
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1177
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PreparedPhotoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 1178
    iget v1, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    invoke-interface {v0, v1, v3}, Lcom/oneplus/camera/Camera;->capture(II)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 1179
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1181
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhotoInternal() - Fail to capture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1183
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1184
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1185
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1186
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1187
    return v3

    .line 1191
    :cond_0
    iget v1, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    if-ne v1, v4, :cond_1

    .line 1192
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    if-eq v1, v2, :cond_1

    .line 1193
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    if-eq v1, v2, :cond_1

    .line 1194
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/AutoExposureState;->SEARCHING:Lcom/oneplus/camera/AutoExposureState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PreAEState:Lcom/oneplus/camera/AutoExposureState;

    sget-object v2, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    if-eq v1, v2, :cond_1

    .line 1200
    :cond_1
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1201
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    :cond_2
    return v4
.end method

.method private capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Z)Z
    .locals 14
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;
    .param p2, "isFocusFinished"    # Z

    .prologue
    const/4 v13, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 1006
    iput-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .line 1007
    iput-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_LastCapturedJpeg:[B

    .line 1008
    iput-boolean v12, p0, Lcom/oneplus/camera/CameraThread;->m_IsPictureReceived:Z

    .line 1011
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v9

    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v8}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_0

    .line 1019
    :cond_0
    :pswitch_0
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "capturePhotoInternal() - Capture state is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1021
    return v12

    .line 1016
    :pswitch_1
    if-eqz p2, :cond_0

    .line 1025
    :pswitch_2
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v9, Lcom/oneplus/camera/io/FileManager;->PROP_IS_SAVING_QUEUE_FULL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v9}, Lcom/oneplus/camera/io/FileManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1027
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "capturePhotoInternal() - Media saving queue is full"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/camera/CaptureCompleteReason;->SAVING_QUEUE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1029
    return v12

    .line 1032
    :cond_1
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "capturePhotoInternal() - Handle : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", focus finished : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    .line 1036
    .local v2, "camera":Lcom/oneplus/camera/Camera;
    if-nez v2, :cond_2

    .line 1038
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "capturePhotoInternal() - No primary camera"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1040
    return v12

    .line 1044
    :cond_2
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v8, v9, :cond_3

    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v8, v9, :cond_3

    .line 1046
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "capturePhotoInternal() - Video recording not ready , cancel snaphot."

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1048
    return v12

    .line 1052
    :cond_3
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1055
    if-nez p2, :cond_5

    .line 1057
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1058
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_5

    .line 1060
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "capturePhotoInternal() - No enough storage space"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1062
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v8, v9, :cond_4

    .line 1063
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1066
    :goto_0
    return v12

    .line 1065
    :cond_4
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1071
    :cond_5
    if-nez p2, :cond_7

    .line 1072
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v8, :cond_7

    .line 1073
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v9, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v9}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-eq v8, v9, :cond_6

    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v9, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v9}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    if-ne v8, v9, :cond_7

    .line 1075
    :cond_6
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "capturePhotoInternal() - Waiting for focus complete"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .line 1077
    return v13

    .line 1081
    :cond_7
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v8, :cond_9

    .line 1082
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v9, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v9}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    if-ne v8, v9, :cond_9

    .line 1083
    sget-object v8, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v8}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    if-eq v8, v9, :cond_8

    iget v8, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->flags:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_9

    .line 1084
    :cond_8
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v8}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1098
    :cond_9
    const/4 v4, 0x0

    .line 1102
    .local v4, "handlerHandle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    :try_start_0
    sget-object v9, Lcom/oneplus/camera/Camera;->PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/base/Rotation;

    invoke-interface {v2, v9, v8}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1103
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    if-eqz v8, :cond_a

    .line 1104
    sget-object v9, Lcom/oneplus/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    sget-object v10, Lcom/oneplus/camera/location/LocationManager;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v10}, Lcom/oneplus/camera/location/LocationManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location;

    invoke-interface {v2, v9, v8}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1105
    :cond_a
    sget-object v8, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v8}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v8, v9, :cond_b

    .line 1107
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v9, "IsMirrored"

    invoke-virtual {v8, v9}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1108
    .local v6, "isMirrored":Z
    sget-object v8, Lcom/oneplus/camera/Camera;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1109
    invoke-virtual {p1, v6}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->setIsMirrored(Z)V

    .line 1113
    .end local v6    # "isMirrored":Z
    :cond_b
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_c

    .line 1115
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    move-object v4, v0

    .line 1116
    .local v4, "handlerHandle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    iget-object v8, v4, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    iget v9, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    invoke-interface {v8, v2, p1, v9}, Lcom/oneplus/camera/PhotoCaptureHandler;->capture(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/CaptureHandle;I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1118
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "capturePhotoInternal() - Capture process is handled by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    iget-object v8, v4, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    iput-object v8, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    .line 1120
    iget-object v8, v4, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    sget-object v9, Lcom/oneplus/camera/PhotoCaptureHandler;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v10, p0, Lcom/oneplus/camera/CameraThread;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v8, v9, v10}, Lcom/oneplus/camera/PhotoCaptureHandler;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1125
    .end local v4    # "handlerHandle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    :cond_c
    if-nez v4, :cond_11

    .line 1127
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "capturePhotoInternal() - Use default capture process"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 1129
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Fail to use default photo capture process."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 1135
    .local v3, "ex":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "capturePhotoInternal() - Fail to capture"

    invoke-static {v8, v9, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1136
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1137
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v8, v9, :cond_14

    .line 1138
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1141
    :goto_2
    return v12

    .line 1086
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_d
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "capturePhotoInternal() - Lock focus"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v9, Lcom/oneplus/camera/FocusController;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v9}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v7, 0x0

    .line 1088
    .local v7, "waitForLock":Z
    :goto_3
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    invoke-interface {v8, v12}, Lcom/oneplus/camera/FocusController;->lockFocus(I)Lcom/oneplus/base/Handle;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    .line 1089
    if-eqz v7, :cond_9

    .line 1091
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "capturePhotoInternal() - Waiting for focus lock"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .line 1093
    return v13

    .line 1087
    .end local v7    # "waitForLock":Z
    :cond_e
    const/4 v7, 0x1

    .restart local v7    # "waitForLock":Z
    goto :goto_3

    .line 1123
    .end local v7    # "waitForLock":Z
    .restart local v4    # "handlerHandle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    .restart local v5    # "i":I
    :cond_f
    const/4 v4, 0x0

    .line 1113
    .local v4, "handlerHandle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 1130
    .end local v4    # "handlerHandle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    :cond_10
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultPhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1145
    :cond_11
    iput-object v4, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    .line 1146
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .line 1147
    iput-boolean v12, p0, Lcom/oneplus/camera/CameraThread;->m_IsDefaultShutterReceived:Z

    .line 1148
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1149
    sget-object v8, Lcom/oneplus/camera/CameraThread;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v9, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v10, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v9, v10}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;)V

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1150
    sget-object v8, Lcom/oneplus/camera/Camera;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v8}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1151
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1153
    :cond_12
    iget v8, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    if-eq v8, v13, :cond_13

    iget-boolean v8, p0, Lcom/oneplus/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    if-eqz v8, :cond_15

    .line 1159
    :cond_13
    :goto_4
    return v13

    .line 1140
    .end local v5    # "i":I
    .restart local v3    # "ex":Ljava/lang/Throwable;
    :cond_14
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 1153
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "i":I
    :cond_15
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    if-eqz v8, :cond_13

    .line 1155
    iput-boolean v13, p0, Lcom/oneplus/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    .line 1156
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    invoke-interface {v8}, Lcom/oneplus/camera/io/FileManager;->pauseInsert()V

    goto :goto_4

    .line 1011
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private captureVideoInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Z)Z
    .locals 14
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "isShutterSoundPlayed"    # Z

    .prologue
    .line 1263
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1271
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "captureVideoInternal() - Video capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const/4 v0, 0x0

    return v0

    .line 1268
    :pswitch_1
    if-eqz p2, :cond_0

    .line 1274
    :pswitch_2
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/Camera;

    .line 1275
    .local v8, "camera":Lcom/oneplus/camera/Camera;
    if-nez v8, :cond_1

    .line 1277
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "captureVideoInternal() - No primary camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const/4 v0, 0x0

    return v0

    .line 1280
    :cond_1
    iget-object v11, p1, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->params:Lcom/oneplus/camera/CameraThread$VideoParams;

    .line 1282
    .local v11, "params":Lcom/oneplus/camera/CameraThread$VideoParams;
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "captureVideoInternal() - Handle : "

    const-string/jumbo v3, ", resolution : "

    iget-object v4, v11, Lcom/oneplus/camera/CameraThread$VideoParams;->resolution:Lcom/oneplus/camera/media/Resolution;

    const-string/jumbo v5, ", shutter sound played : "

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1285
    if-nez p2, :cond_3

    .line 1288
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1289
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 1291
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "captureVideoInternal() - No enough storage space"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1293
    const/4 v0, 0x0

    return v0

    .line 1297
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->prepareVideoFilePath()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1298
    const/4 v0, 0x0

    return v0

    .line 1302
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1305
    const-wide/16 v12, 0x0

    .line 1306
    .local v12, "shutterSoundTime":J
    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoStartSoundHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1308
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoStartSoundHandle:Lcom/oneplus/base/Handle;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 1309
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1313
    :cond_4
    if-nez p2, :cond_7

    .line 1316
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, v11, Lcom/oneplus/camera/CameraThread$VideoParams;->resolution:Lcom/oneplus/camera/media/Resolution;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/Resolution;->toSize()Landroid/util/Size;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1319
    new-instance v10, Landroid/media/MediaRecorder;

    invoke-direct {v10}, Landroid/media/MediaRecorder;-><init>()V

    .line 1322
    .local v10, "mediaRecorder":Landroid/media/MediaRecorder;
    const/4 v0, 0x0

    invoke-interface {v8, v10, v0}, Lcom/oneplus/camera/Camera;->bindMediaRecorder(Landroid/media/MediaRecorder;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1324
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1325
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1326
    const/4 v0, 0x0

    return v0

    .line 1330
    :cond_5
    invoke-direct {p0, v8, v10, v11}, Lcom/oneplus/camera/CameraThread;->prepareMediaRecorder(Lcom/oneplus/camera/Camera;Landroid/media/MediaRecorder;Lcom/oneplus/camera/CameraThread$VideoParams;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1332
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "captureVideoInternal() - Fail to prepare media recorder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    :try_start_0
    invoke-virtual {v10}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 1345
    :goto_0
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1346
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1347
    const/4 v0, 0x0

    return v0

    .line 1338
    :catch_0
    move-exception v9

    .line 1339
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "captureVideoInternal() - Error when release"

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1343
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    goto :goto_0

    .line 1342
    .end local v9    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    .line 1343
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 1342
    throw v0

    .line 1349
    :cond_6
    iput-object v10, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 1352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v12

    const-wide/16 v2, 0x12c

    sub-long v6, v2, v0

    .line 1353
    .local v6, "delay":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_7

    .line 1355
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "captureVideoInternal() - Start video recording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const/16 v2, 0x271a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    .line 1357
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    .line 1358
    const/4 v0, 0x1

    return v0

    .line 1363
    .end local v6    # "delay":J
    .end local v10    # "mediaRecorder":Landroid/media/MediaRecorder;
    :cond_7
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/oneplus/camera/Camera;->startVideoRecording(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1365
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "captureVideoInternal() - Fail to start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1367
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 1368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    .line 1369
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 1370
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1371
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1372
    const/4 v0, 0x0

    return v0

    .line 1376
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderStartTime:J

    .line 1379
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    if-nez v0, :cond_9

    .line 1380
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultVideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    .line 1381
    :cond_9
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    .line 1382
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    iget-object v1, v1, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/VideoCaptureHandler;

    iput-object v1, v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->captureHandler:Lcom/oneplus/camera/VideoCaptureHandler;

    .line 1383
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1384
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    invoke-direct {v1, v2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1387
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkVideoRecordingLimitation()V

    .line 1390
    const/4 v0, 0x1

    return v0

    .line 1263
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkRemainingMediaCountInternal()V
    .locals 4

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2724

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1416
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->getFreeSpace()J

    move-result-wide v0

    .line 1419
    .local v0, "freeSpace":J
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->checkRemainingPhotoCount(J)V

    .line 1420
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->checkRemainingVideoDuration(J)V

    .line 1410
    return-void
.end method

.method private checkRemainingPhotoCount(J)V
    .locals 9
    .param p1, "freeSpace"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 1428
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/camera/CameraThread;->getFreeSpace(JLcom/oneplus/camera/media/MediaType;)J

    move-result-wide p1

    .line 1429
    cmp-long v1, p1, v6

    if-gtz v1, :cond_0

    .line 1431
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkRemainingPhotoCount() - Storage is full"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1433
    return-void

    .line 1437
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 1438
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 1440
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkRemainingPhotoCount() - No primary camera"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1442
    return-void

    .line 1446
    :cond_1
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4}, Lcom/oneplus/camera/media/FileSizeEstimator;->estimateJpegFileSize(Landroid/util/Size;I)J

    move-result-wide v2

    .line 1447
    .local v2, "fileSize":J
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    div-long v4, p1, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1425
    return-void
.end method

.method private checkRemainingVideoDuration(J)V
    .locals 11
    .param p1, "freeSpace"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 1455
    sget-object v5, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, p1, p2, v5}, Lcom/oneplus/camera/CameraThread;->getFreeSpace(JLcom/oneplus/camera/media/MediaType;)J

    move-result-wide p1

    .line 1456
    cmp-long v5, p1, v8

    if-gtz v5, :cond_0

    .line 1458
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkRemainingVideoDuration() - Storage is full"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1460
    return-void

    .line 1464
    :cond_0
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 1465
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 1467
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkRemainingVideoDuration() - No primary camera"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1469
    return-void

    .line 1473
    :cond_1
    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v5}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 1474
    .local v4, "videoSize":Landroid/util/Size;
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/oneplus/camera/CameraThread;->createCamcorderProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 1475
    .local v1, "profile":Landroid/media/CamcorderProfile;
    if-nez v1, :cond_2

    .line 1477
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkRemainingVideoDuration() - Cannot create camcorder profile"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1479
    return-void

    .line 1483
    :cond_2
    const-wide/16 v6, 0x1

    invoke-static {v1, v6, v7}, Lcom/oneplus/camera/media/FileSizeEstimator;->estimateVideoFileSize(Landroid/media/CamcorderProfile;J)J

    move-result-wide v2

    .line 1484
    .local v2, "dataSize":J
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    div-long v6, p1, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1452
    return-void
.end method

.method private checkVideoRecordingLimitation()V
    .locals 9

    .prologue
    const/16 v8, 0x272e

    .line 1492
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v2, v3, :cond_0

    .line 1493
    return-void

    .line 1494
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1495
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1496
    .local v0, "duration":J
    const-wide/16 v2, 0xf

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 1497
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x5

    div-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1489
    :goto_0
    return-void

    .line 1498
    :cond_1
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 1499
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1500
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 1501
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1504
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "checkVideoRecordingLimitation() - Storage limitation reached"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v3, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    goto :goto_0
.end method

.method private closeCameraInternal(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCameraInternal() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCameraInternal() - Camera : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1545
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->close(I)V

    .line 1546
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCameraInternal() - End"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    return-void
.end method

.method private closeCamerasInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1565
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "closeCamerasInternal() - Start"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1567
    .local v0, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1568
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    invoke-interface {v2, v4}, Lcom/oneplus/camera/Camera;->close(I)V

    .line 1567
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1569
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "closeCamerasInternal() - End"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1575
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 1577
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1581
    :goto_0
    iput-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1574
    :cond_0
    return-void

    .line 1578
    :catch_0
    move-exception v0

    .line 1579
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "closeVideoFileDescriptor() - Error, "

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;Z)Z
    .locals 11
    .param p1, "captureHandlerHandle"    # Lcom/oneplus/base/Handle;
    .param p2, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;
    .param p4, "checkHandles"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1634
    if-nez p2, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCaptureInternal() - Capture handle is null, skip"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    return v2

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "completeCaptureInternal() - Handle : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1779
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    if-eqz v0, :cond_1

    .line 1781
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    .line 1782
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    invoke-interface {v0}, Lcom/oneplus/camera/io/FileManager;->resumeInsert()V

    .line 1786
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1648
    :pswitch_0
    if-eqz p4, :cond_3

    .line 1650
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    if-eq v0, p1, :cond_2

    .line 1652
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "completeCaptureInternal() - Invalid capture handler handle : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    return v2

    .line 1655
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    if-eq p2, v0, :cond_3

    .line 1657
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "completeCaptureInternal() - Invalid capture handle : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    return v2

    .line 1663
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->isBurstPhotoCapture()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_BurstShutterPlaySoundHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultBurstShutterSoundEndHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    if-eqz v0, :cond_4

    .line 1665
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_BurstShutterPlaySoundHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1666
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultBurstShutterSoundEndHandle:Lcom/oneplus/base/Handle;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 1669
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1672
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget-object v0, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    if-nez v0, :cond_5

    .line 1673
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v4, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v1, v4}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1676
    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    .line 1679
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    iget-object v0, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    if-eqz v0, :cond_6

    .line 1680
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    iget-object v0, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureHandler;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/camera/CameraThread;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v4}, Lcom/oneplus/camera/PhotoCaptureHandler;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1683
    :cond_6
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_7

    .line 1685
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCaptureInternal() - Complete video snapshot"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_7

    .line 1687
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_LastVideoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 1689
    :cond_7
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_9

    .line 1690
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1694
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1696
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_a

    .line 1698
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;

    .line 1699
    .local v9, "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    iget-object v0, v9, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_8

    .line 1701
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "completeCaptureInternal() - m_PendingCameraPreviewStopRequests is not empty, Continue stopping preview for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1703
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    iget-object v1, v9, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->result:[Z

    iget v4, v9, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->flags:I

    invoke-direct {p0, v0, v1, v4}, Lcom/oneplus/camera/CameraThread;->stopCameraPreviewInternal(Lcom/oneplus/camera/Camera;[ZI)Z

    .line 1696
    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1692
    .end local v7    # "i":I
    .end local v9    # "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    :cond_9
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1709
    :cond_a
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    .line 1711
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCaptureInternal() - Need review, stop preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/Camera;

    .line 1713
    .local v6, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v6, :cond_b

    .line 1714
    invoke-interface {v6, v2}, Lcom/oneplus/camera/Camera;->stopPreview(I)V

    .line 1718
    .end local v6    # "camera":Lcom/oneplus/camera/Camera;
    :cond_b
    iput-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .line 1719
    iput-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    goto/16 :goto_0

    .line 1725
    :pswitch_1
    if-eqz p4, :cond_d

    .line 1727
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    if-eq v0, p1, :cond_c

    .line 1729
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "completeCaptureInternal() - Invalid capture handler handle : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    return v2

    .line 1732
    :cond_c
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    if-eq p2, v0, :cond_d

    .line 1734
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "completeCaptureInternal() - Invalid capture handle : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    return v2

    .line 1741
    :cond_d
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1744
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-direct {v1, p2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1747
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_e

    .line 1750
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/MediaResultInfo;

    .line 1751
    .local v8, "info":Lcom/oneplus/camera/MediaResultInfo;
    sget-object v10, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v0, Lcom/oneplus/camera/media/MediaEventArgs;

    iget-object v4, v8, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    move-object v1, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/media/MediaEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;ILjava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v10, v0}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1753
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 1757
    .end local v8    # "info":Lcom/oneplus/camera/MediaResultInfo;
    :cond_e
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_10

    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_10

    .line 1758
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1763
    :goto_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    .line 1765
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCaptureInternal() - Need review, stop preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/Camera;

    .line 1767
    .restart local v6    # "camera":Lcom/oneplus/camera/Camera;
    if-eqz v6, :cond_f

    .line 1768
    invoke-interface {v6, v2}, Lcom/oneplus/camera/Camera;->stopPreview(I)V

    .line 1772
    .end local v6    # "camera":Lcom/oneplus/camera/Camera;
    :cond_f
    iput-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    .line 1773
    iput-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    goto/16 :goto_0

    .line 1760
    :cond_10
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_3

    .line 1643
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createCamcorderProfile(II)Landroid/media/CamcorderProfile;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1793
    sparse-switch p2, :sswitch_data_0

    .line 1815
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createCamcorderProfile() - Unknown video size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    const/4 v0, 0x0

    return-object v0

    .line 1796
    :sswitch_0
    const/16 v0, 0xf00

    if-ne p1, v0, :cond_0

    .line 1797
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0

    .line 1801
    :sswitch_1
    const/16 v0, 0x780

    if-ne p1, v0, :cond_0

    .line 1802
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0

    .line 1806
    :sswitch_2
    const/16 v0, 0x500

    if-ne p1, v0, :cond_0

    .line 1807
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0

    .line 1811
    :sswitch_3
    const/16 v0, 0xb0

    if-ne p1, v0, :cond_0

    .line 1812
    const/16 v0, 0x3ea

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0

    .line 1793
    nop

    :sswitch_data_0
    .sparse-switch
        0x90 -> :sswitch_3
        0x2d0 -> :sswitch_2
        0x438 -> :sswitch_1
        0x870 -> :sswitch_0
    .end sparse-switch
.end method

.method private enableVideoSnapshot(Lcom/oneplus/base/Handle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 1852
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 1853
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 1853
    if-eqz v0, :cond_0

    .line 1855
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 1857
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1850
    :cond_0
    return-void
.end method

.method private getFreeSpace()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 1908
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    iget-object v6, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    sget-object v7, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-static {v5, v6, v7}, Lcom/oneplus/io/StorageUtils;->findStorageFromSettings(Lcom/oneplus/io/StorageManager;Lcom/oneplus/base/Settings;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v4

    .line 1909
    .local v4, "storage":Lcom/oneplus/io/Storage;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/oneplus/io/Storage;->getDirectoryPath()Ljava/lang/String;

    move-result-object v1

    .line 1910
    .local v1, "path":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    if-eqz v5, :cond_1

    .line 1911
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    invoke-virtual {v5, v1}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 1914
    :goto_1
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v6, Lcom/oneplus/camera/io/FileManager;->PROP_SAVING_QUEUE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/io/FileManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1915
    .local v2, "savingQueueSize":J
    :goto_2
    const-wide/16 v6, 0x0

    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    return-wide v6

    .line 1909
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "savingQueueSize":J
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .line 1913
    :cond_1
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1918
    .end local v1    # "path":Ljava/lang/String;
    .end local v4    # "storage":Lcom/oneplus/io/Storage;
    :catch_0
    move-exception v0

    .line 1919
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getFreeSpace() - Fail to get free storage space"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1920
    return-wide v10

    .line 1914
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v4    # "storage":Lcom/oneplus/io/Storage;
    :cond_2
    const-wide/16 v2, 0x0

    .restart local v2    # "savingQueueSize":J
    goto :goto_2
.end method

.method private getFreeSpace(JLcom/oneplus/camera/media/MediaType;)J
    .locals 3
    .param p1, "totalFreeSpace"    # J
    .param p3, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 1929
    if-nez p3, :cond_0

    .line 1930
    return-wide p1

    .line 1931
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1938
    return-wide p1

    .line 1934
    :pswitch_0
    const-wide/32 v0, 0x6400000

    sub-long v0, p1, v0

    return-wide v0

    .line 1936
    :pswitch_1
    const-wide/32 v0, 0x7800000

    sub-long v0, p1, v0

    return-wide v0

    .line 1931
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFreeSpace(Lcom/oneplus/camera/media/MediaType;)J
    .locals 2
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 1925
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->getFreeSpace()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/oneplus/camera/CameraThread;->getFreeSpace(JLcom/oneplus/camera/media/MediaType;)J

    move-result-wide v0

    return-wide v0
.end method

.method private onAvailableCamerasChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2046
    .local p1, "oldCameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    .local p2, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2048
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 2049
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2051
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewReceivedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2052
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2053
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_AECallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2054
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_ERROR:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraErrorHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2055
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraOpenFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2056
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PostviewReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2046
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2059
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 2061
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 2062
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2064
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewReceivedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2065
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2066
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_AECallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2067
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_ERROR:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraErrorHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2068
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraOpenFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2069
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PostviewReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2059
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2074
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_3
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, p2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2043
    return-void
.end method

.method private onCameraError(Lcom/oneplus/camera/Camera;)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 2081
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraError() - Camera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CameraEventArgs;

    invoke-direct {v1, p1}, Lcom/oneplus/camera/CameraEventArgs;-><init>(Lcom/oneplus/camera/Camera;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2079
    :cond_0
    return-void
.end method

.method private onCameraOpenFailed(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraOpenFailed() - Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2089
    return-void
.end method

.method private onCameraPreviewReceivedStateChanged(Lcom/oneplus/camera/Camera;Z)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "isReceived"    # Z

    .prologue
    .line 2099
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2100
    return-void

    .line 2103
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2096
    return-void
.end method

.method private onCameraPreviewStateChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/OperationState;Lcom/oneplus/camera/OperationState;)V
    .locals 10
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "prevState"    # Lcom/oneplus/camera/OperationState;
    .param p3, "state"    # Lcom/oneplus/camera/OperationState;

    .prologue
    const/4 v9, 0x0

    .line 2111
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne p3, v0, :cond_2

    .line 2113
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 2115
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;

    .line 2116
    .local v8, "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    iget-object v0, v8, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->camera:Lcom/oneplus/camera/Camera;

    if-ne v0, p1, :cond_0

    .line 2118
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraPreviewStateChanged() - Continue stopping preview for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2120
    iget-object v0, v8, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->result:[Z

    iget v1, v8, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->flags:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/camera/CameraThread;->stopCameraPreviewInternal(Lcom/oneplus/camera/Camera;[ZI)Z

    .line 2113
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2123
    .end local v8    # "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    :cond_1
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p3, :cond_2

    .line 2124
    return-void

    .line 2128
    .end local v6    # "i":I
    :cond_2
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne p3, v0, :cond_5

    .line 2130
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .restart local v6    # "i":I
    :goto_1
    if-ltz v6, :cond_4

    .line 2132
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;

    .line 2133
    .local v7, "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    iget-object v0, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->camera:Lcom/oneplus/camera/Camera;

    if-ne v0, p1, :cond_3

    .line 2135
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraPreviewStateChanged() - Continue starting preview for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2137
    iget-object v2, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->previewSize:Landroid/util/Size;

    iget-object v3, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->resolution:Lcom/oneplus/camera/media/Resolution;

    iget-object v4, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->previewReceiver:Ljava/lang/Object;

    iget v5, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->flags:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/CameraThread;->startCameraPreviewInternal(Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)Z

    .line 2130
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2140
    .end local v7    # "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    :cond_4
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p3, :cond_5

    .line 2141
    return-void

    .line 2145
    .end local v6    # "i":I
    :cond_5
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_6

    .line 2146
    return-void

    .line 2149
    :cond_6
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2152
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_8

    .line 2154
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq p3, v0, :cond_7

    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne p3, v0, :cond_8

    .line 2156
    :cond_7
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraPreviewStateChanged() - Release media recorder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 2158
    iput-object v9, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 2163
    :cond_8
    iget v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewStartFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_9

    .line 2164
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 2167
    :cond_9
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne p3, v0, :cond_c

    .line 2170
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_a

    .line 2171
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2172
    :cond_a
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_b

    .line 2173
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2108
    :cond_b
    :goto_2
    return-void

    .line 2178
    :cond_c
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_d

    .line 2179
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2180
    :cond_d
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_b

    .line 2181
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private onCaptureCompleted(Lcom/oneplus/camera/Camera;)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    const/4 v2, 0x0

    .line 2190
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2191
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2192
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2193
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2194
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2197
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_BurstCaptureSoundStreamHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2200
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x274c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2203
    iput-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 2205
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraThread;->m_IsPictureReceived:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2208
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2209
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2212
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultPhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    .line 2213
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .line 2214
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PreparedPhotoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PreparedPhotoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 2212
    :goto_1
    invoke-virtual {p0, v1, v2, v0}, Lcom/oneplus/camera/CameraThread;->completeCapture(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)Z

    .line 2187
    return-void

    .line 2206
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2214
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    goto :goto_1
.end method

.method private onCaptureFailed(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 2220
    return-void
.end method

.method private onFocusStateChanged(Lcom/oneplus/camera/FocusState;)V
    .locals 2
    .param p1, "focusState"    # Lcom/oneplus/camera/FocusState;

    .prologue
    .line 2230
    sget-object v0, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-eq p1, v0, :cond_0

    .line 2231
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_0

    .line 2232
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    .line 2230
    if-eqz v0, :cond_0

    .line 2234
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFocusStateChanged() - Continue capturing photo"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Z)Z

    .line 2227
    :cond_0
    return-void
.end method

.method private onMediaRecorderErrorReceived(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eq v0, p1, :cond_0

    .line 2246
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaRecorderErrorReceived() - Unknown media recorder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    return-void

    .line 2251
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 2260
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMediaRecorderErrorReceived() - What : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 2241
    return-void

    .line 2254
    :sswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMediaRecorderErrorReceived() - What : MEDIA_ERROR_SERVER_DIED, extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2257
    :sswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMediaRecorderErrorReceived() - What : MEDIA_RECORDER_ERROR_UNKNOWN, extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2251
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method private onMediaRecorderInfoReceived(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v2, 0x0

    .line 2273
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eq v0, p1, :cond_0

    .line 2275
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaRecorderInfoReceived() - Unknown media recorder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    return-void

    .line 2280
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2294
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMediaRecorderInfoReceived() - What : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    return-void

    .line 2283
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaRecorderInfoReceived() - Max duration reached"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_DURATION_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 2270
    :goto_0
    return-void

    .line 2287
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaRecorderInfoReceived() - Max file size reached"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraThread;->m_IsMaxFileSizeDesignated:Z

    if-eqz v0, :cond_1

    .line 2289
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_FILE_SIZE_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    goto :goto_0

    .line 2291
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    goto :goto_0

    .line 2280
    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onPictureReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 19
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 2303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - Index : "

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2306
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/camera/CameraThread;->m_IsPictureReceived:Z

    .line 2309
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v2

    const/16 v3, 0x100

    if-ne v2, v3, :cond_4

    .line 2311
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v15

    .line 2312
    .local v15, "planes":[Lcom/oneplus/camera/media/ImagePlane;
    if-eqz v15, :cond_a

    array-length v2, v15

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 2314
    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-virtual {v2}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_LastCapturedJpeg:[B

    .line 2317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_LastCapturedJpeg:[B

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/oneplus/base/Device;->isOnePlus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2319
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_LastCapturedJpeg:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->readPhotoMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/PhotoMetadata;

    move-result-object v14

    .line 2320
    .local v14, "metaData":Lcom/oneplus/media/PhotoMetadata;
    const-string/jumbo v17, ""

    .line 2321
    .local v17, "unProcessedPictureId":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/media/PhotoMetadata;->PROP_MAKER_NOTE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v14, v2}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 2322
    .local v13, "makerNote":[B
    if-eqz v13, :cond_3

    .line 2325
    const/4 v3, 0x0

    const/4 v10, 0x0

    .local v10, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :try_start_0
    new-instance v11, Lcom/oneplus/media/IfdEntryEnumerator;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v4, 0x0

    invoke-direct {v11, v2, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2327
    .end local v10    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v11, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v11}, Lcom/oneplus/media/IfdEntryEnumerator;->read()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2329
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-media-IfdSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v11}, Lcom/oneplus/media/IfdEntryEnumerator;->currentIfd()Lcom/oneplus/media/Ifd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2332
    :pswitch_0
    invoke-virtual {v11}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 2335
    :pswitch_1
    invoke-virtual {v11}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v9

    .line 2336
    .local v9, "dataInteger":[I
    if-eqz v9, :cond_0

    array-length v2, v9

    if-lez v2, :cond_0

    .line 2337
    const/4 v2, 0x0

    aget v2, v9, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v17

    goto :goto_0

    .line 2349
    .end local v9    # "dataInteger":[I
    :cond_1
    if-eqz v11, :cond_2

    :try_start_2
    invoke-virtual {v11}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2347
    :catch_0
    move-exception v16

    .local v16, "tr":Ljava/lang/Throwable;
    move-object v10, v11

    .line 2348
    .end local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - Error when IFD enumerator"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2353
    .end local v16    # "tr":Ljava/lang/Throwable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - unProcessedPictureId : "

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2355
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2356
    sget-object v2, Lcom/oneplus/camera/CameraThread;->EVENT_UNPROCESSED_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/UnprocessedPictureEventArgs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v0}, Lcom/oneplus/camera/UnprocessedPictureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2365
    .end local v13    # "makerNote":[B
    .end local v14    # "metaData":Lcom/oneplus/media/PhotoMetadata;
    .end local v15    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    .end local v17    # "unProcessedPictureId":Ljava/lang/String;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget v2, v2, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    .line 2367
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    if-eqz v2, :cond_5

    .line 2368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_DefaultBurstShutterSoundHandle:Lcom/oneplus/base/Handle;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_BurstShutterPlaySoundHandle:Lcom/oneplus/base/Handle;

    .line 2369
    :cond_5
    sget-object v2, Lcom/oneplus/camera/CameraThread;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/CaptureEventArgs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2373
    :cond_6
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/camera/MediaResultInfo;

    .line 2374
    .local v12, "info":Lcom/oneplus/camera/MediaResultInfo;
    if-nez v12, :cond_d

    .line 2376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->isBurstPhotoCapture()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2377
    new-instance v2, Lcom/oneplus/camera/io/PhotoSaveTask;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v4, v0}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    .line 2301
    :goto_4
    return-void

    .line 2349
    .end local v12    # "info":Lcom/oneplus/camera/MediaResultInfo;
    .restart local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v13    # "makerNote":[B
    .restart local v14    # "metaData":Lcom/oneplus/media/PhotoMetadata;
    .restart local v15    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    .restart local v17    # "unProcessedPictureId":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto/16 :goto_1

    .end local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v10    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_2
    move-exception v2

    .end local v10    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :goto_5
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_6
    if-eqz v10, :cond_7

    :try_start_5
    invoke-virtual {v10}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_7
    :goto_7
    if-eqz v3, :cond_9

    :try_start_6
    throw v3

    .line 2347
    :catch_3
    move-exception v16

    .restart local v16    # "tr":Ljava/lang/Throwable;
    goto/16 :goto_2

    .line 2349
    .end local v16    # "tr":Ljava/lang/Throwable;
    :catch_4
    move-exception v4

    if-nez v3, :cond_8

    move-object v3, v4

    goto :goto_7

    :cond_8
    if-eq v3, v4, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_9
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 2361
    .end local v13    # "makerNote":[B
    .end local v14    # "metaData":Lcom/oneplus/media/PhotoMetadata;
    .end local v17    # "unProcessedPictureId":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - Invalid picture planes"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2380
    .end local v15    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    .restart local v12    # "info":Lcom/oneplus/camera/MediaResultInfo;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v2

    if-nez v2, :cond_c

    .line 2381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/oneplus/camera/CameraThread;->m_LastBurstPhotoTime:J

    .line 2382
    :cond_c
    new-instance v2, Lcom/oneplus/camera/io/BurstPhotoSaveTask;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/oneplus/camera/CameraThread;->m_LastBurstPhotoTime:J

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v8

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/camera/io/BurstPhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;JI)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    goto :goto_4

    .line 2385
    :cond_d
    iget-object v2, v12, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    if-eqz v2, :cond_e

    .line 2386
    new-instance v2, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget-object v5, v12, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Landroid/net/Uri;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    goto :goto_4

    .line 2388
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - No output URI specified, no need to save picture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2349
    .end local v12    # "info":Lcom/oneplus/camera/MediaResultInfo;
    .restart local v10    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v13    # "makerNote":[B
    .restart local v14    # "metaData":Lcom/oneplus/media/PhotoMetadata;
    .restart local v15    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    .restart local v17    # "unProcessedPictureId":Ljava/lang/String;
    :catchall_1
    move-exception v2

    goto :goto_6

    .end local v10    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catchall_2
    move-exception v2

    move-object v10, v11

    .end local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v10, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    goto :goto_6

    .end local v10    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_5
    move-exception v2

    move-object v10, v11

    .end local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v10    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    goto/16 :goto_5

    .line 2329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 2332
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private onPostviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 9
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getHandle()Lcom/oneplus/base/Handle;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2398
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostviewReceived() - Invalid camera capture handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    return-void

    .line 2401
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2403
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostviewReceived() - Invalid photo capture handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2404
    return-void

    .line 2408
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v2

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v4

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getCaptureResult()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getTakenTime()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v8

    .line 2411
    .local v8, "newEventArgs":Lcom/oneplus/camera/CameraCaptureEventArgs;
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v8}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2393
    return-void
.end method

.method private onRawPictureReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 8
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 2418
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onRawPictureReceived() - Index : "

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2421
    const/4 v1, 0x0

    .line 2422
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v0, 0x0

    .line 2424
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera;

    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v5, :cond_0

    .line 2425
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera;

    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    .line 2427
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getCaptureResult()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/hardware/camera2/CaptureResult;

    if-eqz v5, :cond_1

    .line 2428
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getCaptureResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2430
    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 2432
    :cond_2
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onRawPictureReceived() - parameters type is incorrect"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    return-void

    .line 2437
    :cond_3
    new-instance v2, Landroid/hardware/camera2/DngCreator;

    invoke-direct {v2, v1, v0}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    .line 2438
    .local v2, "dngCreator":Landroid/hardware/camera2/DngCreator;
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera;

    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2439
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera;

    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/DngCreator;->setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;

    .line 2440
    :cond_4
    const/4 v3, 0x1

    .line 2441
    .local v3, "orientation":I
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v6

    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera;

    sget-object v7, Lcom/oneplus/camera/Camera;->PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v7}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/Rotation;

    invoke-virtual {v5}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 2456
    :goto_0
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    .line 2459
    new-instance v4, Lcom/oneplus/camera/io/RawPhotoSaveTask;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v4, v5, v6, p1, v2}, Lcom/oneplus/camera/io/RawPhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;Landroid/hardware/camera2/DngCreator;)V

    .line 2462
    .local v4, "task":Lcom/oneplus/camera/io/RawPhotoSaveTask;
    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    .line 2416
    return-void

    .line 2444
    .end local v4    # "task":Lcom/oneplus/camera/io/RawPhotoSaveTask;
    :pswitch_0
    const/4 v3, 0x1

    .line 2445
    goto :goto_0

    .line 2447
    :pswitch_1
    const/4 v3, 0x6

    .line 2448
    goto :goto_0

    .line 2450
    :pswitch_2
    const/4 v3, 0x3

    .line 2451
    goto :goto_0

    .line 2453
    :pswitch_3
    const/16 v3, 0x8

    .line 2454
    goto :goto_0

    .line 2441
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onSavingQueueStateChanged(Z)V
    .locals 2
    .param p1, "isFull"    # Z

    .prologue
    .line 2470
    if-nez p1, :cond_0

    .line 2471
    return-void

    .line 2473
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSavingQueueStateChanged() - Media saving queue is full"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2477
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->SAVING_QUEUE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 2467
    :cond_1
    return-void
.end method

.method private onShutter(I)V
    .locals 4
    .param p1, "frameIndex"    # I

    .prologue
    const/4 v3, 0x1

    .line 2484
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutter() - Index : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2487
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2489
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutter() - Not capturing"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    return-void

    .line 2494
    :cond_0
    if-nez p1, :cond_2

    .line 2496
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->isFastCaptureEnabled:Z

    if-eqz v0, :cond_1

    .line 2497
    return-void

    .line 2498
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2738

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2502
    :cond_2
    iput-boolean v3, p0, Lcom/oneplus/camera/CameraThread;->m_IsDefaultShutterReceived:Z

    .line 2505
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2506
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v0, v1, :cond_3

    .line 2507
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    if-ne v0, v3, :cond_3

    .line 2508
    if-nez p1, :cond_3

    .line 2510
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->playDefaultShutterSound()V

    .line 2514
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v1, v2, p1}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;I)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2482
    return-void
.end method

.method private onShutter(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    .line 2522
    if-nez p1, :cond_0

    .line 2524
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutter() - No event data"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    return-void

    .line 2527
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2529
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShutter() - Unknown capture handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", current handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    return-void

    .line 2534
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2519
    return-void
.end method

.method private openCameraInternal(Lcom/oneplus/camera/Camera;I)Z
    .locals 6
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2705
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2707
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openCameraInternal() - Camera "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " is not contained in available camera list"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    return v3

    .line 2712
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-Camera$StateSwitchesValues()[I

    move-result-object v4

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 2722
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "openCameraInternal() - Open "

    invoke-static {v1, v4, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2725
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->open(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2727
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openCameraInternal() - Fail to open "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2728
    return v3

    .line 2716
    :pswitch_0
    return v2

    .line 2732
    :catch_0
    move-exception v0

    .line 2733
    .local v0, "ex":Ljava/lang/Throwable;
    return v3

    .line 2737
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2740
    sget-object v4, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2741
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2743
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraThread;->m_IsHighComponentsCreated:Z

    if-nez v1, :cond_2

    .line 2745
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraThread;->m_IsHighComponentsCreated:Z

    .line 2746
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v4, Lcom/oneplus/base/component/ComponentCreationPriority;->HIGH:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 2750
    :cond_2
    return v2

    :cond_3
    move v1, v3

    .line 2737
    goto :goto_0

    .line 2712
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private prepareMediaRecorder(Lcom/oneplus/camera/Camera;Landroid/media/MediaRecorder;Lcom/oneplus/camera/CameraThread$VideoParams;)Z
    .locals 20
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p3, "params"    # Lcom/oneplus/camera/CameraThread$VideoParams;

    .prologue
    .line 2850
    const/4 v10, 0x0

    .line 2851
    .local v10, "isProfilePrepared":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 2853
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_0

    .line 2855
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    iget-object v7, v15, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/VideoCaptureHandler;

    .line 2858
    .local v7, "captureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v7, v0, v1, v2}, Lcom/oneplus/camera/VideoCaptureHandler;->prepareCamcorderProfile(Lcom/oneplus/camera/Camera;Landroid/media/MediaRecorder;Lcom/oneplus/camera/CameraThread$VideoParams;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2860
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "prepareMediaRecorder() - Profile is prepared by "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2862
    const/4 v10, 0x1

    .line 2879
    .end local v7    # "captureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    .end local v9    # "i":I
    :cond_0
    if-nez v10, :cond_6

    .line 2882
    :try_start_1
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/oneplus/camera/CameraThread$VideoParams;->resolution:Lcom/oneplus/camera/media/Resolution;

    .line 2883
    .local v13, "resolution":Lcom/oneplus/camera/media/Resolution;
    invoke-virtual {v13}, Lcom/oneplus/camera/media/Resolution;->getWidth()I

    move-result v15

    invoke-virtual {v13}, Lcom/oneplus/camera/media/Resolution;->getHeight()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/oneplus/camera/CameraThread;->createCamcorderProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v12

    .line 2884
    .local v12, "profile":Landroid/media/CamcorderProfile;
    if-nez v12, :cond_2

    .line 2886
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "prepareMediaRecorder() - Unknown resolution : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2888
    const/4 v15, 0x0

    return v15

    .line 2867
    .end local v12    # "profile":Landroid/media/CamcorderProfile;
    .end local v13    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .restart local v7    # "captureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    .restart local v9    # "i":I
    :catch_0
    move-exception v8

    .line 2868
    .local v8, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "prepareMediaRecorder() - Fail to prepare media recorder by "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2869
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 2870
    const/4 v15, 0x0

    return v15

    .line 2853
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    .line 2892
    .end local v7    # "captureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    .end local v9    # "i":I
    .restart local v12    # "profile":Landroid/media/CamcorderProfile;
    .restart local v13    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_2
    const/4 v15, 0x5

    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2895
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 2897
    invoke-virtual {v13}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v15

    if-lez v15, :cond_3

    .line 2899
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "prepareMediaRecorder() - Fps : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v13}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    invoke-virtual {v13}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 2902
    invoke-virtual {v13}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v15

    const/16 v16, 0x1e

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 2904
    const/16 v15, 0x780

    const/16 v16, 0x438

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/oneplus/camera/CameraThread;->createCamcorderProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 2905
    .local v4, "baseProfile":Landroid/media/CamcorderProfile;
    const v5, 0x4c6d4e00    # 6.2208E7f

    .line 2906
    .local v5, "bitRateBase":F
    invoke-virtual {v13}, Lcom/oneplus/camera/media/Resolution;->getWidth()I

    move-result v15

    invoke-virtual {v13}, Lcom/oneplus/camera/media/Resolution;->getHeight()I

    move-result v16

    mul-int v15, v15, v16

    invoke-virtual {v13}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v16

    mul-int v15, v15, v16

    int-to-float v15, v15

    const v16, 0x4c6d4e00    # 6.2208E7f

    div-float v6, v15, v16

    .line 2907
    .local v6, "bitRateMutiple":F
    iget v15, v4, Landroid/media/CamcorderProfile;->videoBitRate:I

    int-to-float v15, v15

    mul-float/2addr v15, v6

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 2908
    .local v14, "targetBitRate":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "prepareMediaRecorder() - targetBitRate : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2909
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 2921
    .end local v4    # "baseProfile":Landroid/media/CamcorderProfile;
    .end local v5    # "bitRateBase":F
    .end local v6    # "bitRateMutiple":F
    .end local v14    # "targetBitRate":I
    :cond_3
    sget-object v15, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/base/Rotation;

    invoke-virtual {v15}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v15

    sget-object v16, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v16

    sub-int v11, v15, v16

    .line 2922
    .local v11, "orientation":I
    sget-object v15, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 2923
    neg-int v11, v11

    .line 2924
    :cond_4
    if-gez v11, :cond_5

    .line 2925
    add-int/lit16 v11, v11, 0x168

    .line 2926
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "prepareMediaRecorder() - Orientation : "

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2927
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 2931
    .end local v11    # "orientation":I
    .end local v12    # "profile":Landroid/media/CamcorderProfile;
    .end local v13    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    if-eqz v15, :cond_7

    .line 2932
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    sget-object v16, Lcom/oneplus/camera/location/LocationManager;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v15 .. v16}, Lcom/oneplus/camera/location/LocationManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/location/Location;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    .line 2934
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    if-eqz v15, :cond_8

    .line 2935
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    invoke-virtual {v15}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 2939
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v15, :cond_d

    .line 2940
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 2945
    :goto_1
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxFileSize:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_9

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxFileSize:J

    move-wide/from16 v16, v0

    sget-object v15, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/oneplus/camera/CameraThread;->getFreeSpace(Lcom/oneplus/camera/media/MediaType;)J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-lez v15, :cond_e

    .line 2947
    :cond_9
    sget-object v15, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/oneplus/camera/CameraThread;->getFreeSpace(Lcom/oneplus/camera/media/MediaType;)J

    move-result-wide v16

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 2948
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/oneplus/camera/CameraThread;->m_IsMaxFileSizeDesignated:Z

    .line 2955
    :goto_2
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxDurationSeconds:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-ltz v15, :cond_a

    .line 2956
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxDurationSeconds:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v15, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 2959
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    if-nez v15, :cond_b

    .line 2961
    new-instance v15, Lcom/oneplus/camera/CameraThread$29;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/oneplus/camera/CameraThread$29;-><init>(Lcom/oneplus/camera/CameraThread;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 2970
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-nez v15, :cond_c

    .line 2972
    new-instance v15, Lcom/oneplus/camera/CameraThread$30;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/oneplus/camera/CameraThread$30;-><init>(Lcom/oneplus/camera/CameraThread;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 2981
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2982
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2985
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "prepareMediaRecorder() - MediaRecorder.prepare [start]"

    invoke-static/range {v15 .. v16}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRecorder;->prepare()V

    .line 2987
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "prepareMediaRecorder() - MediaRecorder.prepare [end]"

    invoke-static/range {v15 .. v16}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2990
    const/4 v15, 0x1

    return v15

    .line 2942
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 2993
    :catch_1
    move-exception v8

    .line 2994
    .restart local v8    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "prepareMediaRecorder() - Fail to prepare media recorder "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2995
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 2996
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 2997
    const/4 v15, 0x0

    return v15

    .line 2952
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_e
    :try_start_3
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxFileSize:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 2953
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/oneplus/camera/CameraThread;->m_IsMaxFileSizeDesignated:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method

.method private prepareVideoFilePath()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2797
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 2800
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    instance-of v8, v8, Lcom/oneplus/camera/CameraActivity;

    if-eqz v8, :cond_0

    .line 2803
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    check-cast v8, Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraActivity;->isVideoServiceMode()Z

    move-result v7

    .line 2804
    .local v7, "videoService":Z
    if-eqz v7, :cond_0

    .line 2806
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/MediaResultInfo;

    .line 2807
    .local v5, "info":Lcom/oneplus/camera/MediaResultInfo;
    if-eqz v5, :cond_0

    iget-object v8, v5, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    if-eqz v8, :cond_0

    .line 2811
    :try_start_0
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, v5, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    const-string/jumbo v10, "rw"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2812
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "prepareVideoFilePath() - Video file path : "

    iget-object v10, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2819
    return v12

    .line 2815
    :catch_0
    move-exception v3

    .line 2816
    .local v3, "ex":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "prepareVideoFilePath() - Error when open extra output"

    invoke-static {v8, v9, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2817
    return v11

    .line 2826
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v5    # "info":Lcom/oneplus/camera/MediaResultInfo;
    .end local v7    # "videoService":Z
    :cond_0
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    iget-object v9, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    sget-object v10, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-static {v8, v9, v10}, Lcom/oneplus/io/StorageUtils;->findStorageFromSettings(Lcom/oneplus/io/StorageManager;Lcom/oneplus/base/Settings;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v6

    .line 2827
    .local v6, "storage":Lcom/oneplus/io/Storage;
    invoke-static {v6}, Lcom/oneplus/io/StorageUtils;->getDcimPath(Lcom/oneplus/io/Storage;)Ljava/lang/String;

    move-result-object v1

    .line 2828
    .local v1, "dcimPath":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2829
    sget-object v8, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2830
    :cond_1
    new-instance v2, Ljava/io/File;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v11

    const-string/jumbo v9, "Camera"

    aput-object v9, v8, v12

    invoke-static {v8}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2831
    .local v2, "directory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2838
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2839
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VID_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".mp4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2840
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    .line 2841
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "prepareVideoFilePath() - Video file path : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    return v12

    .line 2833
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v4    # "file":Ljava/io/File;
    :cond_3
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "prepareVideoFilePath() - Fail to create "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    return v11
.end method

.method private removePhotoCaptureHandler(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    .prologue
    .line 3015
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 3016
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3023
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot remove capture handler when photo capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3027
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3028
    return-void

    .line 3029
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePhotoCaptureHandler() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3012
    return-void

    .line 3016
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private removeVideoCaptureHandler(Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    .prologue
    .line 3037
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 3038
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3045
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot remove capture handler when video capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3049
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3050
    return-void

    .line 3051
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeVideoCaptureHandler() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    return-void

    .line 3038
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resetCapturingRawPhotoProperty(Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    .line 3057
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 3058
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_2

    .line 3060
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3062
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/io/FileUtils;->isRawFilePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3055
    :cond_0
    :goto_0
    return-void

    .line 3064
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3065
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3067
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3074
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resetCapturingRawPhotoProperty() - camera is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMediaTypeInternal(Lcom/oneplus/camera/media/MediaType;)Z
    .locals 7
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 3174
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 3175
    return v3

    .line 3176
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setMediaTypeInternal() - Media type : "

    invoke-static {v2, v5, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3177
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 3211
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMediaTypeInternal() - Unknown media type : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3212
    return v4

    .line 3181
    :pswitch_0
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v5

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v2}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_1

    .line 3187
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMediaTypeInternal() - Current video capture state is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3188
    return v4

    .line 3190
    :pswitch_1
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3216
    :cond_1
    :goto_0
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 3218
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v5

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v2}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_2

    .line 3231
    const/4 v1, 0x0

    .line 3236
    .local v1, "needRestartPreview":Z
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, p1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3239
    if-eqz v0, :cond_3

    .line 3240
    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne p1, v2, :cond_6

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3243
    :cond_3
    if-eqz v0, :cond_4

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne p1, v2, :cond_4

    .line 3245
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setMediaTypeInternal() - reset fps settings"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3248
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2, v6}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3252
    :cond_4
    if-eqz v1, :cond_5

    .line 3254
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setMediaTypeInternal() - Restart preview"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3255
    invoke-virtual {p0, v0, v6, v6, v6}, Lcom/oneplus/camera/CameraThread;->startCameraPreview(Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3256
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setMediaTypeInternal() - Fail to restart preview"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    :cond_5
    return v3

    .line 3196
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    .end local v1    # "needRestartPreview":Z
    :pswitch_2
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v5

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v2}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_3

    .line 3202
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMediaTypeInternal() - Current photo capture state is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3203
    return v4

    .line 3205
    :pswitch_3
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3206
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3222
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    :pswitch_4
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setMediaTypeInternal() - Stop preview to change media type"

    invoke-static {v2, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3223
    const/4 v1, 0x1

    .line 3224
    .restart local v1    # "needRestartPreview":Z
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->stopCameraPreview(Lcom/oneplus/camera/Camera;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3226
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setMediaTypeInternal() - Fail to stop preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    return v4

    :cond_6
    move v2, v4

    .line 3240
    goto/16 :goto_1

    .line 3177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 3181
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 3218
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 3196
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private startCameraPreviewInternal(Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)Z
    .locals 10
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "previewSize"    # Landroid/util/Size;
    .param p3, "resolution"    # Lcom/oneplus/camera/media/Resolution;
    .param p4, "receiver"    # Ljava/lang/Object;
    .param p5, "flags"    # I

    .prologue
    .line 3430
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 3432
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;

    .line 3433
    .local v8, "stopRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    iget-object v0, v8, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->camera:Lcom/oneplus/camera/Camera;

    if-ne v0, p1, :cond_1

    .line 3435
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Cancel pending preview stop rquest"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3436
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3442
    .end local v8    # "stopRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    :cond_0
    const/16 v0, 0x2756

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3444
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Pending preview stop detected"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3445
    const/4 v0, 0x0

    return v0

    .line 3430
    .restart local v8    # "stopRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 3449
    .end local v8    # "stopRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/CameraThread;->openCameraInternal(Lcom/oneplus/camera/Camera;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3451
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Fail to open camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3452
    const/4 v0, 0x0

    return v0

    .line 3456
    :cond_3
    const/16 v0, 0x2756

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3458
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Pending preview stop detected after opening camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    const/4 v0, 0x0

    return v0

    .line 3463
    :cond_4
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v0}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3494
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz p4, :cond_9

    .line 3496
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCameraPreviewInternal() - Change preview receiver to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3497
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0, p4}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3503
    :goto_2
    if-eqz p2, :cond_a

    .line 3505
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCameraPreviewInternal() - Preview size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3506
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0, p2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3512
    :goto_3
    iput-object p3, p0, Lcom/oneplus/camera/CameraThread;->m_CurrentResolution:Lcom/oneplus/camera/media/Resolution;

    .line 3513
    if-eqz p3, :cond_6

    .line 3515
    invoke-virtual {p3}, Lcom/oneplus/camera/media/Resolution;->getTargetType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_6

    .line 3517
    invoke-virtual {p3}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v0

    if-lez v0, :cond_b

    .line 3519
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCameraPreviewInternal() - set fps settings : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3522
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Landroid/util/Range;

    invoke-virtual {p3}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3535
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCameraPreviewInternal() - Start preview for camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3536
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->startPreview(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 3538
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCameraPreviewInternal() - Fail to start preview for camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3539
    const/4 v0, 0x0

    return v0

    .line 3469
    :pswitch_1
    if-eqz p4, :cond_5

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p4, :cond_5

    .line 3471
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Preview receiver changed, stop preview first"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->stopPreview(I)V

    goto/16 :goto_1

    .line 3476
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Start while stopping"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    :goto_5
    if-ltz v6, :cond_8

    .line 3479
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;

    .line 3480
    .local v7, "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    iget-object v0, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->camera:Lcom/oneplus/camera/Camera;

    if-ne v0, p1, :cond_7

    .line 3482
    iput-object p2, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->previewSize:Landroid/util/Size;

    .line 3483
    iput-object p4, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->previewReceiver:Ljava/lang/Object;

    .line 3484
    iput p5, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->flags:I

    .line 3485
    iput-object p3, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->resolution:Lcom/oneplus/camera/media/Resolution;

    .line 3486
    const/4 v0, 0x1

    return v0

    .line 3477
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 3489
    .end local v7    # "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    :cond_8
    iget-object v9, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    new-instance v0, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;-><init>(Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3490
    const/4 v0, 0x1

    return v0

    .line 3500
    :cond_9
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Use current preview receiver"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3509
    :cond_a
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Use current preview size"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3526
    :cond_b
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - no fps settings"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 3543
    :cond_c
    iput p5, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewStartFlags:I

    .line 3546
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraThread;->m_IsNormalComponentsCreated:Z

    if-nez v0, :cond_d

    .line 3548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraThread;->m_IsNormalComponentsCreated:Z

    .line 3549
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->bindToHighComponents()V

    .line 3550
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v1, Lcom/oneplus/base/component/ComponentCreationPriority;->NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 3551
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->bindToNormalComponents()V

    .line 3555
    :cond_d
    const/4 v0, 0x1

    return v0

    .line 3463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private stopCameraPreviewInternal(Lcom/oneplus/camera/Camera;[ZI)Z
    .locals 8
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "result"    # [Z
    .param p3, "flags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3629
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3631
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;

    .line 3632
    .local v2, "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    iget-object v3, v2, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->camera:Lcom/oneplus/camera/Camera;

    if-ne v3, p1, :cond_2

    .line 3634
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Remove pending start request"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3635
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3641
    .end local v2    # "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    :cond_0
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3643
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Wait for preview start or capture complete"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    new-instance v4, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;

    invoke-direct {v4, p1, p2, p3}, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;-><init>(Lcom/oneplus/camera/Camera;[ZI)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3645
    return v7

    .line 3629
    .restart local v2    # "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3649
    .end local v2    # "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Stop preview [start]"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3650
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->stopPreview(I)V

    .line 3651
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Stop preview [end]"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3654
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3656
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Stop video recording"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3657
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v4, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 3661
    :cond_4
    if-eqz p2, :cond_5

    .line 3663
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-eq v3, v4, :cond_7

    .line 3665
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3667
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Notify waiting thread"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3668
    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-boolean v3, p2, v4

    .line 3669
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p2

    .line 3694
    :cond_5
    :goto_1
    return v7

    .line 3665
    :catchall_0
    move-exception v3

    monitor-exit p2

    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 3697
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 3698
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Error stopping camera preview"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3699
    if-eqz p2, :cond_6

    .line 3701
    monitor-enter p2

    .line 3703
    :try_start_3
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Notify waiting thread"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3704
    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-boolean v3, p2, v4

    .line 3705
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p2

    .line 3708
    :cond_6
    return v6

    .line 3674
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "i":I
    :cond_7
    :try_start_4
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Wait for camera preview stop"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3675
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/CameraThread$33;

    invoke-direct {v4, p0, p2, p1}, Lcom/oneplus/camera/CameraThread$33;-><init>(Lcom/oneplus/camera/CameraThread;[ZLcom/oneplus/camera/Camera;)V

    invoke-interface {p1, v3, v4}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 3701
    .end local v1    # "i":I
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    monitor-exit p2

    throw v3
.end method

.method private stopPhotoCapture(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .prologue
    .line 3716
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3717
    sget-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 3714
    :cond_0
    :goto_0
    return-void

    .line 3718
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$34;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$34;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3727
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPhotoCapture() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopPhotoCaptureInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    const/4 v5, 0x0

    .line 3736
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    if-eq v2, p1, :cond_0

    .line 3738
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopPhotoCaptureInternal() - Invalid handle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3739
    return-void

    .line 3742
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopPhotoCaptureInternal() - Handle : "

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3745
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_1

    .line 3747
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopPhotoCaptureInternal() - Stop when locking focus"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3748
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    sget-object v3, Lcom/oneplus/camera/CaptureCompleteReason;->CANCELLED:Lcom/oneplus/camera/CaptureCompleteReason;

    const/4 v4, 0x0

    invoke-direct {p0, v5, v2, v3, v4}, Lcom/oneplus/camera/CameraThread;->completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;Z)Z

    .line 3749
    return-void

    .line 3753
    :cond_1
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 3754
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_2

    .line 3756
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopPhotoCaptureInternal() - No camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3757
    return-void

    .line 3763
    :cond_2
    :try_start_0
    iget-object v2, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    if-nez v2, :cond_6

    .line 3765
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->isBurstPhotoCapture()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3766
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x274c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3775
    :goto_0
    iput-object p2, p0, Lcom/oneplus/camera/CameraThread;->m_PreparedPhotoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 3733
    :cond_3
    :goto_1
    return-void

    .line 3767
    :cond_4
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraThread;->m_IsDefaultShutterReceived:Z

    if-nez v2, :cond_5

    .line 3769
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopPhotoCaptureInternal() - Shutter not received yet, stop immediately"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3770
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x274c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3785
    :catch_0
    move-exception v1

    .line 3786
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopPhotoCaptureInternal() - Fail to stop capture"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3773
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    const/16 v3, 0x274c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3779
    :cond_6
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopPhotoCaptureInternal() - Use "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to stop capture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3780
    iget-object v2, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    invoke-interface {v2, v0, p1, p2}, Lcom/oneplus/camera/PhotoCaptureHandler;->stopCapture(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3781
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopPhotoCaptureInternal() - Fail to stop capture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private stopVideoCapture(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;
    .param p3, "flags"    # I

    .prologue
    .line 3794
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3795
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 3792
    :cond_0
    :goto_0
    return-void

    .line 3796
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$35;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread$35;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3805
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopVideoCapture() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V
    .locals 17
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;
    .param p3, "flags"    # I

    .prologue
    .line 3814
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_0

    if-nez p1, :cond_1

    .line 3816
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopVideoCaptureInternal() - Invalid handle"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3817
    return-void

    .line 3821
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v4

    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v3}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 3829
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopVideoCaptureInternal() - Video capture state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3834
    :pswitch_1
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v3, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x271a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v15

    .line 3837
    :goto_0
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3840
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x272e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3843
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3845
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopVideoCaptureInternal() - Stop video snapshot and wait"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3846
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/CameraThread;->m_LastVideoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 3847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    sget-object v4, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/oneplus/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 3848
    return-void

    .line 3834
    :cond_2
    const/4 v15, 0x0

    .local v15, "isStarting":Z
    goto :goto_0

    .line 3852
    .end local v15    # "isStarting":Z
    :cond_3
    const/4 v14, 0x0

    .line 3853
    .local v14, "ignoreVideo":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_4

    if-eqz v15, :cond_a

    .line 3876
    :cond_4
    :goto_1
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_VideoStopSoundHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_VideoStopSoundHandle:Lcom/oneplus/base/Handle;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 3880
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->complete()V

    .line 3883
    if-eqz v15, :cond_6

    .line 3885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopVideoCaptureInternal() - Stop while starting"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3886
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x271a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3887
    sget-object v3, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_6

    .line 3888
    sget-object p2, Lcom/oneplus/camera/CaptureCompleteReason;->CANCELLED:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 3892
    :cond_6
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/Camera;

    .line 3893
    .local v8, "camera":Lcom/oneplus/camera/Camera;
    if-nez v15, :cond_7

    if-eqz v14, :cond_c

    .line 3909
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopVideoCaptureInternal() - Delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3912
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_e

    .line 3913
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3924
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_9

    .line 3926
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v4

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v3}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    .line 3935
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopVideoCaptureInternal() - Release media recorder after preview start or stop"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3941
    :cond_9
    :goto_3
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 3944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    if-eqz v15, :cond_f

    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v5, v1, v3}, Lcom/oneplus/camera/CameraThread;->completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;Z)Z

    .line 3811
    return-void

    .line 3855
    .end local v8    # "camera":Lcom/oneplus/camera/Camera;
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderStartTime:J

    sub-long v12, v4, v6

    .line 3856
    .local v12, "duration":J
    const-wide/16 v4, 0x3e8

    cmp-long v3, v12, v4

    if-gez v3, :cond_b

    .line 3860
    const-wide/16 v4, 0x3e8

    sub-long v10, v4, v12

    .line 3861
    .local v10, "delayMillis":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopVideoCaptureInternal() - Duration is too short : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms, delay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3862
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3867
    .end local v10    # "delayMillis":J
    :cond_b
    :goto_5
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/Camera;

    .line 3868
    .restart local v8    # "camera":Lcom/oneplus/camera/Camera;
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Lcom/oneplus/camera/Camera;->stopVideoRecording(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3870
    const-wide/16 v4, 0x3e8

    cmp-long v3, v12, v4

    if-gez v3, :cond_4

    .line 3871
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 3895
    .end local v12    # "duration":J
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_8

    .line 3898
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->captureHandler:Lcom/oneplus/camera/VideoCaptureHandler;

    .line 3899
    .local v2, "videoCaptureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/oneplus/camera/VideoCaptureHandler;->saveVideo(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/util/Size;Landroid/os/ParcelFileDescriptor;I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 3902
    :cond_d
    new-instance v16, Lcom/oneplus/camera/io/VideoSaveTask;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5, v3}, Lcom/oneplus/camera/io/VideoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/util/Size;)V

    .line 3903
    .local v16, "saveTask":Lcom/oneplus/camera/io/VideoSaveTask;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    goto/16 :goto_2

    .line 3915
    .end local v2    # "videoCaptureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    .end local v16    # "saveTask":Lcom/oneplus/camera/io/VideoSaveTask;
    :cond_e
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->closeVideoFileDescriptor()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 3918
    :catch_0
    move-exception v9

    .line 3919
    .local v9, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopVideoCaptureInternal() - Fail to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 3930
    .end local v9    # "ex":Ljava/lang/Throwable;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopVideoCaptureInternal() - Release media recorder"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3931
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 3932
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    goto/16 :goto_3

    .line 3944
    :cond_f
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 3865
    .end local v8    # "camera":Lcom/oneplus/camera/Camera;
    .restart local v10    # "delayMillis":J
    .restart local v12    # "duration":J
    :catch_1
    move-exception v9

    .restart local v9    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_5

    .line 3821
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3926
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V
    .locals 3
    .param p1, "builders"    # [Lcom/oneplus/base/component/ComponentBuilder;

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 764
    :goto_0
    return-void

    .line 770
    :cond_0
    monitor-enter p0

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_1

    .line 774
    new-instance v0, Lcom/oneplus/camera/CameraThread$14;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$14;-><init>(Lcom/oneplus/camera/CameraThread;[Lcom/oneplus/base/component/ComponentBuilder;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 784
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final capturePhoto()Lcom/oneplus/camera/CaptureHandle;
    .locals 2

    .prologue
    .line 940
    new-instance v0, Lcom/oneplus/camera/CameraThread$PhotoParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraThread$PhotoParams;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->capturePhoto(Lcom/oneplus/camera/CameraThread$PhotoParams;I)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    return-object v0
.end method

.method public final capturePhoto(Lcom/oneplus/camera/CameraThread$PhotoParams;)Lcom/oneplus/camera/CaptureHandle;
    .locals 1
    .param p1, "params"    # Lcom/oneplus/camera/CameraThread$PhotoParams;

    .prologue
    .line 951
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/CameraThread;->capturePhoto(Lcom/oneplus/camera/CameraThread$PhotoParams;I)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    return-object v0
.end method

.method public final capturePhoto(Lcom/oneplus/camera/CameraThread$PhotoParams;I)Lcom/oneplus/camera/CaptureHandle;
    .locals 9
    .param p1, "params"    # Lcom/oneplus/camera/CameraThread$PhotoParams;
    .param p2, "flags"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 967
    if-nez p1, :cond_0

    .line 968
    new-instance p1, Lcom/oneplus/camera/CameraThread$PhotoParams;

    .end local p1    # "params":Lcom/oneplus/camera/CameraThread$PhotoParams;
    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lcom/oneplus/camera/CameraThread$PhotoParams;-><init>(I)V

    .line 969
    .restart local p1    # "params":Lcom/oneplus/camera/CameraThread$PhotoParams;
    :cond_0
    iget v1, p1, Lcom/oneplus/camera/CameraThread$PhotoParams;->frameCount:I

    if-nez v1, :cond_1

    .line 971
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Invalid frame count"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    return-object v7

    .line 976
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    iget-object v3, p1, Lcom/oneplus/camera/CameraThread$PhotoParams;->captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/Rotation;

    iget v5, p1, Lcom/oneplus/camera/CameraThread$PhotoParams;->frameCount:I

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/base/Rotation;II)V

    .line 979
    .local v0, "handle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 981
    invoke-direct {p0, v0, v8}, Lcom/oneplus/camera/CameraThread;->capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 982
    return-object v0

    .line 983
    :cond_2
    return-object v7

    .line 985
    :cond_3
    new-instance v1, Lcom/oneplus/camera/CameraThread$22;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/camera/CameraThread$22;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 994
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Create handle "

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 995
    return-object v0

    .line 997
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Fail to perform cross-thread operation"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    return-object v7
.end method

.method public final captureVideo(Lcom/oneplus/camera/CameraThread$VideoParams;I)Lcom/oneplus/camera/CaptureHandle;
    .locals 8
    .param p1, "params"    # Lcom/oneplus/camera/CameraThread$VideoParams;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 1220
    if-nez p1, :cond_0

    .line 1222
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - No video parameters"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    return-object v7

    .line 1225
    :cond_0
    iget-object v6, p1, Lcom/oneplus/camera/CameraThread$VideoParams;->resolution:Lcom/oneplus/camera/media/Resolution;

    .line 1226
    .local v6, "resolution":Lcom/oneplus/camera/media/Resolution;
    if-nez v6, :cond_1

    .line 1228
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - No video resolution"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    return-object v7

    .line 1231
    :cond_1
    invoke-virtual {v6}, Lcom/oneplus/camera/media/Resolution;->getTargetType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-eq v1, v2, :cond_2

    .line 1233
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "captureVideo() - Invalid resolution : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    return-object v7

    .line 1236
    :cond_2
    new-instance v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Rotation;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraThread$VideoParams;->clone()Lcom/oneplus/camera/CameraThread$VideoParams;

    move-result-object v4

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Rotation;Lcom/oneplus/camera/CameraThread$VideoParams;I)V

    .line 1237
    .local v0, "handle":Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1239
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->captureVideoInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1240
    return-object v0

    .line 1241
    :cond_3
    return-object v7

    .line 1243
    :cond_4
    new-instance v1, Lcom/oneplus/camera/CameraThread$23;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/camera/CameraThread$23;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;)V

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1252
    return-object v0

    .line 1254
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - Fail to perform cross-thread operation"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    return-object v7
.end method

.method public checkRemainingMediaCount()V
    .locals 2

    .prologue
    const/16 v1, 0x2724

    .line 1399
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1400
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1401
    :cond_1
    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1403
    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkRemainingMediaCount() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final closeCamera(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 1517
    if-nez p1, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCamera() - No camera to close"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    return-void

    .line 1524
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1525
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->closeCameraInternal(Lcom/oneplus/camera/Camera;)V

    .line 1514
    :cond_1
    :goto_0
    return-void

    .line 1526
    :cond_2
    new-instance v0, Lcom/oneplus/camera/CameraThread$24;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$24;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1535
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCamera() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final closeCameras()V
    .locals 2

    .prologue
    .line 1555
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1556
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeCamerasInternal()V

    .line 1553
    :cond_0
    :goto_0
    return-void

    .line 1557
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CloseCamerasRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCameras() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final completeCapture(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;)Z
    .locals 1
    .param p1, "captureHandlerHandle"    # Lcom/oneplus/base/Handle;
    .param p2, "handle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    .line 1594
    sget-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/camera/CameraThread;->completeCapture(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)Z

    move-result v0

    return v0
.end method

.method public final completeCapture(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)Z
    .locals 3
    .param p1, "captureHandlerHandle"    # Lcom/oneplus/base/Handle;
    .param p2, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    const/4 v2, 0x0

    .line 1608
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 1609
    if-nez p1, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCapture() - No capture handler handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    return v2

    .line 1614
    :cond_0
    if-nez p2, :cond_1

    .line 1616
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCapture() - No capture handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    return v2

    .line 1619
    :cond_1
    if-nez p3, :cond_2

    .line 1621
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCapture() - No complete reason"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    return v2

    .line 1626
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/camera/CameraThread;->completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;Z)Z

    move-result v0

    return v0
.end method

.method public disableVideoSnapshot()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 1827
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 1830
    new-instance v0, Lcom/oneplus/camera/CameraThread$25;

    const-string/jumbo v1, "DisableVideoSnapshot"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraThread$25;-><init>(Lcom/oneplus/camera/CameraThread;Ljava/lang/String;)V

    .line 1838
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1841
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1842
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1845
    :cond_0
    return-object v0
.end method

.method public findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TComponent::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TTComponent;>;)TTComponent;"
        }
    .end annotation

    .prologue
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TTComponent;>;"
    const/4 v1, 0x0

    .line 1866
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0

    .line 1868
    :cond_0
    return-object v1
.end method

.method public findComponents(Ljava/lang/Class;)[Lcom/oneplus/base/component/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TComponent::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TTComponent;>;)[TTComponent;"
        }
    .end annotation

    .prologue
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TTComponent;>;"
    const/4 v2, 0x0

    .line 1877
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponents(Ljava/lang/Class;[Ljava/lang/Object;)[Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0

    .line 1879
    :cond_0
    new-array v0, v2, [Lcom/oneplus/base/component/Component;

    return-object v0
.end method

.method protected final getComponentManager()Lcom/oneplus/base/component/ComponentManager;
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method public getLastCapturedJpeg()[B
    .locals 1

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_LastCapturedJpeg:[B

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1957
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 2008
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseThread;->handleMessage(Landroid/os/Message;)V

    .line 1955
    :goto_1
    return-void

    .line 1960
    :sswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->captureVideoInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Z)Z

    goto :goto_1

    .line 1964
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    goto :goto_1

    .line 1968
    :sswitch_2
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkVideoRecordingLimitation()V

    goto :goto_1

    .line 1973
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraThread;->onShutter(I)V

    .line 1974
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iput-boolean v2, v1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->isFastCaptureEnabled:Z

    goto :goto_1

    .line 1979
    :sswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->notifyRequiredPermissionsState(Z)V

    goto :goto_1

    .line 1983
    :sswitch_5
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1988
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1989
    .local v0, "args":[Ljava/lang/Object;
    aget-object v1, v0, v1

    check-cast v1, Lcom/oneplus/camera/Camera;

    aget-object v2, v0, v2

    check-cast v2, [Z

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/camera/CameraThread;->stopCameraPreviewInternal(Lcom/oneplus/camera/Camera;[ZI)Z

    goto :goto_1

    .line 1994
    .end local v0    # "args":[Ljava/lang/Object;
    :sswitch_7
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopPhotoCaptureInternal() - Use default photo capture stop process"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 1996
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_BurstCaptureSoundStreamHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_BurstCaptureSoundStreamHandle:Lcom/oneplus/base/Handle;

    .line 1997
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2738

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 2001
    :sswitch_8
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-nez v1, :cond_0

    .line 2003
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v1

    const-class v2, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/io/StorageManager;

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    .line 2004
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-nez v1, :cond_0

    .line 2005
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x32

    const/16 v4, 0x2760

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1957
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_5
        0x271a -> :sswitch_0
        0x2724 -> :sswitch_1
        0x272e -> :sswitch_2
        0x2738 -> :sswitch_3
        0x2742 -> :sswitch_4
        0x274c -> :sswitch_7
        0x2756 -> :sswitch_6
        0x2760 -> :sswitch_8
    .end sparse-switch
.end method

.method public isShutterSoundNeeded()Z
    .locals 2

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v1, "ShutterSound"

    invoke-virtual {v0, v1}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyRequiredPermissionsState(Z)V
    .locals 4
    .param p1, "granted"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2031
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2033
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x2742

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v1, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 2034
    return-void

    :cond_0
    move v0, v1

    .line 2033
    goto :goto_0

    .line 2038
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2028
    return-void
.end method

.method protected onStarted()V
    .locals 2

    .prologue
    .line 2543
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStarted()V

    .line 2546
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->bindToInitialComponents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2547
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Fail to bind components."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2540
    :cond_0
    return-void
.end method

.method protected onStarting()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 2556
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStarting()V

    .line 2559
    sget-object v1, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    const/16 v2, 0x100

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->enableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 2560
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2561
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2562
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2563
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2564
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2565
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2566
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2569
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 2571
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onStarting() - No need to request permissions"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2576
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    .line 2577
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    .line 2578
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    .line 2581
    new-instance v1, Lcom/oneplus/base/Settings;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v5}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    .line 2584
    monitor-enter p0

    .line 2587
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    if-eqz v1, :cond_1

    .line 2589
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onStarting() - Initial screen size : "

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2590
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2591
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    .line 2595
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;

    if-eqz v1, :cond_2

    .line 2597
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onStarting() - Initial media type : "

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2598
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2599
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_2

    .line 2600
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2604
    :cond_2
    new-instance v1, Lcom/oneplus/base/component/ComponentManager;

    invoke-direct {v1}, Lcom/oneplus/base/component/ComponentManager;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    .line 2605
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/oneplus/camera/CameraThread;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 2606
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/CameraThread$26;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraThread$26;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2614
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/CameraThread$27;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraThread$27;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2622
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2624
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/oneplus/base/component/ComponentBuilder;

    .line 2625
    .local v0, "builders":[Lcom/oneplus/base/component/ComponentBuilder;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2626
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2627
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "builders":[Lcom/oneplus/base/component/ComponentBuilder;
    :cond_3
    monitor-exit p0

    .line 2632
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 2553
    return-void

    .line 2584
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected onStopping()V
    .locals 1

    .prologue
    .line 2641
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeCamerasInternal()V

    .line 2644
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v0}, Lcom/oneplus/base/component/ComponentManager;->release()V

    .line 2647
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_0

    .line 2648
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    invoke-virtual {v0}, Lcom/oneplus/base/Settings;->release()V

    .line 2651
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2652
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2655
    :cond_1
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStopping()V

    .line 2638
    return-void
.end method

.method public final openCamera(Lcom/oneplus/camera/Camera;)Z
    .locals 1
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 2666
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/CameraThread;->openCamera(Lcom/oneplus/camera/Camera;I)Z

    move-result v0

    return v0
.end method

.method public final openCamera(Lcom/oneplus/camera/Camera;I)Z
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 2678
    if-nez p1, :cond_0

    .line 2680
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openCamera() - No camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    return v2

    .line 2683
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2684
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->openCameraInternal(Lcom/oneplus/camera/Camera;I)Z

    move-result v0

    return v0

    .line 2685
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$28;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/CameraThread$28;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;I)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2694
    const/4 v0, 0x1

    return v0

    .line 2696
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openCamera() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2697
    return v2
.end method

.method public final playCameraTimerSound(J)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2758
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 2760
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    .line 2761
    return-object v1

    .line 2763
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    if-nez v0, :cond_2

    .line 2764
    :cond_1
    return-object v1

    .line 2766
    :cond_2
    cmp-long v0, p1, v4

    if-nez v0, :cond_3

    .line 2767
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraTimer2SecSoundHandle:Lcom/oneplus/base/Handle;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0

    .line 2769
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraTimerSoundHandle:Lcom/oneplus/base/Handle;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public playDefaultShutterSound()V
    .locals 3

    .prologue
    .line 2779
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 2780
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2782
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "playDefaultShutterSound() - No shutter sound to play"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    return-void

    .line 2787
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 2776
    return-void
.end method

.method public removeComponent(Lcom/oneplus/base/component/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 3006
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 3007
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/component/ComponentManager;->removeComponent(Lcom/oneplus/base/component/Component;)V

    .line 3004
    return-void
.end method

.method public saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;
    .locals 8
    .param p1, "saveTask"    # Lcom/oneplus/camera/io/MediaSaveTask;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3087
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 3088
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    if-nez v3, :cond_0

    .line 3090
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "saveMedia() - No FileManager interface"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    return-object v5

    .line 3095
    :cond_0
    if-nez p1, :cond_1

    .line 3097
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "saveMedia() - No save task"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    return-object v5

    .line 3102
    :cond_1
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 3105
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3106
    .local v2, "sceneMode":I
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getSceneMode()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/oneplus/camera/io/MediaSaveTask;->setSceneMode(Ljava/lang/Integer;)V

    .line 3110
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->isHdrActive()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_3

    .line 3111
    const/16 v3, 0x12

    if-eq v2, v3, :cond_7

    .line 3112
    const/16 v3, 0x2711

    if-ne v2, v3, :cond_8

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_AUTO_HDR_STATUS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3111
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/oneplus/camera/io/MediaSaveTask;->setIsHdrActive(Ljava/lang/Boolean;)V

    .line 3115
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getLocation()Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_4

    .line 3117
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    .line 3118
    .local v1, "captureHandle":Lcom/oneplus/camera/CaptureHandle;
    if-eqz v1, :cond_4

    .line 3120
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 3133
    .end local v1    # "captureHandle":Lcom/oneplus/camera/CaptureHandle;
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getLensFacing()Lcom/oneplus/camera/Camera$LensFacing;

    move-result-object v3

    if-nez v3, :cond_5

    .line 3134
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {p1, v3}, Lcom/oneplus/camera/io/MediaSaveTask;->setLensFacing(Lcom/oneplus/camera/Camera$LensFacing;)V

    .line 3137
    :cond_5
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getStorageType()Lcom/oneplus/io/Storage$Type;

    move-result-object v3

    if-nez v3, :cond_6

    .line 3138
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v5, "StorageType"

    const-class v6, Lcom/oneplus/io/Storage$Type;

    sget-object v7, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-virtual {v3, v5, v6, v7}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/oneplus/io/Storage$Type;

    invoke-virtual {p1, v3}, Lcom/oneplus/camera/io/MediaSaveTask;->setStorageType(Lcom/oneplus/io/Storage$Type;)V

    .line 3141
    :cond_6
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    invoke-interface {v3, p1, v4}, Lcom/oneplus/camera/io/FileManager;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    return-object v3

    .line 3111
    :cond_7
    const/4 v3, 0x1

    goto :goto_0

    :cond_8
    move v3, v4

    .line 3112
    goto :goto_0

    .line 3123
    .restart local v1    # "captureHandle":Lcom/oneplus/camera/CaptureHandle;
    :pswitch_0
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    invoke-virtual {p1, v3}, Lcom/oneplus/camera/io/MediaSaveTask;->setLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 3126
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    invoke-virtual {p1, v3}, Lcom/oneplus/camera/io/MediaSaveTask;->setLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 3120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMediaType(Lcom/oneplus/camera/media/MediaType;)Z
    .locals 2
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 3152
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3153
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->setMediaTypeInternal(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v0

    return v0

    .line 3154
    :cond_0
    new-instance v0, Lcom/oneplus/camera/CameraThread$31;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$31;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/media/MediaType;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3163
    const/4 v0, 0x1

    return v0

    .line 3165
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaType() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3166
    const/4 v0, 0x0

    return v0
.end method

.method public final setPhotoCaptureHandler(Lcom/oneplus/camera/PhotoCaptureHandler;I)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "handler"    # Lcom/oneplus/camera/PhotoCaptureHandler;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 3273
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 3274
    if-nez p1, :cond_0

    .line 3276
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPhotoCaptureHandler() - No capture handler"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3277
    return-object v4

    .line 3279
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 3286
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPhotoCaptureHandler() - Cannot change capture handler when photo capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3287
    return-object v4

    .line 3291
    :pswitch_0
    new-instance v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/PhotoCaptureHandler;)V

    .line 3292
    .local v0, "handle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3293
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPhotoCaptureHandler() - Capture handler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3294
    return-object v0

    .line 3279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized setResourceIdTable(Lcom/oneplus/camera/CameraThread$ResourceIdTable;)V
    .locals 2
    .param p1, "table"    # Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 3305
    :try_start_0
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3306
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot change resource ID table after starting"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3309
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->clone()Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 3302
    return-void

    :cond_1
    move-object v0, v1

    .line 3309
    goto :goto_0
.end method

.method final setScreenSize(Lcom/oneplus/base/ScreenSize;)V
    .locals 3
    .param p1, "size"    # Lcom/oneplus/base/ScreenSize;

    .prologue
    .line 3319
    if-nez p1, :cond_0

    .line 3320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No screen size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3321
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3322
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3317
    :goto_0
    return-void

    .line 3325
    :cond_1
    monitor-enter p0

    .line 3327
    const/16 v0, 0x2710

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v0, v1, v2, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3328
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 3325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setVideoCaptureHandler(Lcom/oneplus/camera/VideoCaptureHandler;I)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "handler"    # Lcom/oneplus/camera/VideoCaptureHandler;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 3343
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 3344
    if-nez p1, :cond_0

    .line 3346
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setVideoCaptureHandler() - No capture handler"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3347
    return-object v4

    .line 3349
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 3356
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVideoCaptureHandler() - Cannot change capture handler when video capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3357
    return-object v4

    .line 3361
    :pswitch_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/VideoCaptureHandler;)V

    .line 3362
    .local v0, "handle":Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3363
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVideoCaptureHandler() - Capture handler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3364
    return-object v0

    .line 3349
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized start(Lcom/oneplus/camera/media/MediaType;)V
    .locals 1
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    monitor-enter p0

    .line 3371
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->start()V

    .line 3372
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3369
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final startCameraPreview(Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "previewSize"    # Landroid/util/Size;
    .param p3, "resolution"    # Lcom/oneplus/camera/media/Resolution;
    .param p4, "receiver"    # Ljava/lang/Object;

    .prologue
    .line 3385
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/camera/CameraThread;->startCameraPreview(Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public final startCameraPreview(Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)Z
    .locals 8
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "previewSize"    # Landroid/util/Size;
    .param p3, "resolution"    # Lcom/oneplus/camera/media/Resolution;
    .param p4, "receiver"    # Ljava/lang/Object;
    .param p5, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 3403
    if-nez p1, :cond_0

    .line 3405
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - No camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3406
    return v7

    .line 3408
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3409
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/camera/CameraThread;->startCameraPreviewInternal(Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)Z

    move-result v0

    return v0

    .line 3410
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$32;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/CameraThread$32;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3419
    const/4 v0, 0x1

    return v0

    .line 3421
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3422
    return v7
.end method

.method public final stopCameraPreview(Lcom/oneplus/camera/Camera;)Z
    .locals 1
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 3566
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/CameraThread;->stopCameraPreview(Lcom/oneplus/camera/Camera;I)Z

    move-result v0

    return v0
.end method

.method public final stopCameraPreview(Lcom/oneplus/camera/Camera;I)Z
    .locals 8
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3581
    if-nez p1, :cond_0

    .line 3583
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreview() - No camera"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3584
    return v6

    .line 3586
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3587
    invoke-direct {p0, p1, v3, p2}, Lcom/oneplus/camera/CameraThread;->stopCameraPreviewInternal(Lcom/oneplus/camera/Camera;[ZI)Z

    move-result v3

    return v3

    .line 3590
    :cond_1
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .line 3591
    .local v1, "isSync":Z
    :goto_0
    new-array v2, v7, [Z

    aput-boolean v6, v2, v6

    .line 3592
    .local v2, "result":[Z
    monitor-enter v2

    .line 3594
    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    if-eqz v1, :cond_2

    move-object v3, v2

    :cond_2
    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/16 v3, 0x2756

    const/4 v5, 0x0

    invoke-static {p0, v3, p2, v5, v4}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3596
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreview() - Fail to perform cross-thread operation"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 3597
    return v6

    .line 3590
    .end local v1    # "isSync":Z
    .end local v2    # "result":[Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isSync":Z
    goto :goto_0

    .line 3599
    .restart local v2    # "result":[Z
    :cond_4
    if-eqz v1, :cond_6

    .line 3603
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreview() - Wait for camera thread [start]"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3604
    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 3605
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreview() - Wait for camera thread [end]"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3606
    const/4 v3, 0x0

    aget-boolean v3, v2, v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    monitor-exit v2

    .line 3607
    return v7

    .line 3608
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreview() - Timeout"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 3609
    return v6

    .line 3612
    :catch_0
    move-exception v0

    .line 3613
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreview() - Interrupted"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 3614
    return v6

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_6
    monitor-exit v2

    .line 3617
    return v7

    .line 3592
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method
