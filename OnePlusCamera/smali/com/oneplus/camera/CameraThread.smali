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
        Lcom/oneplus/camera/CameraThread$RecordingTimeRatioHandle;,
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

.field public static final SETTINGS_KEY_VIDEO_FRAME_RATE:Ljava/lang/String; = "VideoFrameRate"

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

.field private m_MediaRecorderPauseTime:J

.field private m_MediaRecorderPauseTimeTotal:J

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

.field private final m_RecordingTimeRatioHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/CameraThread$RecordingTimeRatioHandle;",
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

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

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

    const/16 v2, 0x1d

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

    const/16 v2, 0x1b

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

    const/16 v2, 0x1c

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

    const/16 v2, 0x9

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

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

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

.method static synthetic -wrap10(Lcom/oneplus/camera/CameraThread;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "oldCameras"    # Ljava/util/List;
    .param p2, "cameras"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->onAvailableCamerasChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onCameraError(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onCameraOpenFailed(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Z)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "isReceived"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->onCameraPreviewReceivedStateChanged(Lcom/oneplus/camera/Camera;Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/OperationState;Lcom/oneplus/camera/OperationState;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "prevState"    # Lcom/oneplus/camera/OperationState;
    .param p3, "state"    # Lcom/oneplus/camera/OperationState;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->onCameraPreviewStateChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/OperationState;Lcom/oneplus/camera/OperationState;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onCaptureCompleted(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onCaptureFailed(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/FocusState;)V
    .locals 0
    .param p1, "focusState"    # Lcom/oneplus/camera/FocusState;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onFocusStateChanged(Lcom/oneplus/camera/FocusState;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/oneplus/camera/CameraThread;Landroid/media/MediaRecorder;II)V
    .locals 0
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->onMediaRecorderErrorReceived(Landroid/media/MediaRecorder;II)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/oneplus/camera/CameraThread;Landroid/media/MediaRecorder;II)V
    .locals 0
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->onMediaRecorderInfoReceived(Landroid/media/MediaRecorder;II)V

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
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onPictureReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onPostviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onRawPictureReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/oneplus/camera/CameraThread;Z)V
    .locals 0
    .param p1, "isFull"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onSavingQueueStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onShutter(Lcom/oneplus/camera/CaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/oneplus/camera/CameraThread;I)V
    .locals 0
    .param p1, "frameIndex"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->onShutter(I)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "key"    # Lcom/oneplus/base/EventKey;
    .param p2, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->removePhotoCaptureHandler(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->removeVideoCaptureHandler(Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->resetCapturingRawPhotoProperty(Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;I)Z
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->pauseVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$RecordingTimeRatioHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$RecordingTimeRatioHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->restoreRecordingTimeRatio(Lcom/oneplus/camera/CameraThread$RecordingTimeRatioHandle;)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->stopPhotoCapture(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;
    .param p3, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;
    .param p3, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->stopVideoCapture(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;I)Z
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->resumeVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/media/MediaType;)Z
    .locals 1
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->setMediaTypeInternal(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)Z
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

.method static synthetic -wrap7(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->closeCameraInternal(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeCamerasInternal()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->enableVideoSnapshot(Lcom/oneplus/base/Handle;)V

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

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    .line 89
    new-instance v1, Lcom/oneplus/camera/CameraDeviceManagerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/CameraDeviceManagerBuilder;-><init>()V

    aput-object v1, v0, v12

    .line 90
    new-instance v1, Lcom/oneplus/camera/ExposureControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/ExposureControllerBuilder;-><init>()V

    aput-object v1, v0, v4

    .line 91
    new-instance v1, Lcom/oneplus/camera/WhiteBalanceControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/WhiteBalanceControllerBuilder;-><init>()V

    aput-object v1, v0, v10

    .line 92
    new-instance v1, Lcom/oneplus/camera/io/FileManagerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/io/FileManagerBuilder;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 93
    new-instance v1, Lcom/oneplus/camera/FocusControllerBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/FocusControllerBuilder;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 88
    sput-object v0, Lcom/oneplus/camera/CameraThread;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    .line 163
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AllRequiredPermissionsGranted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    .line 168
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AvailableCameras"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    .line 172
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Camera"

    const-class v2, Lcom/oneplus/camera/Camera;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    .line 176
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CameraPreviewState"

    const-class v2, Lcom/oneplus/camera/OperationState;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v6, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    .line 180
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "CaptureRotation"

    const-class v8, Lcom/oneplus/base/Rotation;

    const-class v9, Lcom/oneplus/camera/CameraThread;

    sget-object v11, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    .line 184
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCameraPreviewReceived"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    .line 188
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCapturingRawPhoto"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    .line 192
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsVideoSnapshotEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 196
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "MediaResultInfo"

    const-class v8, Lcom/oneplus/camera/MediaResultInfo;

    const-class v9, Lcom/oneplus/camera/CameraThread;

    move v10, v12

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    .line 200
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MediaType"

    const-class v2, Lcom/oneplus/camera/media/MediaType;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 204
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PhotoCaptureCompleteReason"

    const-class v2, Lcom/oneplus/camera/CaptureCompleteReason;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    .line 208
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PhotoCaptureState"

    const-class v2, Lcom/oneplus/camera/PhotoCaptureState;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 212
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "RemainingPhotoCount"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 216
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "RemainingVideoDurationSeconds"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    .line 220
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ScreenSize"

    const-class v2, Lcom/oneplus/base/ScreenSize;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/base/ScreenSize;->EMPTY:Lcom/oneplus/base/ScreenSize;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 224
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "VideoCaptureCompleteReason"

    const-class v2, Lcom/oneplus/camera/CaptureCompleteReason;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    .line 228
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "VideoCaptureState"

    const-class v2, Lcom/oneplus/camera/VideoCaptureState;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    sget-object v5, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 234
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "BurstPhotoReceived"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 238
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CameraError"

    const-class v2, Lcom/oneplus/camera/CameraEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;

    .line 242
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CaptureStarted"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    .line 246
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CameraOpenFailed"

    const-class v2, Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    .line 250
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "DefaultPhotoCaptureCompleted"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    .line 254
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "DefaultVideoCaptureCompleted"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    .line 258
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaFileSaved"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    .line 262
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSaveCancelled"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    .line 266
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSaveFailed"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    .line 270
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSaved"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    .line 274
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "PostviewReceived"

    const-class v2, Lcom/oneplus/camera/CameraCaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 278
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "Shutter"

    const-class v2, Lcom/oneplus/camera/CaptureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    .line 282
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "UnprocessedPhotoReceived"

    const-class v2, Lcom/oneplus/camera/UnprocessedPictureEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_UNPROCESSED_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 786
    const-string/jumbo v0, "ShutterSound"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 787
    const-string/jumbo v0, "RawCapture"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 788
    const-string/jumbo v0, "IsMirrored"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/oneplus/base/BaseThread$ThreadStartCallback;
    .param p3, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 800
    const-string/jumbo v0, "Camera Thread"

    invoke-direct {p0, v0, p2, p3}, Lcom/oneplus/base/BaseThread;-><init>(Ljava/lang/String;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V

    .line 299
    new-instance v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/PhotoCaptureHandler;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultPhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    .line 301
    new-instance v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/VideoCaptureHandler;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultVideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RecordingTimeRatioHandles:Ljava/util/List;

    .line 339
    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 345
    sget-object v0, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PreAEState:Lcom/oneplus/camera/AutoExposureState;

    .line 349
    new-instance v0, Lcom/oneplus/camera/CameraThread$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$1;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CloseCamerasRunnable:Ljava/lang/Runnable;

    .line 360
    new-instance v0, Lcom/oneplus/camera/CameraThread$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$2;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewReceivedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 368
    new-instance v0, Lcom/oneplus/camera/CameraThread$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$3;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 376
    new-instance v0, Lcom/oneplus/camera/CameraThread$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$4;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 385
    new-instance v0, Lcom/oneplus/camera/CameraThread$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$5;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AECallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 396
    new-instance v0, Lcom/oneplus/camera/CameraThread$6;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$6;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraErrorHandler:Lcom/oneplus/base/EventHandler;

    .line 404
    new-instance v0, Lcom/oneplus/camera/CameraThread$7;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$7;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraOpenFailedHandler:Lcom/oneplus/base/EventHandler;

    .line 413
    new-instance v0, Lcom/oneplus/camera/CameraThread$8;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$8;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    .line 421
    new-instance v0, Lcom/oneplus/camera/CameraThread$9;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$9;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    .line 429
    new-instance v0, Lcom/oneplus/camera/CameraThread$10;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$10;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 437
    new-instance v0, Lcom/oneplus/camera/CameraThread$11;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$11;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PostviewReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 445
    new-instance v0, Lcom/oneplus/camera/CameraThread$12;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$12;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 453
    new-instance v0, Lcom/oneplus/camera/CameraThread$13;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$13;-><init>(Lcom/oneplus/camera/CameraThread;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    .line 801
    if-nez p1, :cond_0

    .line 802
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    .line 798
    return-void
.end method

.method private bindToHighComponents()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 868
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/io/FileManager;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/io/FileManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    .line 869
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    if-eqz v0, :cond_6

    .line 871
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->PROP_IS_SAVING_QUEUE_FULL:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$16;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$16;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 879
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$17;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$17;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 887
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$18;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$18;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 896
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$19;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$19;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 905
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v1, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$20;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$20;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 919
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/media/AudioManager;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    .line 920
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    if-eqz v0, :cond_8

    .line 922
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    if-eqz v0, :cond_5

    .line 924
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->photoShutterSound:I

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->photoShutterSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->cameraTimerSound:I

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->cameraTimerSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraTimerSoundHandle:Lcom/oneplus/base/Handle;

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSound:I

    if-eqz v0, :cond_7

    .line 929
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultBurstShutterSoundHandle:Lcom/oneplus/base/Handle;

    .line 932
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->cameraTimer2SecSound:I

    if-eqz v0, :cond_2

    .line 933
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->cameraTimer2SecSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraTimer2SecSoundHandle:Lcom/oneplus/base/Handle;

    .line 934
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSoundEnd:I

    if-eqz v0, :cond_3

    .line 935
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSoundEnd:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultBurstShutterSoundEndHandle:Lcom/oneplus/base/Handle;

    .line 936
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStartSound:I

    if-eqz v0, :cond_4

    .line 937
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStartSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoStartSoundHandle:Lcom/oneplus/base/Handle;

    .line 938
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStopSound:I

    if-eqz v0, :cond_5

    .line 939
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ResourceIdTable:Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStopSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoStopSoundHandle:Lcom/oneplus/base/Handle;

    .line 865
    :cond_5
    :goto_2
    return-void

    .line 916
    :cond_6
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToInitialComponents() - No FileManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 931
    :cond_7
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultBurstShutterSoundHandle:Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 944
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

    .line 842
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/CameraDeviceManager;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraDeviceManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraDeviceManager:Lcom/oneplus/camera/CameraDeviceManager;

    .line 843
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraDeviceManager:Lcom/oneplus/camera/CameraDeviceManager;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraDeviceManager:Lcom/oneplus/camera/CameraDeviceManager;

    sget-object v1, Lcom/oneplus/camera/CameraDeviceManager;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$15;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$15;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/CameraDeviceManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 853
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraDeviceManager:Lcom/oneplus/camera/CameraDeviceManager;

    sget-object v2, Lcom/oneplus/camera/CameraDeviceManager;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/CameraDeviceManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/camera/CameraThread;->onAvailableCamerasChanged(Ljava/util/List;Ljava/util/List;)V

    .line 861
    const/4 v0, 0x1

    return v0

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToInitialComponents() - No CameraDeviceManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    return v3
.end method

.method private bindToNormalComponents()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 952
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/io/StorageManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    .line 953
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-nez v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToNormalComponents - No StorageManager, try later."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x32

    const/16 v1, 0x2760

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/FocusController;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FocusController;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    .line 960
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v0, :cond_2

    .line 962
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v1, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraThread$21;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraThread$21;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 975
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/oneplus/camera/location/LocationManager;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/location/LocationManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    .line 976
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    if-nez v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindToNormalComponents() - No LocationManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :cond_1
    return-void

    .line 972
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

    .line 1244
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 1245
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1246
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1247
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1248
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1251
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1254
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PreparedPhotoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 1255
    iget v1, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    invoke-interface {v0, v1, v3}, Lcom/oneplus/camera/Camera;->capture(II)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 1256
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1258
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhotoInternal() - Fail to capture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1260
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1261
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1262
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1263
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1264
    return v3

    .line 1268
    :cond_0
    iget v1, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    if-ne v1, v4, :cond_1

    .line 1269
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    if-eq v1, v2, :cond_1

    .line 1270
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    if-eq v1, v2, :cond_1

    .line 1271
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/AutoExposureState;->SEARCHING:Lcom/oneplus/camera/AutoExposureState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PreAEState:Lcom/oneplus/camera/AutoExposureState;

    sget-object v2, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    if-eq v1, v2, :cond_1

    .line 1277
    :cond_1
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1278
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1281
    :cond_2
    return v4
.end method

.method private capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Z)Z
    .locals 20
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;
    .param p2, "isFocusFinished"    # Z

    .prologue
    .line 1053
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .line 1054
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_LastCapturedJpeg:[B

    .line 1055
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oneplus/camera/CameraThread;->m_IsPictureReceived:Z

    .line 1058
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v13

    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v12}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v12

    aget v12, v13, v12

    packed-switch v12, :pswitch_data_0

    .line 1066
    :cond_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "capturePhotoInternal() - Capture state is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v13, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1068
    const/4 v12, 0x0

    return v12

    .line 1063
    :pswitch_1
    if-eqz p2, :cond_0

    .line 1072
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    sget-object v13, Lcom/oneplus/camera/io/FileManager;->PROP_IS_SAVING_QUEUE_FULL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v12, v13}, Lcom/oneplus/camera/io/FileManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1074
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "capturePhotoInternal() - Media saving queue is full"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v13, Lcom/oneplus/camera/CaptureCompleteReason;->SAVING_QUEUE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1076
    const/4 v12, 0x0

    return v12

    .line 1079
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "capturePhotoInternal() - Handle : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", focus finished : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    .line 1083
    .local v2, "camera":Lcom/oneplus/camera/Camera;
    if-nez v2, :cond_2

    .line 1085
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "capturePhotoInternal() - No primary camera"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v13, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1087
    const/4 v12, 0x0

    return v12

    .line 1091
    :cond_2
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v12, v13, :cond_3

    .line 1093
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v13

    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v12}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v12

    aget v12, v13, v12

    packed-switch v12, :pswitch_data_1

    .line 1105
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "capturePhotoInternal() - Video recording not ready , cancel snaphot."

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v13, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1107
    const/4 v12, 0x0

    return v12

    .line 1100
    :pswitch_4
    const/4 v12, 0x1

    move-object/from16 v0, p1

    iput-boolean v12, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->isVideoSnapshot:Z

    .line 1113
    :cond_3
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v13, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1116
    if-nez p2, :cond_5

    .line 1118
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1119
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gtz v12, :cond_5

    .line 1121
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "capturePhotoInternal() - No enough storage space"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v13, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1123
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v12, v13, :cond_4

    .line 1124
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v13, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1127
    :goto_0
    const/4 v12, 0x0

    return v12

    .line 1126
    :cond_4
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v13, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1132
    :cond_5
    if-nez p2, :cond_7

    .line 1133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v12, :cond_7

    .line 1134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v13, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v12, v13}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-eq v12, v13, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v13, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v12, v13}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    if-ne v12, v13, :cond_7

    .line 1136
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "capturePhotoInternal() - Waiting for focus complete"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .line 1138
    const/4 v12, 0x1

    return v12

    .line 1142
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v12, :cond_9

    .line 1143
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v13, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v12, v13}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    if-ne v12, v13, :cond_9

    .line 1144
    sget-object v12, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v12}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    if-eq v12, v13, :cond_8

    move-object/from16 v0, p1

    iget v12, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->flags:I

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_9

    .line 1145
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v12}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1159
    :cond_9
    const/4 v6, 0x0

    .line 1163
    .local v6, "handlerHandle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureRealTime:J

    .line 1166
    sget-object v13, Lcom/oneplus/camera/Camera;->PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/base/Rotation;

    invoke-interface {v2, v13, v12}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    if-eqz v12, :cond_b

    .line 1169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    sget-object v13, Lcom/oneplus/camera/location/LocationManager;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v12, v13}, Lcom/oneplus/camera/location/LocationManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/Location;

    .line 1170
    .local v9, "location":Landroid/location/Location;
    if-eqz v9, :cond_a

    .line 1173
    new-instance v10, Landroid/location/Location;

    invoke-direct {v10, v9}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 1174
    .end local v9    # "location":Landroid/location/Location;
    .local v10, "location":Landroid/location/Location;
    invoke-virtual {v10}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureRealTime:J

    invoke-virtual {v10}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v16

    const-wide/32 v18, 0xf4240

    div-long v16, v16, v18

    sub-long v14, v14, v16

    add-long v4, v12, v14

    .line 1175
    .local v4, "fixedTimeMillis":J
    invoke-virtual {v10, v4, v5}, Landroid/location/Location;->setTime(J)V

    .line 1176
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureRealTime:J

    const-wide/32 v14, 0xf4240

    mul-long/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "capturePhotoInternal() - Fixed location time: "

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v9, v10

    .line 1180
    .end local v4    # "fixedTimeMillis":J
    .end local v10    # "location":Landroid/location/Location;
    .restart local v9    # "location":Landroid/location/Location;
    :cond_a
    sget-object v12, Lcom/oneplus/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v12, v9}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1182
    .end local v9    # "location":Landroid/location/Location;
    :cond_b
    sget-object v12, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v12}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v12, v13, :cond_c

    .line 1184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v13, "IsMirrored"

    invoke-virtual {v12, v13}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 1185
    .local v8, "isMirrored":Z
    sget-object v12, Lcom/oneplus/camera/Camera;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v2, v12, v13}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1186
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->setIsMirrored(Z)V

    .line 1190
    .end local v8    # "isMirrored":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v7, v12, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_d

    .line 1192
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    move-object v6, v0

    .line 1193
    .local v6, "handlerHandle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    iget-object v12, v6, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    move-object/from16 v0, p1

    invoke-interface {v12, v2, v0, v13}, Lcom/oneplus/camera/PhotoCaptureHandler;->capture(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/CaptureHandle;I)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1195
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "capturePhotoInternal() - Capture process is handled by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget-object v12, v6, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    .line 1197
    iget-object v12, v6, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    sget-object v13, Lcom/oneplus/camera/PhotoCaptureHandler;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/CameraThread;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v12, v13, v14}, Lcom/oneplus/camera/PhotoCaptureHandler;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1202
    .end local v6    # "handlerHandle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    :cond_d
    if-nez v6, :cond_12

    .line 1204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "capturePhotoInternal() - Use default capture process"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/camera/CameraThread;->capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 1206
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Fail to use default photo capture process."

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    .end local v7    # "i":I
    :catch_0
    move-exception v3

    .line 1212
    .local v3, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "capturePhotoInternal() - Fail to capture"

    invoke-static {v12, v13, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1213
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v13, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1214
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v12, v13, :cond_15

    .line 1215
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v13, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1218
    :goto_2
    const/4 v12, 0x0

    return v12

    .line 1147
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "capturePhotoInternal() - Lock focus"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v13, Lcom/oneplus/camera/FocusController;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v12, v13}, Lcom/oneplus/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v11, 0x0

    .line 1149
    .local v11, "waitForLock":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_FocusController:Lcom/oneplus/camera/FocusController;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/oneplus/camera/FocusController;->lockFocus(I)Lcom/oneplus/base/Handle;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    .line 1150
    if-eqz v11, :cond_9

    .line 1152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "capturePhotoInternal() - Waiting for focus lock"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .line 1154
    const/4 v12, 0x1

    return v12

    .line 1148
    .end local v11    # "waitForLock":Z
    :cond_f
    const/4 v11, 0x1

    .restart local v11    # "waitForLock":Z
    goto :goto_3

    .line 1200
    .end local v11    # "waitForLock":Z
    .restart local v6    # "handlerHandle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    .restart local v7    # "i":I
    :cond_10
    const/4 v6, 0x0

    .line 1190
    .local v6, "handlerHandle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 1207
    .end local v6    # "handlerHandle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/CameraThread;->m_DefaultPhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1222
    :cond_12
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    .line 1223
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .line 1224
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oneplus/camera/CameraThread;->m_IsDefaultShutterReceived:Z

    .line 1225
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v13, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1226
    sget-object v12, Lcom/oneplus/camera/CameraThread;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v13, Lcom/oneplus/camera/CaptureEventArgs;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v13, v14}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1227
    sget-object v12, Lcom/oneplus/camera/Camera;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v12}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 1228
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1230
    :cond_13
    move-object/from16 v0, p1

    iget v12, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_14

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oneplus/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    if-eqz v12, :cond_16

    .line 1236
    :cond_14
    :goto_4
    const/4 v12, 0x1

    return v12

    .line 1217
    .end local v7    # "i":I
    .restart local v3    # "ex":Ljava/lang/Throwable;
    :cond_15
    sget-object v12, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v13, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1230
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v7    # "i":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    if-eqz v12, :cond_14

    .line 1232
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oneplus/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    .line 1233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    invoke-interface {v12}, Lcom/oneplus/camera/io/FileManager;->pauseInsert()V

    goto :goto_4

    .line 1058
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1093
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private captureVideoInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Z)Z
    .locals 20
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "isShutterSoundPlayed"    # Z

    .prologue
    .line 1340
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v2}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 1348
    :cond_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "captureVideoInternal() - Video capture state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const/4 v2, 0x0

    return v2

    .line 1345
    :pswitch_1
    if-eqz p2, :cond_0

    .line 1351
    :pswitch_2
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/camera/Camera;

    .line 1352
    .local v12, "camera":Lcom/oneplus/camera/Camera;
    if-nez v12, :cond_1

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "captureVideoInternal() - No primary camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const/4 v2, 0x0

    return v2

    .line 1357
    :cond_1
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->params:Lcom/oneplus/camera/CameraThread$VideoParams;

    .line 1359
    .local v15, "params":Lcom/oneplus/camera/CameraThread$VideoParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "captureVideoInternal() - Handle : "

    const-string/jumbo v5, ", resolution : "

    iget-object v6, v15, Lcom/oneplus/camera/CameraThread$VideoParams;->resolution:Lcom/oneplus/camera/media/Resolution;

    const-string/jumbo v7, ", shutter sound played : "

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1362
    if-nez p2, :cond_3

    .line 1365
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1366
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 1368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "captureVideoInternal() - No enough storage space"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1370
    const/4 v2, 0x0

    return v2

    .line 1374
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->prepareVideoFilePath()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1375
    const/4 v2, 0x0

    return v2

    .line 1379
    :cond_3
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1382
    const-wide/16 v18, 0x0

    .line 1383
    .local v18, "shutterSoundTime":J
    if-nez p2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_VideoStartSoundHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_VideoStartSoundHandle:Lcom/oneplus/base/Handle;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 1386
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 1390
    :cond_4
    if-nez p2, :cond_7

    .line 1393
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, v15, Lcom/oneplus/camera/CameraThread$VideoParams;->resolution:Lcom/oneplus/camera/media/Resolution;

    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->toSize()Landroid/util/Size;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1396
    new-instance v14, Landroid/media/MediaRecorder;

    invoke-direct {v14}, Landroid/media/MediaRecorder;-><init>()V

    .line 1399
    .local v14, "mediaRecorder":Landroid/media/MediaRecorder;
    const/4 v2, 0x0

    invoke-interface {v12, v14, v2}, Lcom/oneplus/camera/Camera;->bindMediaRecorder(Landroid/media/MediaRecorder;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1401
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1402
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1403
    const/4 v2, 0x0

    return v2

    .line 1407
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v15}, Lcom/oneplus/camera/CameraThread;->prepareMediaRecorder(Lcom/oneplus/camera/Camera;Landroid/media/MediaRecorder;Lcom/oneplus/camera/CameraThread$VideoParams;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "captureVideoInternal() - Fail to prepare media recorder"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    :try_start_0
    invoke-virtual {v14}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1420
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 1422
    :goto_0
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1423
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1424
    const/4 v2, 0x0

    return v2

    .line 1415
    :catch_0
    move-exception v13

    .line 1416
    .local v13, "e":Ljava/lang/Throwable;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "captureVideoInternal() - Error when release"

    invoke-static {v2, v3, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1420
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    goto :goto_0

    .line 1419
    .end local v13    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 1420
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 1419
    throw v2

    .line 1426
    :cond_6
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 1429
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v2, v18

    const-wide/16 v4, 0x12c

    sub-long v8, v4, v2

    .line 1430
    .local v8, "delay":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_7

    .line 1432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "captureVideoInternal() - Start video recording "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms later"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const/16 v4, 0x271a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    .line 1434
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    .line 1435
    const/4 v2, 0x1

    return v2

    .line 1440
    .end local v8    # "delay":J
    .end local v14    # "mediaRecorder":Landroid/media/MediaRecorder;
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->captureRealTime:J

    .line 1443
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Lcom/oneplus/camera/Camera;->startVideoRecording(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1446
    sget-object v16, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 1447
    .local v16, "reason":Lcom/oneplus/camera/CaptureCompleteReason;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    .line 1448
    .local v10, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v10}, Landroid/media/AudioManager;->getMode()I

    move-result v11

    .line 1449
    .local v11, "audioMode":I
    packed-switch v11, :pswitch_data_1

    .line 1459
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "captureVideoInternal() - Fail to start, reason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", audio mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 1463
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 1464
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    .line 1465
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 1466
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1467
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1468
    const/4 v2, 0x0

    return v2

    .line 1452
    :pswitch_3
    sget-object v16, Lcom/oneplus/camera/CaptureCompleteReason;->ERROR_IN_CALL:Lcom/oneplus/camera/CaptureCompleteReason;

    goto :goto_1

    .line 1455
    :pswitch_4
    sget-object v16, Lcom/oneplus/camera/CaptureCompleteReason;->ERROR_IN_COMMUNICATION:Lcom/oneplus/camera/CaptureCompleteReason;

    goto :goto_1

    .line 1472
    .end local v10    # "audioManager":Landroid/media/AudioManager;
    .end local v11    # "audioMode":I
    .end local v16    # "reason":Lcom/oneplus/camera/CaptureCompleteReason;
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderStartTime:J

    .line 1473
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderPauseTimeTotal:J

    .line 1476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    if-nez v2, :cond_9

    .line 1477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_DefaultVideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    .line 1478
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    .line 1479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    iget-object v3, v3, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/VideoCaptureHandler;

    iput-object v3, v2, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->captureHandler:Lcom/oneplus/camera/VideoCaptureHandler;

    .line 1480
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1481
    sget-object v2, Lcom/oneplus/camera/CameraThread;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/CaptureEventArgs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    invoke-direct {v3, v4}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1484
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->checkVideoRecordingLimitation()V

    .line 1487
    const/4 v2, 0x1

    return v2

    .line 1340
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1449
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private checkRemainingMediaCountInternal()V
    .locals 4

    .prologue
    .line 1510
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2724

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1513
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->getFreeSpace()J

    move-result-wide v0

    .line 1516
    .local v0, "freeSpace":J
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->checkRemainingPhotoCount(J)V

    .line 1517
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->checkRemainingVideoDuration(J)V

    .line 1507
    return-void
.end method

.method private checkRemainingPhotoCount(J)V
    .locals 9
    .param p1, "freeSpace"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 1525
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/camera/CameraThread;->getFreeSpace(JLcom/oneplus/camera/media/MediaType;)J

    move-result-wide p1

    .line 1526
    cmp-long v1, p1, v6

    if-gtz v1, :cond_0

    .line 1528
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkRemainingPhotoCount() - Storage is full"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1530
    return-void

    .line 1534
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 1535
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 1537
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkRemainingPhotoCount() - No primary camera"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1539
    return-void

    .line 1543
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

    .line 1544
    .local v2, "fileSize":J
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    div-long v4, p1, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1522
    return-void
.end method

.method private checkRemainingVideoDuration(J)V
    .locals 11
    .param p1, "freeSpace"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 1552
    sget-object v5, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, p1, p2, v5}, Lcom/oneplus/camera/CameraThread;->getFreeSpace(JLcom/oneplus/camera/media/MediaType;)J

    move-result-wide p1

    .line 1553
    cmp-long v5, p1, v8

    if-gtz v5, :cond_0

    .line 1555
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkRemainingVideoDuration() - Storage is full"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1557
    return-void

    .line 1561
    :cond_0
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 1562
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 1564
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkRemainingVideoDuration() - No primary camera"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1566
    return-void

    .line 1570
    :cond_1
    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v5}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 1571
    .local v4, "videoSize":Landroid/util/Size;
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/oneplus/camera/CameraThread;->createCamcorderProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 1572
    .local v1, "profile":Landroid/media/CamcorderProfile;
    if-nez v1, :cond_2

    .line 1574
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkRemainingVideoDuration() - Cannot create camcorder profile"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1576
    return-void

    .line 1580
    :cond_2
    const-wide/16 v6, 0x1

    invoke-static {v1, v6, v7}, Lcom/oneplus/camera/media/FileSizeEstimator;->estimateVideoFileSize(Landroid/media/CamcorderProfile;J)J

    move-result-wide v2

    .line 1581
    .local v2, "dataSize":J
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    div-long v6, p1, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1549
    return-void
.end method

.method private checkVideoRecordingLimitation()V
    .locals 9

    .prologue
    const/16 v8, 0x272e

    .line 1589
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v2, v3, :cond_0

    .line 1590
    return-void

    .line 1591
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1592
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1593
    .local v0, "duration":J
    const-wide/16 v2, 0xf

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 1594
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x5

    div-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1586
    :goto_0
    return-void

    .line 1595
    :cond_1
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 1596
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1597
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 1598
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1601
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "checkVideoRecordingLimitation() - Storage limitation reached"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
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
    .line 1640
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCameraInternal() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCameraInternal() - Camera : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1642
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->close(I)V

    .line 1643
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCameraInternal() - End"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    return-void
.end method

.method private closeCamerasInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1662
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "closeCamerasInternal() - Start"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1664
    .local v0, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1665
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera;

    invoke-interface {v2, v4}, Lcom/oneplus/camera/Camera;->close(I)V

    .line 1664
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1666
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "closeCamerasInternal() - End"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1672
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 1674
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    :goto_0
    iput-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1671
    :cond_0
    return-void

    .line 1675
    :catch_0
    move-exception v0

    .line 1676
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "closeVideoFileDescriptor() - Error, "

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;Z)Z
    .locals 12
    .param p1, "captureHandlerHandle"    # Lcom/oneplus/base/Handle;
    .param p2, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;
    .param p4, "checkHandles"    # Z

    .prologue
    .line 1731
    if-nez p2, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCaptureInternal() - Capture handle is null, skip"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    const/4 v0, 0x0

    return v0

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "completeCaptureInternal() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1879
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    if-eqz v0, :cond_1

    .line 1881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    .line 1882
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    invoke-interface {v0}, Lcom/oneplus/camera/io/FileManager;->resumeInsert()V

    .line 1886
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1745
    :pswitch_0
    if-eqz p4, :cond_3

    .line 1747
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    if-eq v0, p1, :cond_2

    .line 1749
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "completeCaptureInternal() - Invalid capture handler handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    const/4 v0, 0x0

    return v0

    .line 1752
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    if-eq p2, v0, :cond_3

    .line 1754
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "completeCaptureInternal() - Invalid capture handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const/4 v0, 0x0

    return v0

    .line 1760
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

    .line 1762
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_BurstShutterPlaySoundHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1763
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultBurstShutterSoundEndHandle:Lcom/oneplus/base/Handle;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 1766
    :cond_4
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1769
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget-object v0, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    if-nez v0, :cond_5

    .line 1770
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v1, v2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1773
    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    iget-object v0, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    if-eqz v0, :cond_6

    .line 1774
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    iget-object v0, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureHandler;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/PhotoCaptureHandler;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1777
    :cond_6
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_7

    .line 1779
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCaptureInternal() - Complete video snapshot"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_7

    .line 1781
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_LastVideoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 1783
    :cond_7
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_9

    .line 1784
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1789
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    .line 1791
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1793
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_2
    if-ltz v8, :cond_a

    .line 1795
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;

    .line 1796
    .local v10, "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    iget-object v0, v10, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_8

    .line 1798
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "completeCaptureInternal() - m_PendingCameraPreviewStopRequests is not empty, Continue stopping preview for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1800
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    iget-object v1, v10, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->result:[Z

    iget v2, v10, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->flags:I

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->stopCameraPreviewInternal(Lcom/oneplus/camera/Camera;[ZI)Z

    .line 1793
    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 1786
    .end local v8    # "i":I
    .end local v10    # "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    :cond_9
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1806
    :cond_a
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    .line 1808
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCaptureInternal() - Need review, stop preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/Camera;

    .line 1810
    .local v7, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v7, :cond_b

    .line 1811
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Lcom/oneplus/camera/Camera;->stopPreview(I)V

    .line 1815
    .end local v7    # "camera":Lcom/oneplus/camera/Camera;
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .line 1816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    goto/16 :goto_0

    .line 1822
    :pswitch_1
    if-eqz p4, :cond_d

    .line 1824
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    if-eq v0, p1, :cond_c

    .line 1826
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "completeCaptureInternal() - Invalid capture handler handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const/4 v0, 0x0

    return v0

    .line 1829
    :cond_c
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    if-eq p2, v0, :cond_d

    .line 1831
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "completeCaptureInternal() - Invalid capture handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    const/4 v0, 0x0

    return v0

    .line 1838
    :cond_d
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1841
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    invoke-direct {v1, p2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1844
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_e

    .line 1847
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/MediaResultInfo;

    .line 1848
    .local v9, "info":Lcom/oneplus/camera/MediaResultInfo;
    sget-object v11, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v0, Lcom/oneplus/camera/media/MediaEventArgs;

    iget-object v5, v9, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/media/MediaEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v11, v0}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1850
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 1854
    .end local v9    # "info":Lcom/oneplus/camera/MediaResultInfo;
    :cond_e
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_11

    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_11

    .line 1855
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1860
    :goto_3
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_10

    .line 1862
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCaptureInternal() - Need review, stop preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/Camera;

    .line 1865
    .restart local v7    # "camera":Lcom/oneplus/camera/Camera;
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    if-eq v0, v1, :cond_f

    .line 1866
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-interface {v7, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1867
    :cond_f
    if-eqz v7, :cond_10

    .line 1868
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Lcom/oneplus/camera/Camera;->stopPreview(I)V

    .line 1872
    .end local v7    # "camera":Lcom/oneplus/camera/Camera;
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    .line 1873
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    goto/16 :goto_0

    .line 1857
    :cond_11
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_3

    .line 1740
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
    .line 1893
    sparse-switch p2, :sswitch_data_0

    .line 1915
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

    .line 1916
    const/4 v0, 0x0

    return-object v0

    .line 1896
    :sswitch_0
    const/16 v0, 0xf00

    if-ne p1, v0, :cond_0

    .line 1897
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0

    .line 1901
    :sswitch_1
    const/16 v0, 0x780

    if-ne p1, v0, :cond_0

    .line 1902
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0

    .line 1906
    :sswitch_2
    const/16 v0, 0x500

    if-ne p1, v0, :cond_0

    .line 1907
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0

    .line 1911
    :sswitch_3
    const/16 v0, 0xb0

    if-ne p1, v0, :cond_0

    .line 1912
    const/16 v0, 0x3ea

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0

    .line 1893
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
    .line 1952
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 1953
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 1953
    if-eqz v0, :cond_0

    .line 1955
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 1957
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1950
    :cond_0
    return-void
.end method

.method private getFreeSpace()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 2008
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    iget-object v6, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    sget-object v7, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-static {v5, v6, v7}, Lcom/oneplus/io/StorageUtils;->findStorageFromSettings(Lcom/oneplus/io/StorageManager;Lcom/oneplus/base/Settings;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v4

    .line 2009
    .local v4, "storage":Lcom/oneplus/io/Storage;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/oneplus/io/Storage;->getDirectoryPath()Ljava/lang/String;

    move-result-object v1

    .line 2010
    .local v1, "path":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    if-eqz v5, :cond_1

    .line 2011
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    invoke-virtual {v5, v1}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 2014
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

    .line 2015
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

    .line 2009
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "savingQueueSize":J
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2013
    :cond_1
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/oneplus/camera/CameraThread;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2018
    .end local v1    # "path":Ljava/lang/String;
    .end local v4    # "storage":Lcom/oneplus/io/Storage;
    :catch_0
    move-exception v0

    .line 2019
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getFreeSpace() - Fail to get free storage space"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2020
    return-wide v10

    .line 2014
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
    .line 2029
    if-nez p3, :cond_0

    .line 2030
    return-wide p1

    .line 2031
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2038
    return-wide p1

    .line 2034
    :pswitch_0
    const-wide/32 v0, 0x6400000

    sub-long v0, p1, v0

    return-wide v0

    .line 2036
    :pswitch_1
    const-wide/32 v0, 0x7800000

    sub-long v0, p1, v0

    return-wide v0

    .line 2031
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
    .line 2025
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
    .line 2146
    .local p1, "oldCameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    .local p2, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2148
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 2149
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2151
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewReceivedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2152
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2153
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_AECallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2154
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_ERROR:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraErrorHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2155
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraOpenFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2156
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PostviewReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2146
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2159
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 2161
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 2162
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2164
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewReceivedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2165
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2166
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_AECallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2167
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_ERROR:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraErrorHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2168
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_CameraOpenFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2169
    sget-object v2, Lcom/oneplus/camera/Camera;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PostviewReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2159
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2174
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_3
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, p2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2143
    return-void
.end method

.method private onCameraError(Lcom/oneplus/camera/Camera;)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 2181
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2183
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

    .line 2184
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CameraEventArgs;

    invoke-direct {v1, p1}, Lcom/oneplus/camera/CameraEventArgs;-><init>(Lcom/oneplus/camera/Camera;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2179
    :cond_0
    return-void
.end method

.method private onCameraOpenFailed(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    .prologue
    .line 2191
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

    .line 2192
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2189
    return-void
.end method

.method private onCameraPreviewReceivedStateChanged(Lcom/oneplus/camera/Camera;Z)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "isReceived"    # Z

    .prologue
    .line 2199
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2200
    return-void

    .line 2203
    :cond_0
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2196
    return-void
.end method

.method private onCameraPreviewStateChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/OperationState;Lcom/oneplus/camera/OperationState;)V
    .locals 10
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "prevState"    # Lcom/oneplus/camera/OperationState;
    .param p3, "state"    # Lcom/oneplus/camera/OperationState;

    .prologue
    const/4 v9, 0x0

    .line 2211
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne p3, v0, :cond_2

    .line 2213
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 2215
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;

    .line 2216
    .local v8, "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    iget-object v0, v8, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->camera:Lcom/oneplus/camera/Camera;

    if-ne v0, p1, :cond_0

    .line 2218
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

    .line 2219
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2220
    iget-object v0, v8, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->result:[Z

    iget v1, v8, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->flags:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/camera/CameraThread;->stopCameraPreviewInternal(Lcom/oneplus/camera/Camera;[ZI)Z

    .line 2213
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2223
    .end local v8    # "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    :cond_1
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p3, :cond_2

    .line 2224
    return-void

    .line 2228
    .end local v6    # "i":I
    :cond_2
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne p3, v0, :cond_5

    .line 2230
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .restart local v6    # "i":I
    :goto_1
    if-ltz v6, :cond_4

    .line 2232
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;

    .line 2233
    .local v7, "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    iget-object v0, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->camera:Lcom/oneplus/camera/Camera;

    if-ne v0, p1, :cond_3

    .line 2235
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

    .line 2236
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2237
    iget-object v2, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->previewSize:Landroid/util/Size;

    iget-object v3, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->resolution:Lcom/oneplus/camera/media/Resolution;

    iget-object v4, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->previewReceiver:Ljava/lang/Object;

    iget v5, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->flags:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/CameraThread;->startCameraPreviewInternal(Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)Z

    .line 2230
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2240
    .end local v7    # "request":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    :cond_4
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p3, :cond_5

    .line 2241
    return-void

    .line 2245
    .end local v6    # "i":I
    :cond_5
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_6

    .line 2246
    return-void

    .line 2249
    :cond_6
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p3}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2252
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_8

    .line 2254
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq p3, v0, :cond_7

    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne p3, v0, :cond_8

    .line 2256
    :cond_7
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraPreviewStateChanged() - Release media recorder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 2258
    iput-object v9, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 2263
    :cond_8
    iget v0, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewStartFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_9

    .line 2264
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 2267
    :cond_9
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne p3, v0, :cond_c

    .line 2270
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_a

    .line 2271
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2272
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

    .line 2273
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2208
    :cond_b
    :goto_2
    return-void

    .line 2278
    :cond_c
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_d

    .line 2279
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2280
    :cond_d
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_b

    .line 2281
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

    .line 2290
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2291
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2292
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2293
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2294
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2297
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_BurstCaptureSoundStreamHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2300
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x274c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2303
    iput-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 2305
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraThread;->m_IsPictureReceived:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2308
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2309
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2312
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultPhotoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    .line 2313
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    .line 2314
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PreparedPhotoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PreparedPhotoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 2312
    :goto_1
    invoke-virtual {p0, v1, v2, v0}, Lcom/oneplus/camera/CameraThread;->completeCapture(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)Z

    .line 2287
    return-void

    .line 2306
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2314
    :cond_2
    sget-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    goto :goto_1
.end method

.method private onCaptureFailed(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 2320
    return-void
.end method

.method private onFocusStateChanged(Lcom/oneplus/camera/FocusState;)V
    .locals 2
    .param p1, "focusState"    # Lcom/oneplus/camera/FocusState;

    .prologue
    .line 2330
    sget-object v0, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-eq p1, v0, :cond_0

    .line 2331
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_0

    .line 2332
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    .line 2330
    if-eqz v0, :cond_0

    .line 2334
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFocusStateChanged() - Continue capturing photo"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Z)Z

    .line 2327
    :cond_0
    return-void
.end method

.method private onMediaRecorderErrorReceived(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eq v0, p1, :cond_0

    .line 2346
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaRecorderErrorReceived() - Unknown media recorder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2347
    return-void

    .line 2351
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 2360
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

    .line 2365
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 2341
    return-void

    .line 2354
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

    .line 2357
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

    .line 2351
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

    .line 2373
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eq v0, p1, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaRecorderInfoReceived() - Unknown media recorder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    return-void

    .line 2380
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2394
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

    .line 2395
    return-void

    .line 2383
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaRecorderInfoReceived() - Max duration reached"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_DURATION_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 2370
    :goto_0
    return-void

    .line 2387
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaRecorderInfoReceived() - Max file size reached"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraThread;->m_IsMaxFileSizeDesignated:Z

    if-eqz v0, :cond_1

    .line 2389
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_FILE_SIZE_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    goto :goto_0

    .line 2391
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    goto :goto_0

    .line 2380
    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onPictureReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 20
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 2403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - Index : "

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ", picture id: "

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2406
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/camera/CameraThread;->m_IsPictureReceived:Z

    .line 2409
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v2

    const/16 v3, 0x100

    if-ne v2, v3, :cond_4

    .line 2411
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v17

    .line 2412
    .local v17, "planes":[Lcom/oneplus/camera/media/ImagePlane;
    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 2414
    const/4 v2, 0x0

    aget-object v2, v17, v2

    invoke-virtual {v2}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_LastCapturedJpeg:[B

    .line 2417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_LastCapturedJpeg:[B

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/oneplus/base/Device;->isOnePlus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2419
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_LastCapturedJpeg:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->readPhotoMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/PhotoMetadata;

    move-result-object v16

    .line 2420
    .local v16, "metaData":Lcom/oneplus/media/PhotoMetadata;
    const-string/jumbo v13, ""

    .line 2421
    .local v13, "halPictureId":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/media/PhotoMetadata;->PROP_MAKER_NOTE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 2422
    .local v15, "makerNote":[B
    if-eqz v15, :cond_3

    .line 2425
    const/4 v3, 0x0

    const/4 v11, 0x0

    .local v11, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :try_start_0
    new-instance v12, Lcom/oneplus/media/IfdEntryEnumerator;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v4, 0x0

    invoke-direct {v12, v2, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2427
    .end local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v12, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v12}, Lcom/oneplus/media/IfdEntryEnumerator;->read()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2429
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-media-IfdSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v12}, Lcom/oneplus/media/IfdEntryEnumerator;->currentIfd()Lcom/oneplus/media/Ifd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2432
    :pswitch_0
    invoke-virtual {v12}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 2435
    :pswitch_1
    invoke-virtual {v12}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v10

    .line 2436
    .local v10, "dataInteger":[I
    if-eqz v10, :cond_0

    array-length v2, v10

    if-lez v2, :cond_0

    .line 2437
    const/4 v2, 0x0

    aget v2, v10, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v13

    goto :goto_0

    .line 2449
    .end local v10    # "dataInteger":[I
    :cond_1
    if-eqz v12, :cond_2

    :try_start_2
    invoke-virtual {v12}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2447
    :catch_0
    move-exception v18

    .local v18, "tr":Ljava/lang/Throwable;
    move-object v11, v12

    .line 2448
    .end local v12    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - Error when IFD enumerator"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2453
    .end local v18    # "tr":Ljava/lang/Throwable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - unProcessedPictureId : "

    invoke-static {v2, v3, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2455
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2456
    sget-object v2, Lcom/oneplus/camera/CameraThread;->EVENT_UNPROCESSED_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/UnprocessedPictureEventArgs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v13}, Lcom/oneplus/camera/UnprocessedPictureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2464
    .end local v13    # "halPictureId":Ljava/lang/String;
    .end local v15    # "makerNote":[B
    .end local v16    # "metaData":Lcom/oneplus/media/PhotoMetadata;
    .end local v17    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
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

    .line 2466
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    if-eqz v2, :cond_5

    .line 2467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_DefaultBurstShutterSoundHandle:Lcom/oneplus/base/Handle;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_BurstShutterPlaySoundHandle:Lcom/oneplus/base/Handle;

    .line 2468
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

    .line 2472
    :cond_6
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/camera/MediaResultInfo;

    .line 2473
    .local v14, "info":Lcom/oneplus/camera/MediaResultInfo;
    if-nez v14, :cond_e

    .line 2475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->isBurstPhotoCapture()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2477
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/Camera;

    .line 2478
    .local v9, "camera":Lcom/oneplus/camera/Camera;
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v9, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2479
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFlags()I

    move-result v2

    sget v3, Lcom/oneplus/camera/Camera;->FLAG_BOKEH_PICTURE:I

    sget v4, Lcom/oneplus/camera/Camera;->FLAG_ORIGINAL_PICTURE:I

    or-int/2addr v3, v4

    and-int/2addr v2, v3

    if-eqz v2, :cond_b

    .line 2481
    new-instance v2, Lcom/oneplus/camera/io/BokehPhotoSaveTask;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v4, v0}, Lcom/oneplus/camera/io/BokehPhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    .line 2401
    .end local v9    # "camera":Lcom/oneplus/camera/Camera;
    :goto_4
    return-void

    .line 2449
    .end local v14    # "info":Lcom/oneplus/camera/MediaResultInfo;
    .restart local v12    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v13    # "halPictureId":Ljava/lang/String;
    .restart local v15    # "makerNote":[B
    .restart local v16    # "metaData":Lcom/oneplus/media/PhotoMetadata;
    .restart local v17    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    :catch_1
    move-exception v3

    goto/16 :goto_1

    .end local v12    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_2
    move-exception v2

    .end local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :goto_5
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v3

    move-object/from16 v19, v3

    move-object v3, v2

    move-object/from16 v2, v19

    :goto_6
    if-eqz v11, :cond_7

    :try_start_5
    invoke-virtual {v11}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_7
    :goto_7
    if-eqz v3, :cond_9

    :try_start_6
    throw v3

    .line 2447
    :catch_3
    move-exception v18

    .restart local v18    # "tr":Ljava/lang/Throwable;
    goto/16 :goto_2

    .line 2449
    .end local v18    # "tr":Ljava/lang/Throwable;
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

    .line 2460
    .end local v13    # "halPictureId":Ljava/lang/String;
    .end local v15    # "makerNote":[B
    .end local v16    # "metaData":Lcom/oneplus/media/PhotoMetadata;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - Invalid picture planes"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2485
    .end local v17    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    .restart local v9    # "camera":Lcom/oneplus/camera/Camera;
    .restart local v14    # "info":Lcom/oneplus/camera/MediaResultInfo;
    :cond_b
    new-instance v2, Lcom/oneplus/camera/io/PhotoSaveTask;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v4, v0}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    goto :goto_4

    .line 2490
    .end local v9    # "camera":Lcom/oneplus/camera/Camera;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v2

    if-nez v2, :cond_d

    .line 2491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/oneplus/camera/CameraThread;->m_LastBurstPhotoTime:J

    .line 2492
    :cond_d
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

    .line 2495
    :cond_e
    iget-object v2, v14, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    if-eqz v2, :cond_f

    .line 2496
    new-instance v2, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget-object v5, v14, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/oneplus/camera/io/RequestedPhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Landroid/net/Uri;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    goto/16 :goto_4

    .line 2498
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPictureReceived() - No output URI specified, no need to save picture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2449
    .end local v14    # "info":Lcom/oneplus/camera/MediaResultInfo;
    .restart local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v13    # "halPictureId":Ljava/lang/String;
    .restart local v15    # "makerNote":[B
    .restart local v16    # "metaData":Lcom/oneplus/media/PhotoMetadata;
    .restart local v17    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    :catchall_1
    move-exception v2

    goto/16 :goto_6

    .end local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v12    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catchall_2
    move-exception v2

    move-object v11, v12

    .end local v12    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v11, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    goto/16 :goto_6

    .end local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v12    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_5
    move-exception v2

    move-object v11, v12

    .end local v12    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    goto/16 :goto_5

    .line 2429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 2432
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private onPostviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 10
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 2506
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getHandle()Lcom/oneplus/base/Handle;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 2508
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPostviewReceived() - Invalid camera capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    return-void

    .line 2511
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2513
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPostviewReceived() - Invalid photo capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2514
    return-void

    .line 2518
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v3

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v4

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v6

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getCaptureResult()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getTakenTime()J

    move-result-wide v8

    const/4 v2, 0x0

    invoke-static/range {v1 .. v9}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v0

    .line 2521
    .local v0, "newEventArgs":Lcom/oneplus/camera/CameraCaptureEventArgs;
    sget-object v1, Lcom/oneplus/camera/CameraThread;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2503
    return-void
.end method

.method private onRawPictureReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 8
    .param p1, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 2528
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onRawPictureReceived() - Index : "

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2531
    const/4 v1, 0x0

    .line 2532
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v0, 0x0

    .line 2534
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

    .line 2535
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera;

    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    .line 2537
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getCaptureResult()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/hardware/camera2/CaptureResult;

    if-eqz v5, :cond_1

    .line 2538
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getCaptureResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2540
    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 2542
    :cond_2
    iget-object v5, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onRawPictureReceived() - parameters type is incorrect"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2543
    return-void

    .line 2547
    :cond_3
    new-instance v2, Landroid/hardware/camera2/DngCreator;

    invoke-direct {v2, v1, v0}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    .line 2548
    .local v2, "dngCreator":Landroid/hardware/camera2/DngCreator;
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera;

    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2549
    sget-object v5, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera;

    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/DngCreator;->setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;

    .line 2550
    :cond_4
    const/4 v3, 0x1

    .line 2551
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

    .line 2566
    :goto_0
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    .line 2569
    new-instance v4, Lcom/oneplus/camera/io/RawPhotoSaveTask;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v4, v5, v6, p1, v2}, Lcom/oneplus/camera/io/RawPhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;Landroid/hardware/camera2/DngCreator;)V

    .line 2572
    .local v4, "task":Lcom/oneplus/camera/io/RawPhotoSaveTask;
    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    .line 2526
    return-void

    .line 2554
    .end local v4    # "task":Lcom/oneplus/camera/io/RawPhotoSaveTask;
    :pswitch_0
    const/4 v3, 0x1

    .line 2555
    goto :goto_0

    .line 2557
    :pswitch_1
    const/4 v3, 0x6

    .line 2558
    goto :goto_0

    .line 2560
    :pswitch_2
    const/4 v3, 0x3

    .line 2561
    goto :goto_0

    .line 2563
    :pswitch_3
    const/16 v3, 0x8

    .line 2564
    goto :goto_0

    .line 2551
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
    .line 2580
    if-nez p1, :cond_0

    .line 2581
    return-void

    .line 2583
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSavingQueueStateChanged() - Media saving queue is full"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2587
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->SAVING_QUEUE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 2577
    :cond_1
    return-void
.end method

.method private onShutter(I)V
    .locals 4
    .param p1, "frameIndex"    # I

    .prologue
    const/4 v3, 0x1

    .line 2594
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutter() - Index : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2597
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2599
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutter() - Not capturing"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    return-void

    .line 2604
    :cond_0
    if-nez p1, :cond_2

    .line 2606
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget-boolean v0, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->isFastCaptureEnabled:Z

    if-eqz v0, :cond_1

    .line 2607
    return-void

    .line 2608
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2738

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2612
    :cond_2
    iput-boolean v3, p0, Lcom/oneplus/camera/CameraThread;->m_IsDefaultShutterReceived:Z

    .line 2615
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2616
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v0, v1, :cond_3

    .line 2617
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v0, v1, :cond_3

    .line 2618
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iget v0, v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    if-ne v0, v3, :cond_3

    .line 2619
    if-nez p1, :cond_3

    .line 2621
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->playDefaultShutterSound()V

    .line 2625
    :cond_3
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v1, v2, p1}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;I)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2592
    return-void
.end method

.method private onShutter(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    .line 2633
    if-nez p1, :cond_0

    .line 2635
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutter() - No event data"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    return-void

    .line 2638
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2640
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

    .line 2641
    return-void

    .line 2645
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2630
    return-void
.end method

.method private openCameraInternal(Lcom/oneplus/camera/Camera;I)Z
    .locals 6
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2816
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2818
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

    .line 2819
    return v3

    .line 2823
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

    .line 2833
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "openCameraInternal() - Open "

    invoke-static {v1, v4, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2836
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->open(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2838
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

    .line 2839
    return v3

    .line 2827
    :pswitch_0
    return v2

    .line 2843
    :catch_0
    move-exception v0

    .line 2844
    .local v0, "ex":Ljava/lang/Throwable;
    return v3

    .line 2848
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

    .line 2851
    sget-object v4, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2852
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2854
    iget-boolean v1, p0, Lcom/oneplus/camera/CameraThread;->m_IsHighComponentsCreated:Z

    if-nez v1, :cond_2

    .line 2856
    iput-boolean v2, p0, Lcom/oneplus/camera/CameraThread;->m_IsHighComponentsCreated:Z

    .line 2857
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v4, Lcom/oneplus/base/component/ComponentCreationPriority;->HIGH:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 2861
    :cond_2
    return v2

    :cond_3
    move v1, v3

    .line 2848
    goto :goto_0

    .line 2823
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private pauseVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;I)Z
    .locals 14
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "flags"    # I

    .prologue
    .line 2903
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    if-eq v7, p1, :cond_0

    .line 2905
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "pauseVideoCaptureInternal() - Invalid handle"

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    const/4 v7, 0x0

    return v7

    .line 2910
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v10

    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v7}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v7

    aget v7, v10, v7

    packed-switch v7, :pswitch_data_0

    .line 2918
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pauseVideoCaptureInternal() - Current capture state is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v11}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    const/4 v7, 0x0

    return v7

    .line 2916
    :pswitch_0
    const/4 v7, 0x1

    return v7

    .line 2923
    :pswitch_1
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 2924
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 2926
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "pauseVideoCaptureInternal() - No camera"

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    const/4 v7, 0x0

    return v7

    .line 2931
    :cond_1
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v10, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v7, v10}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2932
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v7, v10, :cond_2

    .line 2934
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "pauseVideoCaptureInternal() - Interrupted by other operations"

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    const/4 v7, 0x0

    return v7

    .line 2939
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderStartTime:J

    sub-long v4, v10, v12

    .line 2940
    .local v4, "duration":J
    const-wide/16 v10, 0x3e8

    cmp-long v7, v4, v10

    if-gez v7, :cond_3

    .line 2942
    const-wide/16 v10, 0x3e8

    sub-long v2, v10, v4

    .line 2943
    .local v2, "delay":J
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pauseVideoCaptureInternal() - Delay "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2957
    .end local v2    # "delay":J
    :cond_3
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2958
    .local v8, "time":J
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Lcom/oneplus/camera/Camera;->pauseVideoRecording(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2960
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "pauseVideoCaptureInternal() - Fail to pause"

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2961
    const/4 v7, 0x0

    return v7

    .line 2949
    .end local v8    # "time":J
    .restart local v2    # "delay":J
    :catch_0
    move-exception v1

    .line 2950
    .local v1, "ex":Ljava/lang/InterruptedException;
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "pauseVideoCaptureInternal() - Interrupted"

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2963
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    .end local v2    # "delay":J
    .restart local v8    # "time":J
    :cond_4
    :try_start_2
    iput-wide v8, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderPauseTime:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 2972
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v10, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v7, v10}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2975
    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v7, v10, :cond_5

    const/4 v7, 0x1

    :goto_1
    return v7

    .line 2966
    .end local v8    # "time":J
    :catch_1
    move-exception v6

    .line 2967
    .local v6, "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "pauseVideoCaptureInternal() - Fail to pause"

    invoke-static {v7, v10, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2968
    const/4 v7, 0x0

    return v7

    .line 2975
    .end local v6    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "time":J
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 2910
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
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
    .line 3075
    const/4 v10, 0x0

    .line 3076
    .local v10, "isProfilePrepared":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 3078
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_0

    .line 3080
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    iget-object v7, v15, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/VideoCaptureHandler;

    .line 3083
    .local v7, "captureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v7, v0, v1, v2}, Lcom/oneplus/camera/VideoCaptureHandler;->prepareCamcorderProfile(Lcom/oneplus/camera/Camera;Landroid/media/MediaRecorder;Lcom/oneplus/camera/CameraThread$VideoParams;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 3085
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

    .line 3086
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3087
    const/4 v10, 0x1

    .line 3104
    .end local v7    # "captureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    .end local v9    # "i":I
    :cond_0
    if-nez v10, :cond_6

    .line 3107
    :try_start_1
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/oneplus/camera/CameraThread$VideoParams;->resolution:Lcom/oneplus/camera/media/Resolution;

    .line 3108
    .local v13, "resolution":Lcom/oneplus/camera/media/Resolution;
    invoke-virtual {v13}, Lcom/oneplus/camera/media/Resolution;->getWidth()I

    move-result v15

    invoke-virtual {v13}, Lcom/oneplus/camera/media/Resolution;->getHeight()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/oneplus/camera/CameraThread;->createCamcorderProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v12

    .line 3109
    .local v12, "profile":Landroid/media/CamcorderProfile;
    if-nez v12, :cond_2

    .line 3111
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

    .line 3112
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3113
    const/4 v15, 0x0

    return v15

    .line 3092
    .end local v12    # "profile":Landroid/media/CamcorderProfile;
    .end local v13    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .restart local v7    # "captureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    .restart local v9    # "i":I
    :catch_0
    move-exception v8

    .line 3093
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

    .line 3094
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 3095
    const/4 v15, 0x0

    return v15

    .line 3078
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    .line 3117
    .end local v7    # "captureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    .end local v9    # "i":I
    .restart local v12    # "profile":Landroid/media/CamcorderProfile;
    .restart local v13    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_2
    const/4 v15, 0x5

    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 3120
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 3122
    invoke-virtual {v13}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v15

    if-lez v15, :cond_3

    .line 3124
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

    .line 3125
    invoke-virtual {v13}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 3127
    invoke-virtual {v13}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v15

    const/16 v16, 0x1e

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 3129
    const/16 v15, 0x780

    const/16 v16, 0x438

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/oneplus/camera/CameraThread;->createCamcorderProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 3130
    .local v4, "baseProfile":Landroid/media/CamcorderProfile;
    const v5, 0x4c6d4e00    # 6.2208E7f

    .line 3131
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

    .line 3132
    .local v6, "bitRateMutiple":F
    iget v15, v4, Landroid/media/CamcorderProfile;->videoBitRate:I

    int-to-float v15, v15

    mul-float/2addr v15, v6

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 3133
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

    .line 3134
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 3146
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

    .line 3147
    .local v11, "orientation":I
    sget-object v15, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 3148
    neg-int v11, v11

    .line 3149
    :cond_4
    if-gez v11, :cond_5

    .line 3150
    add-int/lit16 v11, v11, 0x168

    .line 3151
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "prepareMediaRecorder() - Orientation : "

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3152
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 3156
    .end local v11    # "orientation":I
    .end local v12    # "profile":Landroid/media/CamcorderProfile;
    .end local v13    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    if-eqz v15, :cond_7

    .line 3157
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_LocationManager:Lcom/oneplus/camera/location/LocationManager;

    sget-object v16, Lcom/oneplus/camera/location/LocationManager;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v15 .. v16}, Lcom/oneplus/camera/location/LocationManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/location/Location;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    .line 3159
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    if-eqz v15, :cond_8

    .line 3160
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

    .line 3164
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v15, :cond_d

    .line 3165
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 3170
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

    .line 3172
    :cond_9
    sget-object v15, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/oneplus/camera/CameraThread;->getFreeSpace(Lcom/oneplus/camera/media/MediaType;)J

    move-result-wide v16

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 3173
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/oneplus/camera/CameraThread;->m_IsMaxFileSizeDesignated:Z

    .line 3180
    :goto_2
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxDurationSeconds:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-ltz v15, :cond_a

    .line 3181
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxDurationSeconds:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v15, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 3184
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    if-nez v15, :cond_b

    .line 3186
    new-instance v15, Lcom/oneplus/camera/CameraThread$30;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/oneplus/camera/CameraThread$30;-><init>(Lcom/oneplus/camera/CameraThread;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 3195
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-nez v15, :cond_c

    .line 3197
    new-instance v15, Lcom/oneplus/camera/CameraThread$31;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/oneplus/camera/CameraThread$31;-><init>(Lcom/oneplus/camera/CameraThread;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 3206
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 3207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 3210
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "prepareMediaRecorder() - MediaRecorder.prepare [start]"

    invoke-static/range {v15 .. v16}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRecorder;->prepare()V

    .line 3212
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "prepareMediaRecorder() - MediaRecorder.prepare [end]"

    invoke-static/range {v15 .. v16}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3215
    const/4 v15, 0x1

    return v15

    .line 3167
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 3218
    :catch_1
    move-exception v8

    .line 3219
    .restart local v8    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "prepareMediaRecorder() - Fail to prepare media recorder "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3220
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 3221
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 3222
    const/4 v15, 0x0

    return v15

    .line 3177
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_e
    :try_start_3
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxFileSize:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 3178
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

    .line 3022
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 3025
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    instance-of v8, v8, Lcom/oneplus/camera/CameraActivity;

    if-eqz v8, :cond_0

    .line 3028
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    check-cast v8, Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraActivity;->isVideoServiceMode()Z

    move-result v7

    .line 3029
    .local v7, "videoService":Z
    if-eqz v7, :cond_0

    .line 3031
    sget-object v8, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/MediaResultInfo;

    .line 3032
    .local v5, "info":Lcom/oneplus/camera/MediaResultInfo;
    if-eqz v5, :cond_0

    iget-object v8, v5, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    if-eqz v8, :cond_0

    .line 3036
    :try_start_0
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, v5, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    const-string/jumbo v10, "rw"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3037
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "prepareVideoFilePath() - Video file path : "

    iget-object v10, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3044
    return v12

    .line 3040
    :catch_0
    move-exception v3

    .line 3041
    .local v3, "ex":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "prepareVideoFilePath() - Error when open extra output"

    invoke-static {v8, v9, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3042
    return v11

    .line 3051
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v5    # "info":Lcom/oneplus/camera/MediaResultInfo;
    .end local v7    # "videoService":Z
    :cond_0
    iget-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    iget-object v9, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    sget-object v10, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-static {v8, v9, v10}, Lcom/oneplus/io/StorageUtils;->findStorageFromSettings(Lcom/oneplus/io/StorageManager;Lcom/oneplus/base/Settings;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v6

    .line 3052
    .local v6, "storage":Lcom/oneplus/io/Storage;
    invoke-static {v6}, Lcom/oneplus/io/StorageUtils;->getDcimPath(Lcom/oneplus/io/Storage;)Ljava/lang/String;

    move-result-object v1

    .line 3053
    .local v1, "dcimPath":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 3054
    sget-object v8, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3055
    :cond_1
    new-instance v2, Ljava/io/File;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v11

    const-string/jumbo v9, ""

    aput-object v9, v8, v12

    invoke-static {v8}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3056
    .local v2, "directory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3063
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3064
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

    .line 3065
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    .line 3066
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

    .line 3067
    return v12

    .line 3058
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

    .line 3059
    return v11
.end method

.method private removePhotoCaptureHandler(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    .prologue
    .line 3240
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 3241
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

    .line 3248
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

    .line 3252
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3253
    return-void

    .line 3254
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

    .line 3237
    return-void

    .line 3241
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
    .line 3262
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 3263
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

    .line 3270
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

    .line 3274
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3275
    return-void

    .line 3276
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

    .line 3259
    return-void

    .line 3263
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
    .line 3282
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 3283
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_2

    .line 3285
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3287
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/io/FileUtils;->isRawFilePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3280
    :cond_0
    :goto_0
    return-void

    .line 3289
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3290
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3292
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3299
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resetCapturingRawPhotoProperty() - camera is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreRecordingTimeRatio(Lcom/oneplus/camera/CameraThread$RecordingTimeRatioHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$RecordingTimeRatioHandle;

    .prologue
    .line 3308
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 3309
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

    .line 3317
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot restore recording time ratio when capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3321
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RecordingTimeRatioHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3322
    return-void

    .line 3323
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreRecordingTimeRatio() - Ratio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/oneplus/camera/CameraThread$RecordingTimeRatioHandle;->ratio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3305
    return-void

    .line 3309
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resumeVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;I)Z
    .locals 12
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3365
    iget-object v4, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    if-eq v4, p1, :cond_0

    .line 3367
    iget-object v4, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "resumeVideoCaptureInternal() - Invalid handle"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    return v6

    .line 3372
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v7

    sget-object v4, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v4}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v4

    aget v4, v7, v4

    packed-switch v4, :pswitch_data_0

    .line 3380
    :pswitch_0
    iget-object v4, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resumeVideoCaptureInternal() - Current capture state is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3381
    return v6

    .line 3378
    :pswitch_1
    return v5

    .line 3385
    :pswitch_2
    sget-object v4, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 3386
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 3388
    iget-object v4, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "resumeVideoCaptureInternal() - No camera"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    return v6

    .line 3393
    :cond_1
    sget-object v4, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v4, v7}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3394
    sget-object v4, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v4, v7, :cond_2

    .line 3396
    iget-object v4, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "resumeVideoCaptureInternal() - Interrupted by other operations"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3397
    return v6

    .line 3403
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3404
    .local v2, "time":J
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lcom/oneplus/camera/Camera;->resumeVideoRecording(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3406
    iget-object v4, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "resumeVideoCaptureInternal() - Fail to resume"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3407
    return v6

    .line 3409
    :cond_3
    iget-wide v8, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderPauseTimeTotal:J

    iget-wide v10, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderPauseTime:J

    sub-long v10, v2, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderPauseTimeTotal:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3418
    sget-object v4, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {p0, v4, v7}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3421
    sget-object v4, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v4, v7, :cond_4

    move v4, v5

    :goto_0
    return v4

    .line 3412
    .end local v2    # "time":J
    :catch_0
    move-exception v1

    .line 3413
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "resumeVideoCaptureInternal() - Fail to resume"

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3414
    return v6

    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "time":J
    :cond_4
    move v4, v6

    .line 3421
    goto :goto_0

    .line 3372
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setMediaTypeInternal(Lcom/oneplus/camera/media/MediaType;)Z
    .locals 7
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3520
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 3521
    return v3

    .line 3522
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setMediaTypeInternal() - Media type : "

    invoke-static {v2, v5, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3523
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 3557
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

    .line 3558
    return v4

    .line 3527
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

    .line 3533
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

    .line 3534
    return v4

    .line 3536
    :pswitch_1
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3562
    :cond_1
    :goto_0
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 3564
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

    .line 3577
    const/4 v1, 0x0

    .line 3582
    .local v1, "needRestartPreview":Z
    :cond_2
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, p1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3585
    if-eqz v0, :cond_3

    .line 3586
    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne p1, v2, :cond_5

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3589
    :cond_3
    if-eqz v1, :cond_4

    .line 3591
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setMediaTypeInternal() - Restart preview"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3592
    invoke-virtual {p0, v0, v6, v6, v6}, Lcom/oneplus/camera/CameraThread;->startCameraPreview(Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3593
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setMediaTypeInternal() - Fail to restart preview"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3597
    :cond_4
    return v3

    .line 3542
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

    .line 3548
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

    .line 3549
    return v4

    .line 3551
    :pswitch_3
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3552
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3568
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    :pswitch_4
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setMediaTypeInternal() - Stop preview to change media type"

    invoke-static {v2, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3569
    const/4 v1, 0x1

    .line 3570
    .restart local v1    # "needRestartPreview":Z
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->stopCameraPreview(Lcom/oneplus/camera/Camera;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3572
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setMediaTypeInternal() - Fail to stop preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3573
    return v4

    :cond_5
    move v2, v4

    .line 3586
    goto/16 :goto_1

    .line 3523
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 3527
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 3564
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 3542
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
    .line 3803
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 3805
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;

    .line 3806
    .local v8, "stopRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    iget-object v0, v8, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->camera:Lcom/oneplus/camera/Camera;

    if-ne v0, p1, :cond_1

    .line 3808
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Cancel pending preview stop rquest"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3809
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3815
    .end local v8    # "stopRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    :cond_0
    const/16 v0, 0x2756

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3817
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Pending preview stop detected"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3818
    const/4 v0, 0x0

    return v0

    .line 3803
    .restart local v8    # "stopRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 3822
    .end local v8    # "stopRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/CameraThread;->openCameraInternal(Lcom/oneplus/camera/Camera;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3824
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Fail to open camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3825
    const/4 v0, 0x0

    return v0

    .line 3829
    :cond_3
    const/16 v0, 0x2756

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3831
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Pending preview stop detected after opening camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3832
    const/4 v0, 0x0

    return v0

    .line 3836
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

    .line 3867
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz p4, :cond_9

    .line 3869
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

    .line 3870
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0, p4}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3876
    :goto_2
    if-eqz p2, :cond_a

    .line 3878
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

    .line 3879
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0, p2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3885
    :goto_3
    iput-object p3, p0, Lcom/oneplus/camera/CameraThread;->m_CurrentResolution:Lcom/oneplus/camera/media/Resolution;

    .line 3886
    if-eqz p3, :cond_6

    .line 3888
    invoke-virtual {p3}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v0

    if-lez v0, :cond_b

    .line 3890
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Set preview fps : "

    invoke-virtual {p3}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3893
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

    .line 3905
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

    .line 3906
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->startPreview(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 3908
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

    .line 3909
    const/4 v0, 0x0

    return v0

    .line 3842
    :pswitch_1
    if-eqz p4, :cond_5

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p4, :cond_5

    .line 3844
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Preview receiver changed, stop preview first"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3845
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->stopPreview(I)V

    goto/16 :goto_1

    .line 3849
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Start while stopping"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3850
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    :goto_5
    if-ltz v6, :cond_8

    .line 3852
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;

    .line 3853
    .local v7, "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    iget-object v0, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->camera:Lcom/oneplus/camera/Camera;

    if-ne v0, p1, :cond_7

    .line 3855
    iput-object p2, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->previewSize:Landroid/util/Size;

    .line 3856
    iput-object p4, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->previewReceiver:Ljava/lang/Object;

    .line 3857
    iput p5, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->flags:I

    .line 3858
    iput-object p3, v7, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->resolution:Lcom/oneplus/camera/media/Resolution;

    .line 3859
    const/4 v0, 0x1

    return v0

    .line 3850
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 3862
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

    .line 3863
    const/4 v0, 0x1

    return v0

    .line 3873
    :cond_9
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Use current preview receiver"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3882
    :cond_a
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Use current preview size"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3897
    :cond_b
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreviewInternal() - Reset preview fps"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3900
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 3913
    :cond_c
    iput p5, p0, Lcom/oneplus/camera/CameraThread;->m_CameraPreviewStartFlags:I

    .line 3916
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraThread;->m_IsNormalComponentsCreated:Z

    if-nez v0, :cond_d

    .line 3918
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraThread;->m_IsNormalComponentsCreated:Z

    .line 3919
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->bindToHighComponents()V

    .line 3920
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v1, Lcom/oneplus/base/component/ComponentCreationPriority;->NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 3921
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->bindToNormalComponents()V

    .line 3925
    :cond_d
    const/4 v0, 0x1

    return v0

    .line 3836
    nop

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

    .line 3999
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 4001
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;

    .line 4002
    .local v2, "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    iget-object v3, v2, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->camera:Lcom/oneplus/camera/Camera;

    if-ne v3, p1, :cond_2

    .line 4004
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Remove pending start request"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4005
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4011
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

    .line 4013
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Wait for preview start or capture complete"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4014
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    new-instance v4, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;

    invoke-direct {v4, p1, p2, p3}, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;-><init>(Lcom/oneplus/camera/Camera;[ZI)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4015
    return v7

    .line 3999
    .restart local v2    # "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4019
    .end local v2    # "startRequest":Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Stop preview [start]"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4020
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->stopPreview(I)V

    .line 4021
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Stop preview [end]"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4024
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4026
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Stop video recording"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4027
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    sget-object v4, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 4031
    :cond_4
    if-eqz p2, :cond_5

    .line 4033
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-eq v3, v4, :cond_7

    .line 4035
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4037
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Notify waiting thread"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4038
    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-boolean v3, p2, v4

    .line 4039
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p2

    .line 4064
    :cond_5
    :goto_1
    return v7

    .line 4035
    :catchall_0
    move-exception v3

    monitor-exit p2

    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 4067
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 4068
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Error stopping camera preview"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4069
    if-eqz p2, :cond_6

    .line 4071
    monitor-enter p2

    .line 4073
    :try_start_3
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Notify waiting thread"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4074
    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-boolean v3, p2, v4

    .line 4075
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p2

    .line 4078
    :cond_6
    return v6

    .line 4044
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "i":I
    :cond_7
    :try_start_4
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreviewInternal() - Wait for camera preview stop"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4045
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/CameraThread$35;

    invoke-direct {v4, p0, p2, p1}, Lcom/oneplus/camera/CameraThread$35;-><init>(Lcom/oneplus/camera/CameraThread;[ZLcom/oneplus/camera/Camera;)V

    invoke-interface {p1, v3, v4}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 4071
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
    .line 4110
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4111
    sget-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 4108
    :cond_0
    :goto_0
    return-void

    .line 4112
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$37;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$37;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4121
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

    .line 4130
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    if-eq v2, p1, :cond_0

    .line 4132
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopPhotoCaptureInternal() - Invalid handle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4133
    return-void

    .line 4136
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopPhotoCaptureInternal() - Handle : "

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4139
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_1

    .line 4141
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopPhotoCaptureInternal() - Stop when locking focus"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4142
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    sget-object v3, Lcom/oneplus/camera/CaptureCompleteReason;->CANCELLED:Lcom/oneplus/camera/CaptureCompleteReason;

    const/4 v4, 0x0

    invoke-direct {p0, v5, v2, v3, v4}, Lcom/oneplus/camera/CameraThread;->completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;Z)Z

    .line 4143
    return-void

    .line 4147
    :cond_1
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 4148
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_2

    .line 4150
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopPhotoCaptureInternal() - No camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4151
    return-void

    .line 4157
    :cond_2
    :try_start_0
    iget-object v2, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    if-nez v2, :cond_6

    .line 4159
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->isBurstPhotoCapture()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4160
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x274c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4170
    :goto_0
    iput-object p2, p0, Lcom/oneplus/camera/CameraThread;->m_PreparedPhotoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 4127
    :cond_3
    :goto_1
    return-void

    .line 4161
    :cond_4
    iget-boolean v2, p0, Lcom/oneplus/camera/CameraThread;->m_IsDefaultShutterReceived:Z

    if-nez v2, :cond_5

    .line 4163
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopPhotoCaptureInternal() - Shutter not received yet, stop immediately"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4164
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->stopCameraPreview(Lcom/oneplus/camera/Camera;)Z

    .line 4165
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x274c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4180
    :catch_0
    move-exception v1

    .line 4181
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopPhotoCaptureInternal() - Fail to stop capture"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 4168
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    const/16 v3, 0x274c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4174
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

    .line 4175
    iget-object v2, p1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    invoke-interface {v2, v0, p1, p2}, Lcom/oneplus/camera/PhotoCaptureHandler;->stopCapture(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4176
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
    .line 4189
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4190
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    .line 4187
    :cond_0
    :goto_0
    return-void

    .line 4191
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$38;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread$38;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4200
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopVideoCapture() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;I)V
    .locals 24
    .param p1, "handle"    # Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;
    .param p3, "flags"    # I

    .prologue
    .line 4210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_0

    if-nez p1, :cond_1

    .line 4212
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopVideoCaptureInternal() - Invalid handle"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4213
    return-void

    .line 4217
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

    .line 4225
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

    .line 4230
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

    move-result v19

    .line 4233
    :goto_0
    const/16 v17, 0x0

    .line 4234
    .local v17, "isPaused":Z
    const/16 v18, 0x0

    .line 4235
    .local v18, "isPausingOrResuming":Z
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

    packed-switch v3, :pswitch_data_1

    .line 4244
    :goto_1
    :pswitch_2
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4247
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x272e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopVideoCaptureInternal() - Stop video snapshot and wait"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4253
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/CameraThread;->m_LastVideoCaptureCompleteReason:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 4254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    sget-object v4, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/oneplus/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 4255
    return-void

    .line 4230
    .end local v17    # "isPaused":Z
    .end local v18    # "isPausingOrResuming":Z
    :cond_2
    const/16 v19, 0x0

    .local v19, "isStarting":Z
    goto :goto_0

    .line 4238
    .end local v19    # "isStarting":Z
    .restart local v17    # "isPaused":Z
    .restart local v18    # "isPausingOrResuming":Z
    :pswitch_3
    const/16 v17, 0x1

    .line 4241
    :pswitch_4
    const/16 v18, 0x1

    .line 4242
    goto :goto_1

    .line 4259
    :cond_3
    const/16 v16, 0x0

    .line 4260
    .local v16, "ignoreVideo":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_4

    if-eqz v19, :cond_a

    .line 4300
    :cond_4
    :goto_2
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

    .line 4301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_VideoStopSoundHandle:Lcom/oneplus/base/Handle;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 4304
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->complete()V

    .line 4307
    if-eqz v19, :cond_6

    .line 4309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopVideoCaptureInternal() - Stop while starting"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4310
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x271a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4311
    sget-object v3, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_6

    .line 4312
    sget-object p2, Lcom/oneplus/camera/CaptureCompleteReason;->CANCELLED:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 4316
    :cond_6
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/Camera;

    .line 4317
    .local v8, "camera":Lcom/oneplus/camera/Camera;
    if-nez v19, :cond_7

    if-eqz v16, :cond_12

    .line 4333
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

    .line 4336
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_14

    .line 4337
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4348
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_9

    .line 4350
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v4

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v3}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_2

    .line 4359
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopVideoCaptureInternal() - Release media recorder after preview start or stop"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4365
    :cond_9
    :goto_4
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Lcom/oneplus/camera/Camera;->unbindMediaRecorder(I)Z

    .line 4368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    if-eqz v19, :cond_15

    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v5, v1, v3}, Lcom/oneplus/camera/CameraThread;->completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;Z)Z

    .line 4207
    return-void

    .line 4262
    .end local v8    # "camera":Lcom/oneplus/camera/Camera;
    :cond_a
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/Camera;

    .line 4263
    .restart local v8    # "camera":Lcom/oneplus/camera/Camera;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 4264
    .local v10, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderStartTime:J

    sub-long v14, v10, v4

    .line 4265
    .local v14, "duration":J
    if-nez v17, :cond_b

    if-eqz v18, :cond_c

    .line 4266
    :cond_b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderPauseTimeTotal:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderPauseTime:J

    sub-long v6, v10, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderPauseTimeTotal:J

    .line 4267
    :cond_c
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderPauseTimeTotal:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_d

    .line 4269
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderPauseTimeTotal:J

    sub-long v6, v14, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 4270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopVideoCaptureInternal() - Total paused time : "

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorderPauseTimeTotal:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string/jumbo v6, " ms"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4272
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_RecordingTimeRatioHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    const/high16 v23, 0x3f800000    # 1.0f

    .line 4273
    .local v23, "timeRatio":F
    :goto_6
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v23, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_11

    const-wide/16 v20, 0x3e8

    .line 4274
    .local v20, "minDuration":J
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopVideoCaptureInternal() - Minimum duration : "

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4275
    cmp-long v3, v14, v20

    if-gez v3, :cond_f

    .line 4279
    if-eqz v17, :cond_e

    .line 4281
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopVideoCaptureInternal() - Duration is too short, resume video recording"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4282
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Lcom/oneplus/camera/Camera;->resumeVideoRecording(I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 4283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopVideoCaptureInternal() - Fail to resume video recording"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4285
    :cond_e
    sub-long v12, v20, v14

    .line 4286
    .local v12, "delayMillis":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopVideoCaptureInternal() - Duration is too short : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms, delay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4287
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 4292
    .end local v12    # "delayMillis":J
    :cond_f
    :goto_8
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Lcom/oneplus/camera/Camera;->stopVideoRecording(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4294
    cmp-long v3, v14, v20

    if-gez v3, :cond_4

    .line 4295
    const/16 v16, 0x1

    goto/16 :goto_2

    .line 4272
    .end local v20    # "minDuration":J
    .end local v23    # "timeRatio":F
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_RecordingTimeRatioHandles:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraThread;->m_RecordingTimeRatioHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/CameraThread$RecordingTimeRatioHandle;

    iget v0, v3, Lcom/oneplus/camera/CameraThread$RecordingTimeRatioHandle;->ratio:F

    move/from16 v23, v0

    goto/16 :goto_6

    .line 4273
    .restart local v23    # "timeRatio":F
    :cond_11
    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v3, v3, v23

    float-to-long v0, v3

    move-wide/from16 v20, v0

    .restart local v20    # "minDuration":J
    goto/16 :goto_7

    .line 4319
    .end local v10    # "currentTime":J
    .end local v14    # "duration":J
    .end local v20    # "minDuration":J
    .end local v23    # "timeRatio":F
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_8

    .line 4322
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;->captureHandler:Lcom/oneplus/camera/VideoCaptureHandler;

    .line 4323
    .local v2, "videoCaptureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    if-eqz v2, :cond_13

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

    .line 4326
    :cond_13
    new-instance v22, Lcom/oneplus/camera/io/VideoSaveTask;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5, v3}, Lcom/oneplus/camera/io/VideoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/util/Size;)V

    .line 4327
    .local v22, "saveTask":Lcom/oneplus/camera/io/VideoSaveTask;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraThread;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    goto/16 :goto_3

    .line 4339
    .end local v2    # "videoCaptureHandler":Lcom/oneplus/camera/VideoCaptureHandler;
    .end local v22    # "saveTask":Lcom/oneplus/camera/io/VideoSaveTask;
    :cond_14
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraThread;->closeVideoFileDescriptor()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 4342
    :catch_0
    move-exception v9

    .line 4343
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

    goto/16 :goto_3

    .line 4354
    .end local v9    # "ex":Ljava/lang/Throwable;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopVideoCaptureInternal() - Release media recorder"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 4356
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oneplus/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    goto/16 :goto_4

    .line 4368
    :cond_15
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 4290
    .restart local v10    # "currentTime":J
    .restart local v14    # "duration":J
    .restart local v20    # "minDuration":J
    .restart local v23    # "timeRatio":F
    :catch_1
    move-exception v9

    .restart local v9    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_8

    .line 4217
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

    .line 4235
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 4350
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V
    .locals 3
    .param p1, "builders"    # [Lcom/oneplus/base/component/ComponentBuilder;

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 811
    :goto_0
    return-void

    .line 817
    :cond_0
    monitor-enter p0

    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_1

    .line 821
    new-instance v0, Lcom/oneplus/camera/CameraThread$14;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$14;-><init>(Lcom/oneplus/camera/CameraThread;[Lcom/oneplus/base/component/ComponentBuilder;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 831
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 817
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final capturePhoto()Lcom/oneplus/camera/CaptureHandle;
    .locals 2

    .prologue
    .line 987
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
    .line 998
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

    .line 1014
    if-nez p1, :cond_0

    .line 1015
    new-instance p1, Lcom/oneplus/camera/CameraThread$PhotoParams;

    .end local p1    # "params":Lcom/oneplus/camera/CameraThread$PhotoParams;
    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lcom/oneplus/camera/CameraThread$PhotoParams;-><init>(I)V

    .line 1016
    .restart local p1    # "params":Lcom/oneplus/camera/CameraThread$PhotoParams;
    :cond_0
    iget v1, p1, Lcom/oneplus/camera/CameraThread$PhotoParams;->frameCount:I

    if-nez v1, :cond_1

    .line 1018
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Invalid frame count"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    return-object v7

    .line 1023
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

    .line 1026
    .local v0, "handle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1028
    invoke-direct {p0, v0, v8}, Lcom/oneplus/camera/CameraThread;->capturePhotoInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1029
    return-object v0

    .line 1030
    :cond_2
    return-object v7

    .line 1032
    :cond_3
    new-instance v1, Lcom/oneplus/camera/CameraThread$22;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/camera/CameraThread$22;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;)V

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1041
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Create handle "

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1042
    return-object v0

    .line 1044
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capturePhoto() - Fail to perform cross-thread operation"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    return-object v7
.end method

.method public final captureVideo(Lcom/oneplus/camera/CameraThread$VideoParams;I)Lcom/oneplus/camera/CaptureHandle;
    .locals 8
    .param p1, "params"    # Lcom/oneplus/camera/CameraThread$VideoParams;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 1297
    if-nez p1, :cond_0

    .line 1299
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - No video parameters"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    return-object v7

    .line 1302
    :cond_0
    iget-object v6, p1, Lcom/oneplus/camera/CameraThread$VideoParams;->resolution:Lcom/oneplus/camera/media/Resolution;

    .line 1303
    .local v6, "resolution":Lcom/oneplus/camera/media/Resolution;
    if-nez v6, :cond_1

    .line 1305
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - No video resolution"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    return-object v7

    .line 1308
    :cond_1
    invoke-virtual {v6}, Lcom/oneplus/camera/media/Resolution;->getTargetType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-eq v1, v2, :cond_2

    .line 1310
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

    .line 1311
    return-object v7

    .line 1313
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

    .line 1314
    .local v0, "handle":Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1316
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->captureVideoInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1317
    return-object v0

    .line 1318
    :cond_3
    return-object v7

    .line 1320
    :cond_4
    new-instance v1, Lcom/oneplus/camera/CameraThread$23;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/camera/CameraThread$23;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;)V

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1329
    return-object v0

    .line 1331
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "captureVideo() - Fail to perform cross-thread operation"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    return-object v7
.end method

.method public checkRemainingMediaCount()V
    .locals 2

    .prologue
    const/16 v1, 0x2724

    .line 1496
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1497
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1498
    :cond_1
    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1500
    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkRemainingMediaCount() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final closeCamera(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 1614
    if-nez p1, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCamera() - No camera to close"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    return-void

    .line 1621
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1622
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->closeCameraInternal(Lcom/oneplus/camera/Camera;)V

    .line 1611
    :cond_1
    :goto_0
    return-void

    .line 1623
    :cond_2
    new-instance v0, Lcom/oneplus/camera/CameraThread$24;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$24;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1632
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCamera() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final closeCameras()V
    .locals 2

    .prologue
    .line 1652
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1653
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeCamerasInternal()V

    .line 1650
    :cond_0
    :goto_0
    return-void

    .line 1654
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_CloseCamerasRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1655
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
    .line 1691
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

    .line 1705
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 1706
    if-nez p1, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCapture() - No capture handler handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    return v2

    .line 1711
    :cond_0
    if-nez p2, :cond_1

    .line 1713
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCapture() - No capture handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    return v2

    .line 1716
    :cond_1
    if-nez p3, :cond_2

    .line 1718
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeCapture() - No complete reason"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    return v2

    .line 1723
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/camera/CameraThread;->completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;Z)Z

    move-result v0

    return v0
.end method

.method public disableVideoSnapshot()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 1927
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 1930
    new-instance v0, Lcom/oneplus/camera/CameraThread$25;

    const-string/jumbo v1, "DisableVideoSnapshot"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraThread$25;-><init>(Lcom/oneplus/camera/CameraThread;Ljava/lang/String;)V

    .line 1938
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1941
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1942
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1945
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

    .line 1966
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 1967
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0

    .line 1968
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

    .line 1977
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponents(Ljava/lang/Class;[Ljava/lang/Object;)[Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0

    .line 1979
    :cond_0
    new-array v0, v2, [Lcom/oneplus/base/component/Component;

    return-object v0
.end method

.method protected final getComponentManager()Lcom/oneplus/base/component/ComponentManager;
    .locals 1

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method public getLastCapturedJpeg()[B
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_LastCapturedJpeg:[B

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2057
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 2108
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseThread;->handleMessage(Landroid/os/Message;)V

    .line 2055
    :goto_1
    return-void

    .line 2060
    :sswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->captureVideoInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;Z)Z

    goto :goto_1

    .line 2064
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCountInternal()V

    goto :goto_1

    .line 2068
    :sswitch_2
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->checkVideoRecordingLimitation()V

    goto :goto_1

    .line 2073
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraThread;->onShutter(I)V

    .line 2074
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    iput-boolean v2, v1, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;->isFastCaptureEnabled:Z

    goto :goto_1

    .line 2079
    :sswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraThread;->notifyRequiredPermissionsState(Z)V

    goto :goto_1

    .line 2083
    :sswitch_5
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 2088
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2089
    .local v0, "args":[Ljava/lang/Object;
    aget-object v1, v0, v1

    check-cast v1, Lcom/oneplus/camera/Camera;

    aget-object v2, v0, v2

    check-cast v2, [Z

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/camera/CameraThread;->stopCameraPreviewInternal(Lcom/oneplus/camera/Camera;[ZI)Z

    goto :goto_1

    .line 2094
    .end local v0    # "args":[Ljava/lang/Object;
    :sswitch_7
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopPhotoCaptureInternal() - Use default photo capture stop process"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 2096
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_BurstCaptureSoundStreamHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_BurstCaptureSoundStreamHandle:Lcom/oneplus/base/Handle;

    .line 2097
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2738

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 2101
    :sswitch_8
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-nez v1, :cond_0

    .line 2103
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v1

    const-class v2, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/io/StorageManager;

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    .line 2104
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-nez v1, :cond_0

    .line 2105
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x32

    const/16 v4, 0x2760

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2057
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
    .line 2120
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

    .line 2131
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2133
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x2742

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v1, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 2134
    return-void

    :cond_0
    move v0, v1

    .line 2133
    goto :goto_0

    .line 2138
    :cond_1
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2128
    return-void
.end method

.method protected onStarted()V
    .locals 2

    .prologue
    .line 2654
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStarted()V

    .line 2657
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->bindToInitialComponents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2658
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Fail to bind components."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2651
    :cond_0
    return-void
.end method

.method protected onStarting()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 2667
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStarting()V

    .line 2670
    sget-object v1, Lcom/oneplus/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    const/16 v2, 0x100

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->enableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 2671
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2672
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2673
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2674
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2675
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2676
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2677
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2680
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 2682
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onStarting() - No need to request permissions"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2683
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2687
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    .line 2688
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    .line 2689
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    .line 2692
    new-instance v1, Lcom/oneplus/base/Settings;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_Context:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v5}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    .line 2695
    monitor-enter p0

    .line 2698
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    if-eqz v1, :cond_1

    .line 2700
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onStarting() - Initial screen size : "

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2701
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2702
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    .line 2706
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;

    if-eqz v1, :cond_2

    .line 2708
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onStarting() - Initial media type : "

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2709
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2710
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_2

    .line 2711
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2715
    :cond_2
    new-instance v1, Lcom/oneplus/base/component/ComponentManager;

    invoke-direct {v1}, Lcom/oneplus/base/component/ComponentManager;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    .line 2716
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/oneplus/camera/CameraThread;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 2717
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/CameraThread$26;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraThread$26;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2725
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/CameraThread$27;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/CameraThread$27;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2733
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2735
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/oneplus/base/component/ComponentBuilder;

    .line 2736
    .local v0, "builders":[Lcom/oneplus/base/component/ComponentBuilder;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2737
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2738
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

    .line 2743
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 2664
    return-void

    .line 2695
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected onStopping()V
    .locals 1

    .prologue
    .line 2752
    invoke-direct {p0}, Lcom/oneplus/camera/CameraThread;->closeCamerasInternal()V

    .line 2755
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v0}, Lcom/oneplus/base/component/ComponentManager;->release()V

    .line 2758
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_0

    .line 2759
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    invoke-virtual {v0}, Lcom/oneplus/base/Settings;->release()V

    .line 2762
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2763
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2766
    :cond_1
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStopping()V

    .line 2749
    return-void
.end method

.method public final openCamera(Lcom/oneplus/camera/Camera;)Z
    .locals 1
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 2777
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

    .line 2789
    if-nez p1, :cond_0

    .line 2791
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openCamera() - No camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    return v2

    .line 2794
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2795
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraThread;->openCameraInternal(Lcom/oneplus/camera/Camera;I)Z

    move-result v0

    return v0

    .line 2796
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$28;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/CameraThread$28;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;I)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2805
    const/4 v0, 0x1

    return v0

    .line 2807
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openCamera() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    return v2
.end method

.method public pauseVideoCapture(Lcom/oneplus/camera/CaptureHandle;)Z
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    const/4 v3, 0x0

    .line 2873
    if-nez p1, :cond_0

    .line 2875
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pauseVideoCapture() - No handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2876
    return v3

    .line 2878
    :cond_0
    instance-of v0, p1, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    if-nez v0, :cond_1

    .line 2880
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pauseVideoCapture() - Invalid handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2881
    return v3

    .line 2885
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2886
    check-cast p1, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    .end local p1    # "handle":Lcom/oneplus/camera/CaptureHandle;
    invoke-direct {p0, p1, v3}, Lcom/oneplus/camera/CameraThread;->pauseVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;I)Z

    move-result v0

    return v0

    .line 2887
    .restart local p1    # "handle":Lcom/oneplus/camera/CaptureHandle;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/CameraThread$29;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/CameraThread$29;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CaptureHandle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public final playCameraTimerSound(J)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2983
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 2985
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    .line 2986
    return-object v1

    .line 2988
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    if-nez v0, :cond_2

    .line 2989
    :cond_1
    return-object v1

    .line 2991
    :cond_2
    cmp-long v0, p1, v4

    if-nez v0, :cond_3

    .line 2992
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_CameraTimer2SecSoundHandle:Lcom/oneplus/base/Handle;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0

    .line 2994
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
    .line 3004
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 3005
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3007
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "playDefaultShutterSound() - No shutter sound to play"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    return-void

    .line 3012
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_AudioManager:Lcom/oneplus/camera/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 3001
    return-void
.end method

.method public removeComponent(Lcom/oneplus/base/component/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 3231
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 3232
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/component/ComponentManager;->removeComponent(Lcom/oneplus/base/component/Component;)V

    .line 3229
    return-void
.end method

.method public resumeVideoCapture(Lcom/oneplus/camera/CaptureHandle;)Z
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    const/4 v3, 0x0

    .line 3335
    if-nez p1, :cond_0

    .line 3337
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumeVideoCapture() - No handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    return v3

    .line 3340
    :cond_0
    instance-of v0, p1, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    if-nez v0, :cond_1

    .line 3342
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeVideoCapture() - Invalid handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    return v3

    .line 3347
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3348
    check-cast p1, Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;

    .end local p1    # "handle":Lcom/oneplus/camera/CaptureHandle;
    invoke-direct {p0, p1, v3}, Lcom/oneplus/camera/CameraThread;->resumeVideoCaptureInternal(Lcom/oneplus/camera/CameraThread$VideoCaptureHandle;I)Z

    move-result v0

    return v0

    .line 3349
    .restart local p1    # "handle":Lcom/oneplus/camera/CaptureHandle;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/CameraThread$32;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/CameraThread$32;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CaptureHandle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;
    .locals 8
    .param p1, "saveTask"    # Lcom/oneplus/camera/io/MediaSaveTask;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3433
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 3434
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    if-nez v3, :cond_0

    .line 3436
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "saveMedia() - No FileManager interface"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3437
    return-object v5

    .line 3441
    :cond_0
    if-nez p1, :cond_1

    .line 3443
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "saveMedia() - No save task"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    return-object v5

    .line 3448
    :cond_1
    sget-object v3, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 3451
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3452
    .local v2, "sceneMode":I
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getSceneMode()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3453
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/oneplus/camera/io/MediaSaveTask;->setSceneMode(Ljava/lang/Integer;)V

    .line 3456
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->isHdrActive()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_3

    .line 3457
    const/16 v3, 0x12

    if-eq v2, v3, :cond_7

    .line 3458
    const/16 v3, 0x2711

    if-ne v2, v3, :cond_8

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_AUTO_HDR_STATUS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3457
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/oneplus/camera/io/MediaSaveTask;->setIsHdrActive(Ljava/lang/Boolean;)V

    .line 3461
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getLocation()Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_4

    .line 3463
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    .line 3464
    .local v1, "captureHandle":Lcom/oneplus/camera/CaptureHandle;
    if-eqz v1, :cond_4

    .line 3466
    invoke-static {}, Lcom/oneplus/camera/CameraThread;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 3479
    .end local v1    # "captureHandle":Lcom/oneplus/camera/CaptureHandle;
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getLensFacing()Lcom/oneplus/camera/Camera$LensFacing;

    move-result-object v3

    if-nez v3, :cond_5

    .line 3480
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {p1, v3}, Lcom/oneplus/camera/io/MediaSaveTask;->setLensFacing(Lcom/oneplus/camera/Camera$LensFacing;)V

    .line 3483
    :cond_5
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getStorageType()Lcom/oneplus/io/Storage$Type;

    move-result-object v3

    if-nez v3, :cond_6

    .line 3484
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v5, "StorageType"

    const-class v6, Lcom/oneplus/io/Storage$Type;

    sget-object v7, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-virtual {v3, v5, v6, v7}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/oneplus/io/Storage$Type;

    invoke-virtual {p1, v3}, Lcom/oneplus/camera/io/MediaSaveTask;->setStorageType(Lcom/oneplus/io/Storage$Type;)V

    .line 3487
    :cond_6
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    invoke-interface {v3, p1, v4}, Lcom/oneplus/camera/io/FileManager;->saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    return-object v3

    .line 3457
    :cond_7
    const/4 v3, 0x1

    goto :goto_0

    :cond_8
    move v3, v4

    .line 3458
    goto :goto_0

    .line 3469
    .restart local v1    # "captureHandle":Lcom/oneplus/camera/CaptureHandle;
    :pswitch_0
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    invoke-virtual {p1, v3}, Lcom/oneplus/camera/io/MediaSaveTask;->setLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 3472
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    invoke-virtual {p1, v3}, Lcom/oneplus/camera/io/MediaSaveTask;->setLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 3466
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
    .line 3498
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3499
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraThread;->setMediaTypeInternal(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v0

    return v0

    .line 3500
    :cond_0
    new-instance v0, Lcom/oneplus/camera/CameraThread$33;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$33;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/media/MediaType;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3509
    const/4 v0, 0x1

    return v0

    .line 3511
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMediaType() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3512
    const/4 v0, 0x0

    return v0
.end method

.method public final setPhotoCaptureHandler(Lcom/oneplus/camera/PhotoCaptureHandler;I)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "handler"    # Lcom/oneplus/camera/PhotoCaptureHandler;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 3610
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 3611
    if-nez p1, :cond_0

    .line 3613
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPhotoCaptureHandler() - No capture handler"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3614
    return-object v4

    .line 3616
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

    .line 3623
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

    .line 3624
    return-object v4

    .line 3628
    :pswitch_0
    new-instance v0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/PhotoCaptureHandler;)V

    .line 3629
    .local v0, "handle":Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3630
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

    .line 3631
    return-object v0

    .line 3616
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRecordingTimeRatio(F)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "ratio"    # F

    .prologue
    const/4 v4, 0x0

    .line 3643
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 3644
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

    .line 3652
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRecordingTimeRatio() - Cannot restore recording time ratio when capture state is "

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

    .line 3653
    return-object v4

    .line 3657
    :pswitch_1
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 3659
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRecordingTimeRatio() - Invalid ratio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3660
    return-object v4

    .line 3664
    :cond_0
    new-instance v0, Lcom/oneplus/camera/CameraThread$RecordingTimeRatioHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$RecordingTimeRatioHandle;-><init>(Lcom/oneplus/camera/CameraThread;F)V

    .line 3665
    .local v0, "handle":Lcom/oneplus/camera/CameraThread$RecordingTimeRatioHandle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_RecordingTimeRatioHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3666
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRecordingTimeRatio() - Ratio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3667
    return-object v0

    .line 3644
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized setResourceIdTable(Lcom/oneplus/camera/CameraThread$ResourceIdTable;)V
    .locals 2
    .param p1, "table"    # Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 3678
    :try_start_0
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_IS_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3679
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

    .line 3682
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

    .line 3675
    return-void

    :cond_1
    move-object v0, v1

    .line 3682
    goto :goto_0
.end method

.method final setScreenSize(Lcom/oneplus/base/ScreenSize;)V
    .locals 3
    .param p1, "size"    # Lcom/oneplus/base/ScreenSize;

    .prologue
    .line 3692
    if-nez p1, :cond_0

    .line 3693
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No screen size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3694
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3695
    sget-object v0, Lcom/oneplus/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3690
    :goto_0
    return-void

    .line 3698
    :cond_1
    monitor-enter p0

    .line 3700
    const/16 v0, 0x2710

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v0, v1, v2, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3701
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 3698
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

    .line 3716
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->verifyAccess()V

    .line 3717
    if-nez p1, :cond_0

    .line 3719
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setVideoCaptureHandler() - No capture handler"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3720
    return-object v4

    .line 3722
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

    .line 3729
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

    .line 3730
    return-object v4

    .line 3734
    :pswitch_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/VideoCaptureHandler;)V

    .line 3735
    .local v0, "handle":Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3736
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

    .line 3737
    return-object v0

    .line 3722
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

    .line 3744
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->start()V

    .line 3745
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread;->m_InitialMediaType:Lcom/oneplus/camera/media/MediaType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3742
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
    .line 3758
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

    .line 3776
    if-nez p1, :cond_0

    .line 3778
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - No camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3779
    return v7

    .line 3781
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3782
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/camera/CameraThread;->startCameraPreviewInternal(Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)Z

    move-result v0

    return v0

    .line 3783
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraThread$34;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/CameraThread$34;-><init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3792
    const/4 v0, 0x1

    return v0

    .line 3794
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCameraPreview() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3795
    return v7
.end method

.method public final stopCameraPreview(Lcom/oneplus/camera/Camera;)Z
    .locals 1
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 3936
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

    .line 3951
    if-nez p1, :cond_0

    .line 3953
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreview() - No camera"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3954
    return v6

    .line 3956
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3957
    invoke-direct {p0, p1, v3, p2}, Lcom/oneplus/camera/CameraThread;->stopCameraPreviewInternal(Lcom/oneplus/camera/Camera;[ZI)Z

    move-result v3

    return v3

    .line 3960
    :cond_1
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .line 3961
    .local v1, "isSync":Z
    :goto_0
    new-array v2, v7, [Z

    aput-boolean v6, v2, v6

    .line 3962
    .local v2, "result":[Z
    monitor-enter v2

    .line 3964
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

    .line 3966
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreview() - Fail to perform cross-thread operation"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 3967
    return v6

    .line 3960
    .end local v1    # "isSync":Z
    .end local v2    # "result":[Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isSync":Z
    goto :goto_0

    .line 3969
    .restart local v2    # "result":[Z
    :cond_4
    if-eqz v1, :cond_6

    .line 3973
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreview() - Wait for camera thread [start]"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3974
    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 3975
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreview() - Wait for camera thread [end]"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3976
    const/4 v3, 0x0

    aget-boolean v3, v2, v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    monitor-exit v2

    .line 3977
    return v7

    .line 3978
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreview() - Timeout"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 3979
    return v6

    .line 3982
    :catch_0
    move-exception v0

    .line 3983
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    iget-object v3, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopCameraPreview() - Interrupted"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 3984
    return v6

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_6
    monitor-exit v2

    .line 3987
    return v7

    .line 3962
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public stopCurrentPhotoCapture()V
    .locals 3

    .prologue
    .line 4088
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4090
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCurrentPhotoCapture() - Handle : "

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4091
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/oneplus/camera/CameraThread$PhotoCaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 4086
    :goto_0
    return-void

    .line 4095
    :cond_0
    new-instance v0, Lcom/oneplus/camera/CameraThread$36;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraThread$36;-><init>(Lcom/oneplus/camera/CameraThread;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
